import os

from django.db import models
from bedrockstone_v2.settings import MEDIA_URL, IMAGE_SIZES

from web.helpers import ImageHelper


def upload_image(self, filename):
    self.image_changed = True
    return "%s/%s%s" % (type(self).__name__.lower(), self.name.lower().replace(' ', '_'),
                        os.path.splitext(filename)[-1])


def upload_thumb(self, filename):
    return "%s/thumbs/%s.jpg" % (type(self).__name__.lower(), self.name.lower().replace(' ', '_'))


def upload_medium(self, filename):
    return "%s/medium/%s.jpg" % (type(self).__name__.lower(), self.name.lower().replace(' ', '_'))


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
    thumbnail = models.ImageField(null=True, blank=True, upload_to=upload_thumb, default='product/no_image.jpg')
    medium_image = models.ImageField(null=True, blank=True, upload_to=upload_medium, default='product/no_image.jpg')

    def save(self, *args, **kwargs):
        if self.pk is None or self.image.name != self.__class__._default_manager.get(id=self.id).image.name:
            thumb = ImageHelper(self.image)
            thumb.crop_image(IMAGE_SIZES['thumbnail'][0], IMAGE_SIZES['thumbnail'][1])
            self.thumbnail = thumb.get_file()
            self.image.file.seek(0)
            medium = ImageHelper(self.image)
            medium.crop_image(IMAGE_SIZES['medium_image'][0], IMAGE_SIZES['medium_image'][1])
            self.medium_image = medium.get_file()
        super(ModelWithPicture, self).save(*args, **kwargs)

    def image_tag(self):
        return "<img src=\"{0}{1}\" style='width:85px' />".format(MEDIA_URL, self.thumbnail)

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


class GalleryItem(ModelWithPicture):
    description = models.TextField(null=True, blank=True)
    preview = models.ImageField()


class StaffMember(ModelWithPicture):
    title = models.CharField(max_length=50)
    email = models.EmailField(null=True, blank=True)
    bio = models.TextField(blank=True, null=True)
    show_on_contact_us = models.BooleanField(default=True)


class ProjectType(ModelWithPicture):
    pass


class Project(ModelWithPicture):
    pass

