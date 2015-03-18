# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0009_remove_galleryitem_preview'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='galleryitem',
            name='Image',
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='image',
            field=models.ImageField(default=1, upload_to=b'gallery/'),
            preserve_default=False,
        ),
    ]
