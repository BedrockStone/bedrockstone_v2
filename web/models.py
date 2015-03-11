import os
from django.db import models
from bedrockstone_v2.local_settings import STATIC_URL
from bedrockstone_v2.settings import MEDIA_URL


def upload_image(self, filename):
        return "%s/%s%s" % (type(self).__name__.lower(),
                            self.name.replace(' ', '_'),
                            os.path.splitext(filename)[-1])


class SortableNamedModel(models.Model):
    name = models.CharField(max_length=100)
    slug = models.CharField(max_length=100)
    sort_order = models.IntegerField(default=500)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['sort_order']
        abstract = True


class ModelWithPicture(SortableNamedModel):
    image = models.ImageField(null=True, upload_to=upload_image,
                              default='product/no_image.jpeg')

    def image_tag(self):
        return "<img src='{0}{1}' style='width:85px' />".format(STATIC_URL, self.image)

    image_tag.short_description = ''
    image_tag.allow_tags = True

    class Meta:
        abstract = True


class Category(ModelWithPicture):
    description = models.TextField(null=True, blank=True, )
    homepage_position = models.IntegerField(null=True, blank=True)

    class Meta:
        verbose_name_plural = 'Categories'


class Product(ModelWithPicture):
    description = models.TextField(null=True, blank=True)
    category = models.ForeignKey(Category)


class Address(models.Model):

    street = models.CharField(max_length=100)
    zip = models.CharField(max_length=5)
    city = models.CharField(max_length=100)

    def __str__(self):
        return self.street


class Location(SortableNamedModel):
    address = models.ForeignKey(Address)
    description = models.TextField(null=True)
    phone_number = models.CharField(null=True, blank=True,  max_length=13)


class Job(SortableNamedModel):
    description = models.TextField()
    is_active = models.BooleanField(default=True)


class GalleryItem(ModelWithPicture):
    description = models.TextField(null=True, blank=True)
    preview = models.ImageField()


class StaffMember(SortableNamedModel):
    title = models.CharField(max_length=50)
    bio = models.TextField(blank=True)
    email = models.EmailField(null=True, blank=True)
    photo = models.ImageField(null=True, blank=True)


class ProjectType(ModelWithPicture):
    pass


class Project(ModelWithPicture):
    pass

