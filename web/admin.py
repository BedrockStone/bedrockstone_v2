from django.contrib import admin
from web.models import Category, CategoryProduct, Product, Address, Location, Job, GalleryItem, StaffMember, Driver, \
    Delivery
# Register your models here.


admin.site.register(Category)
admin.site.register(CategoryProduct)
admin.site.register(Address)
admin.site.register(Location)
admin.site.register(Job)
admin.site.register(GalleryItem)
admin.site.register(StaffMember)
admin.site.register(Driver)
admin.site.register(Delivery)


class ProductAdmin(admin.ModelAdmin):
    list_filter = ('category__name',)

admin.site.register(Product, ProductAdmin)
