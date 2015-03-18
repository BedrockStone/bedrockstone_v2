# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0004_auto_20150311_1510'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='staffmember',
            options={},
        ),
        migrations.RemoveField(
            model_name='staffmember',
            name='photo',
        ),
        migrations.AddField(
            model_name='staffmember',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='show_on_contact_us',
            field=models.BooleanField(default=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='bio',
            field=models.TextField(null=True, blank=True),
        ),
    ]
