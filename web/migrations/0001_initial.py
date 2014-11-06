# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('street', models.CharField(max_length=100)),
                ('zip', models.CharField(max_length=5)),
                ('city', models.CharField(max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CategoryProduct',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('sort_order', models.IntegerField(default=5000)),
            ],
            options={
                'ordering': ['sort_order'],
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='NamedModel',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100)),
                ('slug', models.CharField(max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='ModelWithImage',
            fields=[
                ('namedmodel_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.NamedModel')),
                ('image', models.ImageField(null=True, upload_to=b'')),
            ],
            options={
            },
            bases=('web.namedmodel',),
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('modelwithimage_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.ModelWithImage')),
                ('description', models.TextField(null=True)),
                ('sort_order', models.IntegerField(null=True)),
            ],
            options={
                'ordering': ['sort_order'],
                'verbose_name_plural': 'Categories',
            },
            bases=('web.modelwithimage',),
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('namedmodel_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.NamedModel')),
                ('description', models.TextField(null=True)),
                ('address', models.ForeignKey(to='web.Address')),
            ],
            options={
            },
            bases=('web.namedmodel',),
        ),
        migrations.CreateModel(
            name='Job',
            fields=[
                ('namedmodel_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.NamedModel')),
                ('description', models.TextField()),
                ('sort_order', models.IntegerField(default=5000)),
            ],
            options={
            },
            bases=('web.namedmodel',),
        ),
        migrations.CreateModel(
            name='GalleryItem',
            fields=[
                ('namedmodel_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.NamedModel')),
                ('description', models.TextField()),
                ('preview', models.ImageField(upload_to=b'/gallery/thumbs/')),
                ('image', models.ImageField(upload_to=b'/gallery/full')),
            ],
            options={
            },
            bases=('web.namedmodel',),
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('modelwithimage_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='web.ModelWithImage')),
                ('description', models.TextField(null=True)),
            ],
            options={
            },
            bases=('web.modelwithimage',),
        ),
        migrations.AddField(
            model_name='categoryproduct',
            name='category',
            field=models.ForeignKey(to='web.Category'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='categoryproduct',
            name='product',
            field=models.ForeignKey(to='web.Product'),
            preserve_default=True,
        ),
    ]
