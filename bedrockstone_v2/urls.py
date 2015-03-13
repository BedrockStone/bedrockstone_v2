from django.conf.urls import patterns, include, url
from django.contrib import admin

from bedrockstone_v2 import settings
from web import views
from web.admin import admin_site

admin.autodiscover()


urlpatterns = patterns('', url(r'^$', views.index, name='index'),
                       url(r'^locations/(?P<name>.+)/$', views.location, name='locations'),
                       url(r'^admin/', include(admin_site.urls), name="bedrock"),
                       url(r'^products/$', views.Products.as_view(), name='products'),
                       url(r'^products/(.+)/$', views.CategoryDetail.as_view(), name='category'),
                       url(r'^about/$', views.aboutus, name='about'),
                       url(r'^contact/$', views.ContactUs.as_view(), name='contact'),
                       url(r'^jobs/$', views.Jobs.as_view(), name='jobs'),
                       url(r'^jobs/(.+)/$', views.JobDetail.as_view(), name='job'),
                       url(r'^services/$', views.services, name='services'),
                       #NOT FOR PROD
                       (r'^static/media/(?P<path>,*)$', 'django.views.static.serve',
                        {'document_root': settings.MEDIA_ROOT}),)



