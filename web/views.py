from django.shortcuts import render, get_object_or_404
from web.models import Job, Location, Category, CategoryProduct, GalleryItem, StaffMember

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
    return render(request, 'web/jobs.html')


def virtual_showcase(request):
    return render(request, 'web/virtual_showcase.html')


def job_details(request, job_name):
    job = get_object_or_404(Job, url=job_name)
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

