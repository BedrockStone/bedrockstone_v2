# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0019_auto_20150402_1348'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menuitem',
            name='parent',
            field=models.ForeignKey(blank=True, to='web.MenuItem', help_text=b'The item to make this a subitem of.', null=True),
            preserve_default=True,
        ),
    ]
