# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='galleryitem',
            options={'ordering': ['sort_order']},
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='sort_order',
            field=models.IntegerField(default=5000),
            preserve_default=True,
        ),
    ]
