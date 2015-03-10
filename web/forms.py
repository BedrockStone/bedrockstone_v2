__author__ = 'elliottohara'
from django import forms


class ContactForm(forms.Form):
    name = forms.CharField()
    message = forms.CharField(widget=forms.Textarea)
    phone_number = forms.CharField()
    email = forms.CharField(widget=forms.EmailField)

    def send_email(self):
        # send email using the self.cleaned_data dictionary
        pass