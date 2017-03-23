# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0029_auto_20170308_2245'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='retail_price',
            field=models.DecimalField(default=None, null=True, max_digits=5, decimal_places=2, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='vender_id',
            field=models.CharField(default=None, max_length=15, null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='show_on_contact_us',
            field=models.BooleanField(default=False),
            preserve_default=True,
        ),
    ]
