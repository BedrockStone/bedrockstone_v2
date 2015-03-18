# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0010_auto_20150317_1534'),
    ]

    operations = [
        migrations.AddField(
            model_name='galleryitem',
            name=b'preview',
            field=image_cropping.fields.ImageRatioField(b'image', '40x40', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='preview'),
            preserve_default=True,
        ),
    ]
