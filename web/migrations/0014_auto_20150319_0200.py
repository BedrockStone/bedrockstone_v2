# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0013_auto_20150318_1839'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='type',
            field=models.ForeignKey(default=1, to='web.ProjectType'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='description',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
