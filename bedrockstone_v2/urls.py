from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.views.generic import RedirectView

from bedrockstone_v2 import settings
from web import views
from web.admin import admin_site

admin.autodiscover()


urlpatterns = patterns('', url(r'^$', views.index, name='index'),
                       url(r'^locations/(?P<name>.+)/$', views.location, name='locations'),
                       url(r'^admin/', include(admin_site.urls), name="bedrock"),
                       url(r'^products/$', views.Products.as_view(), name='products'),
                       url(r'^products/(.+)/$', views.CategoryDetail.as_view(), name='category'),
                       url(r'^patio\.html', RedirectView.as_view(url='/products/patio', permanent=True)),
                       url(r'^about/$', views.aboutus, name='about'),
                       url(r'^contact/$', views.ContactUs.as_view(), name='contact'),
                       url(r'^jobs/$', views.Jobs.as_view(), name='jobs'),
                       url(r'^jobs/(.+)/$', views.JobDetail.as_view(), name='job'),
                       url(r'^showcase/$', views.VirtualShowcase.as_view(), name='showcase'),
                       url(r'^showcase/(.+)/$', views.Project.as_view(), name='project_type'),
                       url(r'^(.+)/', views.Content.as_view(), name='content'),
                       #NOT FOR PROD
                       url(r'^static/media/(?P<path>,*)$', 'django.views.static.serve',
                        {'document_root': settings.MEDIA_ROOT}),)



