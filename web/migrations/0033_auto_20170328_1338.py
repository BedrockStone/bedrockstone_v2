# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0032_merge'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('image', models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item')),
                (b'cropped', image_cropping.fields.ImageRatioField(b'image', '400x300', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropped')),
                ('product', models.ForeignKey(to='web.Product')),
            ],
            options={
            },
            bases=(models.Model, web.models.ImageTagModel),
        ),
        migrations.AlterField(
            model_name='category',
            name='parent',
            field=models.ForeignKey(related_name='children', blank=True, to='web.Category', help_text=b'Parent category', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='staffmember',
            name='email',
            field=models.EmailField(max_length=75, null=True, blank=True),
            preserve_default=True,
        ),
    ]
