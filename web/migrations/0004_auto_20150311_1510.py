# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0003_auto_20150311_1247'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='location',
            name='address',
        ),
        migrations.DeleteModel(
            name='Address',
        ),
        migrations.AddField(
            model_name='location',
            name='city',
            field=models.CharField(default='Austin', max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='location',
            name='street',
            field=models.CharField(default=0, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='location',
            name='zip',
            field=models.CharField(default=78734, max_length=5),
            preserve_default=False,
        ),
    ]
