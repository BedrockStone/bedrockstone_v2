# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0011_galleryitem_preview'),
    ]

    operations = [
        migrations.AlterField(
            model_name='galleryitem',
            name=b'large',
            field=image_cropping.fields.ImageRatioField(b'image', '1440x675', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='large'),
            preserve_default=True,
        ),
    ]
