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
    url(r'^jobs/(?P<name>.+)/$', views.job_details, name="job"),
    url(r'^services/$', views.services, name='services'),
    url(r'^gallery/$', views.gallery, name='gallery'),
    url(r'^natural_stone/$', views.natural_stone, name='natural_stone'),
    url(r'^staff/$', views.staff, name='staff'),
    #url(r'^p/*/$', views.category, name='category'),

    url(r'^admin/deliveries/$', views.admin_deliver, name='admin_deliver'),
    url(r'^admin/deliveries/add/$', views.admin_add_delivery, name='admin_add_delivery'),
    url(r'^admin/deliveries/reorder/$', views.admin_reorder_deliveries, name='admin_reorder_delivery'),
    url(r'^admin/deliveries/change_driver/$', views.admin_change_driver, name='admin_change_driver'),
    url(r'^admin/deliveries/update$', views.admin_deliveries_update, name='admin_deliveries_update'),
    #NOT FOR PROD!
    (r'^static/media/(?P<path>,*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),
)

