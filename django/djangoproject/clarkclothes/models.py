import uuid

from django.db import models
# from phonenumber_field.modelfields import PhoneNumberField
# from djmoney.models.fields import MoneyField

class Type(models.Model):
    type = models.CharField(primary_key=True)

class Size(models.Model):
    size = models.CharField(primary_key=True)

class Style(models.Model):
    style_name = models.CharField(primary_key=True)
    description = models.TextField()

class Brand(models.Model):
    brand_name = models.CharField(primary_key=True)

class User(models.Model):
    clark_email = models.EmailField(primary_key=True)
    phone_number = models.CharField()
class Clothing_Item(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=100)
    type = models.ForeignKey(Type, null=False, on_delete=models.CASCADE, db_index=True)
    price = models.DecimalField(decimal_places=2)
    size = models.ForeignKey(Size, null=False, on_delete=models.CASCADE, db_index=True)
    user_email = models.ForeignKey(User, null=False, on_delete=models.CASCADE, db_index=True)
    brand = models.ForeignKey(Brand, null=False, on_delete=models.CASCADE, db_index=True)
    style = models.ForeignKey(Style, null=False, on_delete=models.CASCADE, db_index=True)



