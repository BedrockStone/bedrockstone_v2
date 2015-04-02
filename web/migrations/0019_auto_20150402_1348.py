# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0018_auto_20150330_1846'),
    ]

    operations = [
        migrations.CreateModel(
            name='MenuItem',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(help_text=b'The name for this item', max_length=100)),
                ('long_description', models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True)),
                ('short_description', models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True)),
                ('slug', models.CharField(help_text=b'This field is used for links, it should usually be the name with spaces replaced by an underscore', max_length=100)),
                ('sort_order', models.IntegerField(default=500, help_text=b'The order in which this item will show on list pages')),
                ('parent', models.ForeignKey(to='web.MenuItem')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.RemoveField(
            model_name='contentpage',
            name='active',
        ),
        migrations.AlterField(
            model_name='category',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='contentpage',
            name='homepage_position',
            field=models.IntegerField(help_text=b'The position (1-3) to be shown on the home page (under the gallery item display).  If left blank, the page can still be navigated to, but will not have a section on the home page.', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='contentpage',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='galleryitem',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='job',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='location',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='product',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='project',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='projecttype',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of the long description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
    ]
