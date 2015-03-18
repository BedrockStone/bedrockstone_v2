# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0008_auto_20150317_1250'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='galleryitem',
            name='preview',
        ),
    ]
