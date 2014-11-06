__author__ = 'elliottohara'
from django import template
from django.core.urlresolvers import reverse

register = template.Library()


@register.simple_tag
def nav_item(request, args):
    pieces = args.split(',')
    url = pieces[0]
    name = pieces[1]
    c = ""
    if request.path == reverse(url):
        c = " class='current'"

    return "<li{}><a href='{}'>{}</a>".format(c, reverse(url), name)
