# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


def populate_description(apps, schema_editor):
        named_models = ('Location', 'Category', 'Product', 'ProjectType',)
        for named_model in named_models:
            manager = apps.get_model("web", named_model)
            for model in manager.objects.all():
                model.long_description = model.description
                model.save()


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0015_auto_20150324_1759'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='category',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='galleryitem',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='job',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='job',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='location',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='product',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='project',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='project',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='projecttype',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='long_description',
            field=models.TextField(help_text=b'Description text used when this item is displayed on a full page', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='staffmember',
            name='short_description',
            field=models.TextField(help_text=b'Description text used when this item is shown in a list. It will also be shown in bold format in front of thelong description on full page displays', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='location',
            name='description',
            field=models.TextField(null=True, blank=True),
        ),
        migrations.RunPython(populate_description)
    ]
