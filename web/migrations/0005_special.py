# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-09-29 19:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0004_auto_20170831_1347'),
    ]

    operations = [
        migrations.CreateModel(
            name='Special',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='The name for this item', max_length=100)),
                ('name_en', models.CharField(help_text='The name for this item', max_length=100, null=True)),
                ('long_description', models.TextField(blank=True, help_text='Description text used when this item is displayed on a full page', null=True)),
                ('long_description_en', models.TextField(blank=True, help_text='Description text used when this item is displayed on a full page', null=True)),
                ('short_description', models.TextField(blank=True, help_text='Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True)),
                ('short_description_en', models.TextField(blank=True, help_text='Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True)),
                ('slug', models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True)),
                ('slug_en', models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True)),
                ('sort_order', models.IntegerField(default=500, help_text='The order in which this item will show on list pages')),
                ('start_date', models.DateField()),
                ('end_date', models.DateField()),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]
