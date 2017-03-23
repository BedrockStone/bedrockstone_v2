# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0030_auto_20170323_1410'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='retail_price',
            field=models.DecimalField(decimal_places=2, default=None, max_digits=15, blank=True, help_text=b'Price to show on website.', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='product',
            name='vender_id',
            field=models.CharField(default=None, max_length=15, null=True, help_text=b'Quickbooks product id', blank=True),
            preserve_default=True,
        ),
    ]
