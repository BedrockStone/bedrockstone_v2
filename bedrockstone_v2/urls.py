from django.conf.urls import include, url
from django.conf.urls.i18n import i18n_patterns
from django.contrib import admin
from django.views.generic import RedirectView
from django.views import i18n
from bedrockstone_v2 import settings
from web import views
from web.admin import admin_site

admin.autodiscover()


urlpatterns = i18n_patterns(url(r'^$', views.index, name='index'),
                       url(r'^locations/(?P<name>.+)/$', views.location, name='locations'),
                       url(r'^admin/', include(admin_site.urls), name="bedrock"),
                       url(r'^products/$', views.Products.as_view(), name='products'),
                       url(r'^products/(.+)/$', views.CategoryDetail.as_view(), name='category'),
                       url(r'^product/(.+)$', views.ProductDetail.as_view(), name="productDetail"),
                       url(r'^about/$', views.aboutus, name='about'),
                       url(r'^contact/$', views.ContactUs.as_view(), name='contact'),
                       url(r'^jobs/$', views.Jobs.as_view(), name='jobs'),
                       url(r'^jobs/(.+)/$', views.JobDetail.as_view(), name='job'),
                       url(r'^showcase/$', views.VirtualShowcase.as_view(), name='showcase'),
                       url(r'^showcase/(.+)/$', views.Project.as_view(), name='project_type'),
                       url(r'^resources/coverage/$', views.coverage, name='coverage'),
                       url(r'^(.+)/', views.Content.as_view(), name='content'),
                       )


urlpatterns += url(r'^setlang/', include('django.conf.urls.i18n')),

