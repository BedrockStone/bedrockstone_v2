from django.conf.urls import patterns, include, url
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.views.generic import RedirectView

from bedrockstone_v2 import settings
from web import views
from web.admin import admin_site

admin.autodiscover()


urlpatterns = i18n_patterns('', url(r'^$', views.index, name='index'),
                       url(r'^locations/(?P<name>.+)/$', views.location, name='locations'),
                       url(r'^admin/', include(admin_site.urls), name="bedrock"),
                       url(r'^products/$', views.Products.as_view(), name='products'),
                       url(r'^products/(.+)/$', views.CategoryDetail.as_view(), name='category'),
                       url(r'^patio\.html', RedirectView.as_view(url='/products/patio/', permanent=True)),
                       url(r'^about/$', views.aboutus, name='about'),
                       url(r'^contact/$', views.ContactUs.as_view(), name='contact'),
                       url(r'^jobs/$', views.Jobs.as_view(), name='jobs'),
                       url(r'^jobs/(.+)/$', views.JobDetail.as_view(), name='job'),
                       url(r'^showcase/$', views.VirtualShowcase.as_view(), name='showcase'),
                       url(r'^showcase/(.+)/$', views.Project.as_view(), name='project_type'),
                       url(r'^(.+)/', views.Content.as_view(), name='content'),

                       #legacy url redirects
                       url(r'^staff.php', RedirectView.as_view(url='/contact/', permanent=True)),
                       url(r'^aboutus.php', RedirectView.as_view(url='/about/', permanent=True)),
                       url(r'^contact.php', RedirectView.as_view(url='/contact/', permanent=True)),
                       url(r'^landscape.html', RedirectView.as_view(url='/landscaping_supplies/', permanent=True)),
                       url(r'^pools.html', RedirectView.as_view(url='/showcase/pools/', permanent=True)),
                       url(r'^temp_delivery.html', RedirectView.as_view(url='/customer_service/', permanent=True)),
                       url(r'^chopped.html', RedirectView.as_view(url='/products/chopped_block/', permanent=True)),
                       url(r'^pavers.html', RedirectView.as_view(url='/products/pavers/', permanent=True)),
                       url(r'^riverrock.html', RedirectView.as_view(url='/products/aggregates/', permanent=True)),
                       url(r'^bouldersriverrock', RedirectView.as_view(url='/products/boulders/', permanent=True)),
                       url(r'^bouldersriverrock', RedirectView.as_view(url='/products/boulders/', permanent=True)),
                       url(r'^helloworld/$', views.hello_world, name='hello_world'),
                       #NOT FOR PROD
                       url(r'^static/media/(?P<path>,*)$', 'django.views.static.serve',
                        {'document_root': settings.MEDIA_ROOT}),)


urlpatterns += url(r'^setlang/', 'django.views.i18n.set_language'),

