import os

from django.db import models
from easy_thumbnails.files import get_thumbnailer
from image_cropping import ImageRatioField
import time


def upload_image(self, filename):
    result = "%s/%s_%s%s" % (type(self).__name__.lower(),
                             self.name.lower().replace(' ', '_'),
                             time.time(),
                             os.path.splitext(filename)[-1])

    return result


class SortableNamedModel(models.Model):
    name = models.CharField(max_length=100, help_text='The name for this item')
    long_description = models.TextField(null=True, blank=True,
                                        help_text='Description text used when this item is displayed on a full page')
    short_description = models.TextField(null=True, blank=True,
                                         help_text='Description text used when this item is shown in a list. '
                                                   'It will also be shown in bold format in front of the '
                                                   'long description on full page displays')
    slug = models.CharField(max_length=100,
                            help_text='This field is used for links, it should usually be the name with spaces replaced'
                                      ' by an underscore')
    sort_order = models.IntegerField(default=500, help_text='The order in which this item will show on list pages')

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['sort_order']
        abstract = True


class ImageTagModel(object):

    def image_tag(self):
        return "<img src='{0}' style='width:40px' />".format(
            get_thumbnailer(self.image).get_thumbnail({
                'size': (430, 360),
                'box': self.cropped, 'crop': True,
                'detail': True, }).url
        )
    image_tag.short_description = ''
    image_tag.allow_tags = True


class ModelWithPicture(SortableNamedModel, ImageTagModel):
    image = models.ImageField(null=True, upload_to=upload_image, default='product/no_image.jpeg',
                              help_text='The image to show for this item')
    cropped = ImageRatioField('image', '400x300')

    class Meta:
        abstract = True
        ordering = ['sort_order']


class Category(ModelWithPicture):
    homepage_position = models.IntegerField(null=True, blank=True,
                                            help_text="The order this shows on the home page. If no value is specified"
                                                      "the item will not show on the home page.")
    parent = models.ForeignKey("self", null = True, blank=True, help_text="Parent category", related_name="children")                                                      

    class Meta:
        verbose_name_plural = 'Categories'


class Product(ModelWithPicture):
    category = models.ForeignKey(Category)
    vender_id = models.CharField(null = True, blank = True, max_length = 15, default = None, help_text = 'Quickbooks product id')
    retail_price = models.DecimalField(null = True, blank = True, decimal_places=2, max_digits = 5,
     default = None, help_text='Price to show on website.')

class StaffMember(SortableNamedModel):
    email = models.EmailField(null=True, blank=True)
    show_on_contact_us = models.BooleanField(default=False)
    title = models.CharField(null=True, blank=True, max_length=100)


class Address(models.Model):
    street = models.CharField(max_length=100)
    zip = models.CharField(max_length=5)
    city = models.CharField(max_length=100)

    class Meta:
        abstract = True


class Location(ModelWithPicture, Address):
    description = models.TextField(null=True)
    phone_number = models.CharField(null=True, blank=True, max_length=13)
    staff = models.ManyToManyField(StaffMember)
    def address(self):
        return self.street


class LocationPicture(models.Model, ImageTagModel):
    image = models.ImageField(upload_to=upload_image)
    cropped = ImageRatioField('image', '400x300')
    location = models.ForeignKey(Location)

    @property
    def name(self):
        return self.location.name


class Job(SortableNamedModel):
    is_active = models.BooleanField(default=True)


class GalleryItem(SortableNamedModel, ImageTagModel):
    image = models.ImageField(upload_to="gallery/")
    large = ImageRatioField('image', '1440x675')
    preview = ImageRatioField('image', '40x40')

    @property
    def cropped(self):
        return self.preview


class ProjectType(ModelWithPicture):
    description = models.TextField(blank=True, null=True)


class Project(ModelWithPicture):
    type = models.ForeignKey(ProjectType)


class ContentPage(ModelWithPicture):
    homepage_position = models.IntegerField(null=True, blank=True,
                                            help_text="The position (1-3) to be shown on the home page "
                                                      "(under the gallery item display).  If left blank, the page can "
                                                      "still be navigated to, but will not have a section on the "
                                                      "home page.")


class MenuItem(SortableNamedModel):
    parent = models.ForeignKey("MenuItem", null=True, blank=True, help_text="The item to make this a subitem of.")