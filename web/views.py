from collections import OrderedDict
from datetime import timedelta,datetime

from django.shortcuts import render, get_object_or_404, redirect
from web.models import Job, Location, Category, CategoryProduct, GalleryItem, StaffMember, Delivery, Driver

# Create your views here.
from django.template import RequestContext


def index(request):
    #return render(request, 'web/index_1.html')
    g = GalleryItem.objects.all()
    categories = Category.objects.exclude(homepage_position=None).order_by('homepage_position')[:5]
    return render(request, 'web/home.html', {'galleryItems': g, 'categories': categories})


def contact(request):
    locations = Location.objects.all().order_by('sort_order')
    return render(request, 'web/contact.html', {'locations': locations})


def aboutus(request):
    return render(request, 'web/aboutus.html')


def staff(request):
    s = StaffMember.objects.all().order_by('sort_order')
    return render(request, 'web/staff.html', {'staff': s})


def jobs(request):
    j = Job.objects.filter(is_active=True).order_by('sort_order')
    return render(request, 'web/jobs.html', {'jobs': j})


def virtual_showcase(request):
    return render(request, 'web/virtual_showcase.html')


def job_details(request, name):
    job = get_object_or_404(Job, slug=name)
    context = {'jobs': Job.objects.all(), 'job': job}
    #return render(request, context, "web/job_details.html")
    return render(request, 'web/job_details.html', context)


def location(request,name):
    l = get_object_or_404(Location, slug=name)
    context = {'location': l}
    return render(request, 'web/location.html', context)


def test(request):
    return render(request, 'web/index-4.html')


def products(request):
    categories = Category.objects.all().order_by('sort_order')
    context = {'categories': categories}
    return render(request, 'web/products.html', context)


def category(request, slug):
    cat = get_object_or_404(Category, slug=slug)
    category_products = CategoryProduct.objects.filter(category_id=cat.id).order_by('sort_order')
    context = {'category_products': category_products,'category': cat}
    return render(request, 'web/category.html', context)


def services(request):
    return render(request, 'web/services.html')


def gallery(request):
    #items = []#GalleryItem.objects().all().order_by('sort_order')
    #context = null#{'items': []}#items}
    #return render(request, context, 'web/gallery.html')
    return render(request, 'web/gallery.html')


def natural_stone(request):
    return render(request, 'web/natural_stone.html')


def admin_deliver(request, date=''):
    drivers = Driver.objects.all()

    current_date = datetime.strptime(date, "%Y%m%d").date() if date else datetime.today().date()
    last_date = current_date + timedelta(days=7)
    deliveries = list(Delivery\
            .objects.filter(target_ship_date__range=(current_date, last_date))\
            .order_by('target_ship_date', 'sort_order'))

    dates = OrderedDict([(current_date, [])])
    #hot mess
    #needs to pivot on sort_order,
    # should be rows of sort orders, columns of days
    for i in range(0, 6):
        dates[current_date] = []
        #why doesn't list association work here?
        #dates[current_date] = [x for x in deliveries if x.target_ship_date = current_date]
        for x in deliveries:
            if x.target_ship_date == current_date:
                dates[current_date].append(x)
        next_date = current_date + timedelta(days=1)
        if next_date.weekday() == 6:
            next_date = next_date + timedelta(days=1)
        current_date = next_date

    locations = Location.objects.all()
    context = {'dates': dates, 'drivers': drivers, 'locations': locations}
    return render(request, 'web/admin/deliveries.html', context)


def admin_add_delivery(request):
    delivery = Delivery.objects.create(
        address=request.POST['address'],
        pos_receipt_number=request.POST['pos_receipt'],
        target_ship_date=request.POST['target_ship_date']
    )
    last_sort_order = Delivery.objects\
        .filter(target_ship_date=delivery.target_ship_date)\
        .order_by('-sort_order')[:1].values('sort_order')[0]

    delivery.sort_order = last_sort_order['sort_order'] + 1
    delivery.save()
    return redirect('admin_deliver')


def admin_reorder_deliveries(request):
    target_ship_date = request.POST['target_ship_date']
    sort_order = 1
    for delivery_id in request.POST.getlist('delivery'):
        d = Delivery.objects.get(pk=delivery_id)
        d.target_ship_date = target_ship_date;
        d.sort_order = sort_order
        d.save()
        sort_order += 1

    return redirect('admin_deliver')


def admin_change_driver(request):
    delivery = Delivery.objects.get(pk=request.POST['delivery_id']);
    delivery.driver = Driver.objects.get(pk=request.POST['driver_id'])
    delivery.save()
    return redirect('admin_deliver')


def admin_deliveries_update(request):
    delivery = Delivery.objects.get(pk=request.POST['delivery_id'])

    for key in request.POST:
            setattr(delivery, key, request.POST[key])

    delivery.save()

    return redirect('admin_deliver')