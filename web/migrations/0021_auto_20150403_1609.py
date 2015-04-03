# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0020_auto_20150402_1420'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='staffmember',
            name='bio',
        ),
        migrations.RemoveField(
            model_name='staffmember',
            name='title',
        ),
    ]
