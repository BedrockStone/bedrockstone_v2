# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-05 16:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='category',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='contentpage',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='contentpage',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='job',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='job',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='location',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='location',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='menuitem',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='menuitem',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='project',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='slug',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='slug_en',
            field=models.CharField(blank=True, help_text='This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100, null=True),
        ),
    ]