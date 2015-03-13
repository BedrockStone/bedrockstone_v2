import os
from unittest import TestCase
from web.helpers import OsHelper

__author__ = 'elliottohara'


class TestNameHelper(TestCase):
    def test_get_extension(self):
        jpg = "test.jpg"
        result = OsHelper(jpg).get_extension()
        self.assertEquals('.jpg', result)

    def test_funky_name(self):
        name = "blah.old.jpg"
        result = OsHelper(name).get_extension()
        self.assertEqual('.jpg', result)

    def test_get_folders(self):
        name = "/usr/elliott/folder/image.jpg"
        l = OsHelper(name).get_dir()
        self.assertEquals('/usr/elliott/folder')

    def test_get_filename_only(self):
        name = '/urs/elliott/folder/image.jpg'
        helper = OsHelper(name)
        x = helper.get_filename_only()
