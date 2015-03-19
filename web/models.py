import os

from django.db import models
from easy_thumbnails.files import get_thumbnailer
from image_cropping import ImageRatioField


def upload_image(self, filename):
    self.image_changed = True
    return "%s/%s%s" % (type(self).__name__.lower(), self.name.lower().replace(' ', '_'),
                        os.path.splitext(filename)[-1])


class SortableNamedModel(models.Model):
    name = models.CharField(max_length=100, help_text='The name for this item')
    slug = models.CharField(max_length=100,
                            help_text='This field is used for links, it should usually be the name with spaces replaced'
                                      ' by an underscore')
    sort_order = models.IntegerField(default=500, help_text='The order in which this item will show on list pages')

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['sort_order']
        abstract = True


class ModelWithPicture(SortableNamedModel):
    image = models.ImageField(null=True, upload_to=upload_image, default='product/no_image.jpeg',
                              help_text='The image to show for this item')
    cropped = ImageRatioField('image', '400x300')

    def image_tag(self):
        return "<img src='{0}' style='width:40px' />".format(
            get_thumbnailer(self.image).get_thumbnail({
                'size': (430, 360),
                'box': self.cropped, 'crop': True,
                'detail': True, }).url
        )

    image_tag.short_description = ''
    image_tag.allow_tags = True

    class Meta:
        abstract = True
        ordering = ['sort_order']


class Category(ModelWithPicture):
    description = models.TextField(null=True, blank=True, )
    homepage_position = models.IntegerField(null=True, blank=True,
                                            help_text="The order this shows on the home page. If no value is specified"
                                                      "the item will not show on the home page.")

    class Meta:
        verbose_name_plural = 'Categories'


class Product(ModelWithPicture):
    description = models.TextField(null=True, blank=True)
    category = models.ForeignKey(Category)


class Address(models.Model):
    street = models.CharField(max_length=100)
    zip = models.CharField(max_length=5)
    city = models.CharField(max_length=100)

    class Meta:
        abstract = True


class Location(SortableNamedModel, Address):
    description = models.TextField(null=True)
    phone_number = models.CharField(null=True, blank=True, max_length=13)

    def address(self):
        return self.street


class Job(SortableNamedModel):
    description = models.TextField()
    is_active = models.BooleanField(default=True)


class GalleryItem(SortableNamedModel):
    image = models.ImageField(upload_to="gallery/")
    large = ImageRatioField('image', '1440x675')
    preview = ImageRatioField('image', '40x40')

    def image_tag(self):
        return "<img src='{0}' style='width:40px' />".format(
            get_thumbnailer(self.image).get_thumbnail({
                'size': (430, 360),
                'box': self.large, 'crop': True,
                'detail': True, }).url
        )

    image_tag.short_description = ''
    image_tag.allow_tags = True


class StaffMember(ModelWithPicture):
    title = models.CharField(max_length=50)
    email = models.EmailField(null=True, blank=True)
    bio = models.TextField(blank=True, null=True)
    show_on_contact_us = models.BooleanField(default=True)


class ProjectType(ModelWithPicture):
    description = models.TextField(blank=True, null=True)


class Project(ModelWithPicture):
    type = models.ForeignKey(ProjectType)

