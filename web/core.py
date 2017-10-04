from inspect import getmodule, stack
from web.models import Job,Category
from bedrockstone_v2.local_settings import EMAIL_HOST_USER, EMAIL_HOST_PASSWORD
import smtplib

__author__ = 'elliottohara'

def send_email(user, recipient, subject, body):

    gmail_user = EMAIL_HOST_USER
    gmail_pwd = EMAIL_HOST_PASSWORD
    FROM = user
    TO = recipient if type(recipient) is list else [recipient]
    SUBJECT = subject
    TEXT = body
    REPLY_TO_ADDRESS = user
    # Prepare actual message
    message = """From: %s\nTo: %s\nSubject: %s\n\n%s
    """ % (FROM, ", ".join(TO), SUBJECT, TEXT)

    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.ehlo()
    server.starttls()
    server.login(gmail_user, gmail_pwd)
    server.sendmail(FROM, TO, message)
    server.close()




def context_processor(request):
    view_name = getmodule(stack()[1][0]).__name__

    return {
        'jobs': Job.objects.all(),
        'products': Category.objects.all().order_by('sort_order'),
        'virtual_showcase':[],
        'current_view': "%s.%s" % (view_name, stack()[1][3]),
    }


