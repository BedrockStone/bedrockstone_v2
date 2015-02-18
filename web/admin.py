from django.contrib import admin
from web.models import Category, Product, Address, Location, Job, GalleryItem, StaffMember


admin.site.register(Category)
admin.site.register(Address)
admin.site.register(Location)
admin.site.register(Job)
admin.site.register(GalleryItem)
admin.site.register(StaffMember)


class ProductAdmin(admin.ModelAdmin):
    list_filter = ('category__name',)

admin.site.register(Product, ProductAdmin)
