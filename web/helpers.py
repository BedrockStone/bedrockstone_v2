import StringIO
import os
from PIL import Image
from django.core.files.uploadedfile import SimpleUploadedFile

__author__ = 'elliottohara'


class ImageHelper:

    def __init__(self, photo):
        self.photo = photo
        #PIL destroys name attribute during some image manipulation operations
        self.name = photo.name
        self.image = Image.open(photo)

    def make_thumbnail(self, width, height):
        self.image.thumbnail((width, height), Image.ANTIALIAS)

    #TODO: this might make image larger, should only make smaller
    def crop_image(self, width, height):
        pw = self.photo.width
        ph = self.photo.height
        nw = width
        nh = height
        # only do this if the image needs resizing
        if (pw, ph) != (nw, nh):
            pr = float(pw) / float(ph)
            nr = float(nw) / float(nh)

            if pr > nr:
                # photo aspect is wider than destination ratio
                tw = int(round(nh * pr))
                self.image = self.image.resize((tw, nh), Image.ANTIALIAS)
                l = int(round(tw - nw) / 2.0)
                self.image = self.image.crop((l, 0, l + nw, nh))
            elif pr < nr:
                # photo aspect is taller than destination ratio
                th = int(round(nw / pr))
                self.image = self.image.resize(nw, th, Image.ANTIALIAS)
                t = int(round(th - nh / 2.0))
                #print(0, t, nw, t + nh)
                self.image = self.image.crop((0, t, nw, t + nh))
            else:
                # photo aspect matches the destination ratio
                self.image = self.image.resize((width, height), Image.ANTIALIAS)

    def get_file(self):
        image_file = StringIO.StringIO()
        self.image.save(image_file, 'JPEG', quality=90)
        image_file.seek(0)
        return SimpleUploadedFile(os.path.split(self.name)[-1], image_file.read(), content_type='image/jpg')


class OsHelper:
    def __init__(self, filename):
        self.filename = filename

    def get_extension(self):
        return os.path.splitext(self.filename)[-1]

    def get_dir(self):
        return os.path.split(self.filename)[0]
