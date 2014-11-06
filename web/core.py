from inspect import getmodule, stack
from web.models import Job,Category

__author__ = 'elliottohara'


def context_processor(request):
    view_name = getmodule(stack()[1][0]).__name__

    return {
        'jobs': Job.objects.all(),
        'products': Category.objects.all().order_by('sort_order'),
        'virtual_showcase':[],
        'current_view': "%s.%s" % (view_name, stack()[1][3]),
    }
