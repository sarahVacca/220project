from django import forms
from .models import Clothing_Item, Type, Size, Style, Brand

class itemForm(forms.ModelForm):
    class Meta:
        model = Clothing_Item
        fields=[
            "name",
            "image",
            "type",
            "price",
            "size",
            "user_email",
            "brand",
            "style",
            "status",
        ]

class typeForm(forms.ModelForm):
    class Meta:
        model = Type
        fields=[
            "type",
        ]

class sizeForm(forms.ModelForm):
    class Meta:
        model = Size
        fields=[
            "size",
        ]

class styleForm(forms.ModelForm):
    class Meta:
        model = Style
        fields=[
            "style_name",
            "description",
        ]
class brandForm(forms.ModelForm):
    class Meta:
        model = Brand
        fields=[
            "brand_name",
        ]