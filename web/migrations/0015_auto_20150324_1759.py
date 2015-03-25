# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import web.models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0014_auto_20150319_0200'),
    ]

    operations = [
        migrations.CreateModel(
            name='LocationPicture',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('image', models.ImageField(upload_to=web.models.upload_image)),
                (b'cropped', image_cropping.fields.ImageRatioField(b'image', '400x300', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropped')),
                ('location', models.ForeignKey(to='web.Location')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='location',
            name=b'cropped',
            field=image_cropping.fields.ImageRatioField(b'image', '400x300', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropped'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='image',
            field=models.ImageField(default=b'product/no_image.jpeg', null=True, upload_to=web.models.upload_image, help_text=b'The image to show for this item'),
            preserve_default=True,
        ),
    ]
