from django.core.validators import RegexValidator
from django.db import models

# Create your models here.


class NamedModel(models.Model):

    name = models.CharField(max_length=100)
    slug = models.CharField(max_length=100)

    def __str__(self):
        return self.name


def upload_image(self, filename):
        return "%s/%s" % (type(self).__name__.lower(), self.name.replace(' ', '_'))


class ModelWithImage(NamedModel):
    image = models.ImageField(null=True, upload_to=upload_image)


class Category(ModelWithImage):
    description = models.TextField(null=True, blank=True, )
    sort_order = models.IntegerField(null=True, default=5000)
    homepage_position = models.IntegerField(null=True, blank=True)

    class Meta:
        verbose_name_plural = 'Categories'
        ordering = ['sort_order']


class Product(ModelWithImage):
    description = models.TextField(null=True, blank=True)
    category = models.ForeignKey(Category)


class CategoryProduct(models.Model):

    category = models.ForeignKey(Category)
    product = models.ForeignKey(Product)
    sort_order = models.IntegerField(default=5000)

    def __str__(self):
        return "{} - {}".format(self.category, self.product)

    class Meta:
        ordering = ['sort_order']


class Address(models.Model):

    street = models.CharField(max_length=100)
    zip = models.CharField(max_length=5)
    city = models.CharField(max_length=100)

    def __str__(self):
        return self.street


class Location(NamedModel):
    address = models.ForeignKey(Address)
    description = models.TextField(null=True)
    phone_number = models.CharField(null=True, blank=True,  max_length=13)
    sort_order = models.IntegerField(default=500)

    class Meta:
        ordering = ['sort_order']


class Job(NamedModel):
    description = models.TextField()
    sort_order = models.IntegerField(default=5000)
    is_active = models.BooleanField(default=True)


class GalleryItem(NamedModel):
    description = models.TextField(null=True, blank=True)
    preview = models.ImageField()
    image = models.ImageField()
    sort_order = models.IntegerField(default=5000)

    class Meta:
        ordering = ['sort_order']


class StaffMember(NamedModel):
    title = models.CharField(max_length=50)
    bio = models.TextField(blank=True)
    email = models.EmailField(null=True, blank=True)
    photo = models.ImageField(null=True, blank=True)
    sort_order = models.IntegerField(default=500)

    class Meta:
        ordering = ['sort_order']



