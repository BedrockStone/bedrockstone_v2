# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0006_auto_20150312_1502'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='project',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='medium_image',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_medium, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='category',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb, blank=True),
        ),
    ]
