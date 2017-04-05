__author__ = 'elliottohara'
from modeltranslation.translator import TranslationOptions, register, translator
from web.models import SortableNamedModel, ProjectType
from .helpers import itersubclasses


class SortableNamedModelOptions(TranslationOptions):
    fields = ('name', 'long_description', 'short_description', 'slug')


exclude = (ProjectType, )
for k in itersubclasses(SortableNamedModel):
    if k not in exclude:
        translator.register(k, SortableNamedModelOptions)


@register(ProjectType)
class ProjectTypeOptions(TranslationOptions):
    fields = ('description', )


