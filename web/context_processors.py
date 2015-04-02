from web.models import MenuItem

__author__ = 'elliottohara'


def menu_items(request):
    return {'navigation': MenuItem.objects.filter(parent=None)}