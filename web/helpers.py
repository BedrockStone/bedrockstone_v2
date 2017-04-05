from io import StringIO
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


def itersubclasses(cls, _seen=None):
    """
    itersubclasses(cls)

    Generator over all subclasses of a given class, in depth first order.

    list(itersubclasses(int)) == [bool]
    True
    class A(object): pass
    class B(A): pass
    class C(A): pass
    class D(B,C): pass
    class E(D): pass

    for cls in itersubclasses(A):
         print(cls.__name__)
    B
    D
    E
    C
     # get ALL (new-style) classes currently defined
     [cls.__name__ for cls in itersubclasses(object)] #doctest: +ELLIPSIS
    ['type', ...'tuple', ...]
    """

    if not isinstance(cls, type):
        raise TypeError('itersubclasses must be called with '
                        'new-style classes, not %.100r' % cls)
    if _seen is None: _seen = set()
    try:
        subs = cls.__subclasses__()
    except TypeError: # fails only when cls is type
        subs = cls.__subclasses__(cls)
    for sub in subs:
        if sub not in _seen:
            _seen.add(sub)
            yield sub
            for sub in itersubclasses(sub, _seen):
                yield sub


if __name__ == '__main__':
    import doctest
    doctest.testmod(verbose=1)
