from django.contrib import admin
from django.contrib.admin import AdminSite
from web.models import Category, Product, Address, Location, Job, GalleryItem, StaffMember


class MyAdmin(AdminSite):
    site_header = 'Bedrock Stone & Design'
    site_title = 'Bedrock Stone & Design back office'
    index_title = 'Site Administration'


admin_site = MyAdmin(name='backoffice')
admin_site.register(Address)
admin_site.register(Job)
admin_site.register(StaffMember)


class ProductInline(admin.StackedInline):
    model = Product
    exclude = ('description', )
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order']
    extra = 1



class CategoryAdmin(admin.ModelAdmin):
    inlines = [ProductInline, ]
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag',), 'description', 'sort_order', 'homepage_position']

admin_site.register(Category,CategoryAdmin)


class ProductAdmin(admin.ModelAdmin):
    list_filter = ('category__name',)
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order', ]

admin_site.register(Product, ProductAdmin)


class GalleryItemAdmin(admin.ModelAdmin):
    model = GalleryItem
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order', ]

admin_site.register(GalleryItem, GalleryItemAdmin)
