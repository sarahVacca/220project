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
    def priceCheck(self):
        price = self.cleaned_data['price']
        if not price:
            return price
        if price <= 0.99:
            self.add_error("price", "Should be at least $1")
        return price

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