# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0022_staffmember_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='projecttype',
            name='description_en',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='description_es',
            field=models.TextField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='long_description_en',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='long_description_es',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='name_en',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='name_es',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='short_description_en',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='short_description_es',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='slug_en',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='slug_es',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
    ]
