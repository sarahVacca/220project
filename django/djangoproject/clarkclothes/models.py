import uuid
from django.db import models
# from phonenumber_field.modelfields import PhoneNumberField
# from djmoney.models.fields import MoneyField
from PIL import Image

class Type(models.Model):
    type = models.CharField(primary_key=True, max_length=100)

    def __str__(self):
        return '{}'.format(self.type)

class Size(models.Model):
    size = models.CharField(primary_key=True, max_length=100)

    def __str__(self):
        return '{}'.format(self.size)

class Style(models.Model):
    style_name = models.CharField(primary_key=True, max_length=100)
    description = models.TextField()

    def __str__(self):
        return '{}'.format(self.style_name)

class Brand(models.Model):
    brand_name = models.CharField(primary_key=True, max_length=100)

    def __str__(self):
        return '{}'.format(self.brand_name)

class User(models.Model):
    name = models.CharField(max_length=500, default='Firstname Lastname')
    clark_email = models.EmailField(primary_key=True)
    phone_number = models.CharField(max_length=11)

    def __str__(self):
        return '{}'.format(self.name)

class Availablity(models.Model):
    name = models.CharField(primary_key=True, max_length=100)

    def __str__(self):
        return '{}'.format(self.name)

class Clothing_Item(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=100)
    image = models.ImageField(default='null', upload_to='images/')
    type = models.ForeignKey(Type, null=False, on_delete=models.CASCADE, db_index=True)
    price = models.DecimalField(decimal_places=2, max_digits=9)
    size = models.ForeignKey(Size, null=False, on_delete=models.CASCADE, db_index=True)
    user_email = models.ForeignKey(User, null=False, on_delete=models.CASCADE, db_index=True)
    brand = models.ForeignKey(Brand, null=False, on_delete=models.CASCADE, db_index=True)
    style = models.ForeignKey(Style, null=False, on_delete=models.CASCADE, db_index=True)
    status = models.ForeignKey(Availablity, null=False, on_delete=models.CASCADE, db_index=True, default='Available')

    def __str__(self):
        return '{}'.format(self.name)


