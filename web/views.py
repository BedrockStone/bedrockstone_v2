from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404, redirect
from django.views.generic import ListView, DetailView
from web.models import Job, Location, Category, GalleryItem, StaffMember, Product, ProjectType, ContentPage, DeliveryCharge, Special
from django.utils.translation import ugettext as _
from datetime import datetime, timedelta, time

def index(request):
    g = GalleryItem.objects.all()
    #categories = Category.objects.exclude(homepage_position=None).order_by('homepage_position')[:5]
    content_pages = ContentPage.objects.exclude(homepage_position=None)
    locations = Location.objects.all()
    return render(request, 'web/home.html',
                  {'galleryItems': g,
                   'content_items': content_pages,
                   'locations': locations})


class ContactUs(ListView):
    queryset = Location.objects.all()

    def get_context_data(self, **kwargs):
        context = super(ListView, self).get_context_data(**kwargs)
        context['staff'] = StaffMember.objects.filter(show_on_contact_us=True)
        return context

def shipping(request):
    locations = Location.objects.all()
    rates = DeliveryCharge.objects.all()
    return render(request, 'web/shipping.html',{'locations':locations,'rates':rates})


def aboutus(request):
    return render(request, 'web/aboutus.html')


class Jobs(ListView):
    queryset = Job.objects.filter(is_active=True)


class JobDetail(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(Job, slug=self.args[0])


class Content(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(ContentPage,slug=self.args[0])


class VirtualShowcase(ListView):
    queryset = ProjectType.objects.order_by('sort_order')


class Project(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(ProjectType, slug=self.args[0])


class StaffList(ListView):
    queryset = StaffMember.objects.filter(show_on_contact_us=True)


def location(request,name):
    l = get_object_or_404(Location, slug=name)
    context = {'location': l}
    return render(request, 'web/location.html', context)


class Products(ListView):
    queryset = Category.objects.filter(parent=None).order_by('sort_order').all()


class ProductDetail(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(Product, slug=self.args[0])

class CategoryDetail(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(Category, slug=self.args[0])


def hello_world(request):
    return HttpResponse(_("Hello World"))

def coverage(request):
    return render(request, 'web/coverage.html')

def specials(request):
    specials = Special.objects.filter(start_date__lte = datetime.now(), end_date__gte = datetime.now())

    return render(request, 'web/specials.html', {'specials':specials})