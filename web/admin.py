from django.contrib import admin
from django.contrib.admin import AdminSite
from web.models import Category, Product, Address, Location, Job, GalleryItem, StaffMember


class MyAdmin(AdminSite):
    site_header = 'Bedrock'
    site_title = 'Bedrock'


admin_site = MyAdmin(name='admin')

admin.site.register(Address)
admin.site.register(Job)
admin.site.register(StaffMember)


class ProductInline(admin.StackedInline):
    model = Product
    exclude = ('description', )
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order']
    extra = 1


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    inlines = [ProductInline, ]
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag',), 'description', 'sort_order', 'homepage_position']


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_filter = ('category__name',)
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order', ]


@admin.register(GalleryItem)
class GalleryItemAdmin(admin.ModelAdmin):
    model = GalleryItem
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order', ]

