# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20150310_1710'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='galleryitem',
            options={},
        ),
        migrations.AlterField(
            model_name='category',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
        ),
        migrations.AlterField(
            model_name='project',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
        ),
    ]
