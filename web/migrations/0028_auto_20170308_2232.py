# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0027_auto_20170225_2135'),
    ]

    operations = [
        migrations.AddField(
            model_name='location',
            name='staff',
            field=models.ManyToManyField(to='web.StaffMember'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='category',
            name='parent',
            field=models.ForeignKey(related_name='children', blank=True, to='web.Category', help_text=b'Parent category', null=True),
            preserve_default=True,
        ),
    ]
