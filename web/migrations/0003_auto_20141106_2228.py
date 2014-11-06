# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20141105_1643'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.ForeignKey(default=1, to='web.Category'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='image',
            field=models.ImageField(upload_to=b''),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='preview',
            field=models.ImageField(upload_to=b''),
        ),
    ]
