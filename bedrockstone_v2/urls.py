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
    url(r'^admin/', include(admin.site.urls)),
    url(r'^products/$', views.Products.as_view(), name='products'),
    url(r'^products/(.+)/$', views.CategoryDetail.as_view(), name='category'),
    url(r'^about/$', views.aboutus, name='about'),
    url(r'^contact/$', views.ContactUs.as_view(), name='contact'),
    url(r'^jobs/$', views.Jobs.as_view(), name='jobs'),
    #url(r'^jobs/(?P<name>.+)/$', views.JobDetail.as_view(), name="job"),
    url(r'^jobs/(.+)/$', views.JobDetail.as_view(), name='job'),
    url(r'^services/$', views.services, name='services'),
    url(r'^gallery/$', views.gallery, name='gallery'),
    url(r'^natural_stone/$', views.natural_stone, name='natural_stone'),
    #NOT FOR PROD!
    (r'^static/media/(?P<path>,*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
)

