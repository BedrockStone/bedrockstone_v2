from django.conf.urls import patterns, include, url

from django.contrib import admin
from django.views.generic import ListView
from bedrockstone_v2 import settings
from web import views

admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'bedrockstone_v2.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$', views.index, name='index'),
    url(r'^locations/(?P<name>.+)/$', views.location, name='locations'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^test/', views.test, name='test'),
    url(r'^products/$', views.products, name='products'),
    url(r'^products/(.+)/$', views.category, name='category'),
    url(r'^about/$', views.aboutus, name='about'),
    url(r'^contact/$', views.contact, name='contact'),
    url(r'^jobs/$', views.jobs, name='jobs'),
    url(r'^services/$', views.services, name='services'),
    url(r'^gallery/$', views.gallery, name='gallery'),
    url(r'^natural_stone/$', views.natural_stone, name='natural_stone'),
    url(r'^staff/$', views.staff, name='staff'),
    #url(r'^p/*/$', views.category, name='category'),


    #NOT FOR PROD!
    (r'^static/media/(?P<path>,*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
)

