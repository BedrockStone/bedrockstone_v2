# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0023_auto_20160331_1408'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='projecttype',
            name='long_description_en',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='long_description_es',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='name_en',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='name_es',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='short_description_en',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='short_description_es',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='slug_en',
        ),
        migrations.RemoveField(
            model_name='projecttype',
            name='slug_es',
        ),
        migrations.AddField(
            model_name='category',
            name='long_description_en',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='long_description_es',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='name_en',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='name_es',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='short_description_en',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='short_description_es',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='slug_en',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='slug_es',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='long_description_en',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='long_description_es',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='name_en',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='name_es',
            field=models.CharField(help_text=b'The name for this item', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='short_description_en',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='short_description_es',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='slug_en',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='slug_es',
            field=models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
            preserve_default=True,
        ),
    ]
