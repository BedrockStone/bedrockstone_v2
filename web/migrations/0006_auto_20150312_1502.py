# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0005_auto_20150311_1743'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='project',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='thumbnail',
            field=models.ImageField(default=b'product/no_image', null=True, upload_to=web.models.upload_thumb),
            preserve_default=True,
        ),
    ]
