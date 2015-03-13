from django.contrib import admin
from django.contrib.admin import AdminSite
from django.contrib.auth.models import User, Group
from web.models import Category, Product, Location, Job, GalleryItem, StaffMember


class MyAdmin(AdminSite):
    site_header = 'Bedrock Stone & Design Website Administration'
    site_title = 'Bedrock Stone & Design back office'
    index_title = 'Site Administration'


admin_site = MyAdmin(name='backoffice')
#django auth models
admin_site.register(User)
admin_site.register(Group)

#generic
admin_site.register(Job)
#admin_site.register(StaffMember)


class StaffMemberAdmin(admin.ModelAdmin):
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order']

admin_site.register(StaffMember, StaffMemberAdmin)


class ProductInline(admin.StackedInline):
    model = Product
    exclude = ('description', )
    readonly_fields = ('image_tag', )
    fields = ['name', ('image', 'image_tag'), 'sort_order']
    extra = 1


class CategoryAdmin(admin.ModelAdmin):
    inlines = [ProductInline, ]
    readonly_fields = ('image_tag', )
    fields = ['name', 'slug', ('image', 'image_tag',), 'description', 'sort_order', 'homepage_position']

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


class LocationAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['name', 'slug', 'phone_number', 'sort_order']}),
        ('Address', {'fields': ['street', 'city', 'zip'], 'classes': ['collapse']}),
    ]

admin_site.register(Location,LocationAdmin)