__author__ = 'elliottohara'
from django import template

register = template.Library()


@register.filter(name='box')
def box(request, **kwargs):
    return_val = '<div class="box_inner"><div class="maxheight">' \
                 '<div class="box_title"><a href="{1}" class="{2}">{0}</a></div>' \
                 '<div class="box_bot"><a href="{1}" class="{2}"><img src="{3}" title="{0}" /></a></div>' \
                 '</div></div>'
    return_val = return_val.format(kwargs['title'], kwargs['href'], kwargs['a_class'], kwargs['src'])

    return return_val