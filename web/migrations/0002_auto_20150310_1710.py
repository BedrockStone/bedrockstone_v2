# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='product',
            options={},
        ),
        migrations.AddField(
            model_name='category',
            name='image',
            field=models.ImageField(null=True, upload_to=web.models.upload_image),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='image',
            field=models.ImageField(null=True, upload_to=web.models.upload_image),
            preserve_default=True,
        ),
    ]
