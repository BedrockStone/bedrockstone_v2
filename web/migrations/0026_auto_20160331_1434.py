# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0025_auto_20160331_1433'),
    ]

    operations = [
        migrations.AddField(
            model_name='projecttype',
            name='description_en',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='description_es',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
