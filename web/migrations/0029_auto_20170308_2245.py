# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0028_auto_20170308_2232'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='staffmember',
            name=b'cropped',
        ),
        migrations.RemoveField(
            model_name='staffmember',
            name='image',
        ),
    ]
