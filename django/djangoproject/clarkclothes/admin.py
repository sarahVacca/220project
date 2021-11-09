from typing import Type
from django.contrib import admin
from django.db.models.expressions import SimpleCol
from django.db.models.fields import TextField

from django.djangoproject.clarkclothes.models import Brand, Clothing_Item, Size, Style, Typer, User

# Register your models here.
# from .models import Student, Room, Course, Enrolled

# admin.site.register(Student)

admin.site.register(Clothing_Item)
admin.site.register(Type)
admin.site.register(Style)
admin.site.register(Size)
admin.site.register(User)
admin.site.register(Brand)

