# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0012_auto_20150318_1222'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='category',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='category',
            name='thumbnail',
        ),
        migrations.RemoveField(
            model_name='product',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='product',
            name='thumbnail',
        ),
        migrations.RemoveField(
            model_name='project',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='project',
            name='thumbnail',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='thumbnail',
        ),
        migrations.RemoveField(
            model_name='staffmember',
            name='medium_image',
        ),
        migrations.RemoveField(
            model_name='staffmember',
            name='thumbnail',
        ),
    ]
