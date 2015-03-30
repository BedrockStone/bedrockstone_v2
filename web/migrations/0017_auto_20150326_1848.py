# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import __builtin__
import web.models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0016_auto_20150325_1355'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContentPage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(help_text=b'The name for this item', max_length=100)),
                ('long_description', models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True)),
                ('short_description', models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True)),
                ('slug', models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100)),
                ('sort_order', models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages')),
                ('image', models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item')),
                (b'cropped', image_cropping.fields.ImageRatioField(b'image', '400x300', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropped')),
                ('url', models.CharField(unique=True, max_length=5)),
                ('active', models.BooleanField(default=True)),
                ('homepage_position', models.IntegerField(verbose_name=__builtin__.max)),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
            bases=(models.Model, web.models.ImageTagModel),
        ),
        migrations.RemoveField(
            model_name='category',
            name='description',
        ),
        migrations.RemoveField(
            model_name='job',
            name='description',
        ),
        migrations.RemoveField(
            model_name='product',
            name='description',
        ),
        migrations.AlterField(
            model_name='location',
            name='description',
            field=models.TextField(null=True),
        ),
    ]
