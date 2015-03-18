# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0007_auto_20150312_2027'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='galleryitem',
            options={'ordering': ['sort_order']},
        ),
        migrations.AlterModelOptions(
            name='product',
            options={'ordering': ['sort_order']},
        ),
        migrations.AlterModelOptions(
            name='project',
            options={'ordering': ['sort_order']},
        ),
        migrations.AlterModelOptions(
            name='projecttype',
            options={'ordering': ['sort_order']},
        ),
        migrations.AlterModelOptions(
            name='staffmember',
            options={'ordering': ['sort_order']},
        ),
        migrations.RemoveField(
            model_name='galleryitem',
            name='description',
        ),
        migrations.RemoveField(
            model_name='galleryitem',
            name='image',
        ),
        migrations.RemoveField(
            model_name='galleryitem',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='galleryitem',
            name='thumbnail',
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='Image',
            field=models.ImageField(default=1, upload_to=web.models.upload_image),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='galleryitem',
            name=b'large',
            field=image_cropping.fields.ImageRatioField(b'image', '965x767', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='large'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='category',
            name='homepage_position',
            field=models.IntegerField(help_text=b'The order this shows on the home page. If no value is specifiedthe item will not show on the home page.', null=True, blank=True),
        ),
        migrations.AlterField(
            model_name='category',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
        ),
        migrations.AlterField(
            model_name='category',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='category',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='category',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='category',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='category',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name=b'preview',
            field=image_cropping.fields.ImageRatioField(b'image', '40x40', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='preview'),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='job',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='job',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='job',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='location',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='location',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='location',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
        ),
        migrations.AlterField(
            model_name='product',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='product',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='product',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='product',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
        ),
        migrations.AlterField(
            model_name='project',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='project',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='project',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='project',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='name',
            field=models.CharField(help_text=b'The name for this item', max_length=100),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='slug',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='sort_order',
            field=models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages'),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image.jpg', null=True,blank=True),
        ),
    ]
