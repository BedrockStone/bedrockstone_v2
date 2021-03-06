from django.contrib import admin
from django.contrib.admin import AdminSite
from django.contrib.auth.admin import UserAdmin, GroupAdmin
from django.contrib.auth.models import User, Group
from image_cropping import ImageCroppingMixin
from modeltranslation.admin import TranslationAdmin

from web.models import Category, Product, Location, Job, GalleryItem, StaffMember, Project, ProjectType, LocationPicture, \
    ContentPage, MenuItem, ProductImage, DeliveryCharge, Special


class MyAdmin(AdminSite):
    site_header = 'Bedrock Stone & Design Website Administration'
    site_title = 'Bedrock Stone & Design back office'
    index_title = 'Site Administration'

admin.autodiscover()
admin_site = MyAdmin(name='backoffice')

#generic
admin_site.register(Job)
#Auth
admin_site.register(User, UserAdmin)
admin_site.register(Group, GroupAdmin)


class StaffMemberAdmin(admin.ModelAdmin):
    fields = ['name', 'title', 'sort_order','email', 'show_on_contact_us']

admin_site.register(StaffMember, StaffMemberAdmin)


class ProductInline(ImageCroppingMixin, admin.StackedInline):
    model = Product
    exclude = ('description','long_description', 'short_description')
    fields = ['name', 'image', 'cropped', 'retail_price','sort_order']
    extra = 1


class CategoryAdmin(ImageCroppingMixin, TranslationAdmin):
    list_filter = ('parent__name' , )
    inlines = [ProductInline, ]
    list_display = ('name', 'image_tag')
    fields = ['name', 'slug', 'image', 'cropped', 'parent', 'short_description', 'long_description', 'sort_order', 'homepage_position']

admin_site.register(Category, CategoryAdmin)

class ProductImageInlineAdmin(ImageCroppingMixin, admin.StackedInline):
    model = ProductImage
    fields = ('image', 'cropped', 'name')
    extra = 1


class ProductAdmin(ImageCroppingMixin, TranslationAdmin):
    list_filter = ('category__name',)
    list_display = ('name', 'image_tag')
    readonly_fields = ('image_tag', )
    fields = ['name','slug', 'category', 'image', 'cropped','retail_price','sold_out', 'sort_order', 
    'short_description', 'long_description', 'more_images_text' ]
    inlines = [ProductImageInlineAdmin]

admin_site.register(Product, ProductAdmin)


class GalleryItemAdmin(ImageCroppingMixin, TranslationAdmin):
    list_display = ('sort_order', 'image_tag')
    pass

admin_site.register(GalleryItem, GalleryItemAdmin)


class LocationPhotoAdmin(ImageCroppingMixin, admin.ModelAdmin):
    fields = ('location', 'image', 'cropped')
    list_display = ('image_tag', )

admin_site.register(LocationPicture, LocationPhotoAdmin)


class LocationPhotoInlineAdmin(ImageCroppingMixin, admin.StackedInline):
    model = LocationPicture
    fields = ('image', 'cropped')
    extra = 1


class LocationAdmin(ImageCroppingMixin, TranslationAdmin):
    fieldsets = [
        (None,               {'fields': ['name', 'image', 'cropped', 'slug', 'phone_number', 'sort_order',
                                         'short_description', 'long_description','staff']}),
        ('Address', {'fields': ['street', 'city', 'zip']}),
    ]
    inlines = [LocationPhotoInlineAdmin]

admin_site.register(Location, LocationAdmin)




class ProjectInlineAdmin(ImageCroppingMixin, admin.StackedInline):
    model = Project
    extra = 1


class ProjectTypeAdmin(ImageCroppingMixin, TranslationAdmin):
    list_display = ('name', 'image_tag')
    inlines = [ProjectInlineAdmin, ]

admin_site.register(ProjectType, ProjectTypeAdmin)


class ContentPageAdmin(ImageCroppingMixin, TranslationAdmin):
    pass

admin_site.register(ContentPage, ContentPageAdmin)


class MenuItemAdmin(TranslationAdmin):
    exclude = ['long_description']

admin_site.register(MenuItem, MenuItemAdmin)

class DeliveryChargeAdmin(admin.ModelAdmin):
   fields = ('max_milage', 'dump_rate', 'flatbed_rate','lookup_id')
   list_display = ('lookup_id','max_milage', 'dump_rate','flatbed_rate')

admin_site.register(DeliveryCharge, DeliveryChargeAdmin)

class SpecialAdmin(admin.ModelAdmin):
    pass

admin_site.register(Special, SpecialAdmin)