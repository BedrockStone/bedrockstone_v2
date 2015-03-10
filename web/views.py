from django.shortcuts import render, get_object_or_404, redirect
from django.views.generic import ListView, DetailView
from web.models import Job, Location, Category, GalleryItem, StaffMember, Product


def index(request):
    g = GalleryItem.objects.all()
    categories = Category.objects.exclude(homepage_position=None).order_by('homepage_position')[:5]
    return render(request, 'web/home.html', {'galleryItems': g, 'categories': categories})


class ContactUs(ListView):
    queryset = Location.objects.all()


def aboutus(request):
    return render(request, 'web/aboutus.html')


class Jobs(ListView):
    queryset = Job.objects.filter(is_active=True)


class JobDetail(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(Job, slug=self.args[0])


def virtual_showcase(request):
    return render(request, 'web/virtual_showcase.html')


def location(request,name):
    l = get_object_or_404(Location, slug=name)
    context = {'location': l}
    return render(request, 'web/location.html', context)


class Products(ListView):
    queryset = Category.objects.all()


class CategoryDetail(DetailView):
    def get_object(self, queryset=None):
        return get_object_or_404(Category, slug=self.args[0])


def services(request):
    return render(request, 'web/services.html')


def gallery(request):
    return render(request, 'web/gallery.html')


def natural_stone(request):
    return render(request, 'web/natural_stone.html')

