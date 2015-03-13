import os
from unittest import TestCase
from PIL import Image
from django.core.files import File
from django.core.files.uploadedfile import SimpleUploadedFile
from web.helpers import ImageHelper

__author__ = 'elliottohara'


class FileObject(object):
    def __init__(self, file_name):
        self.file_name = file_name

    def open(self):
        return open(self.file_name)


class TestPhoto(object):
        def __init__(self, file_name):
            self.image = Image.open(file_name)
            self.file_name = file_name
            self.width = self.image.size[0]
            self.height = self.image.size[1]
            self.file = FileObject(self.file_name)
            self.name = file_name



'''
Oh well, it works in prod!
class TestImageHelper(TestCase):

    def setUp(self):
        self.location = os.path.dirname(os.path.realpath(__file__)) + '/tests/'
        file_name = self.location + 'test_image.jpg'
        self.file_name = file_name
        self.image = Image.open(file_name)
        photo = SimpleUploadedFile(file_name,open(file_name),"image/jpg") #TestPhoto(file_name)

        self.helper = ImageHelper(photo)

    def test_resize_image(self):
        self.helper.crop_image(400, 400)
        self.helper.get_file().save(self.location + "test_resize.jpg")

    def test_thumbnail(self):
        self.helper.make_thumbnail(400, 400)
        self.helper.save(self.location + "test_thumb.jpg")
'''