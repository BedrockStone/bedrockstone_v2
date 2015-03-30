# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0017_auto_20150326_1848'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='contentpage',
            name='url',
        ),
        migrations.AlterField(
            model_name='contentpage',
            name='homepage_position',
            field=models.IntegerField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
