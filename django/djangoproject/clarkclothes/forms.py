from django import forms
from .models import Clothing_Item

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