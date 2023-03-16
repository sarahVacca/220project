from django.test import TestCase
from clarkclothes.forms import itemForm
from clarkclothes.models import Availablity

# Create your tests here.
# Note: all test functions have to start with the word test!

# Class of functions that test on the clarkclothes app
class clarkClothesTest(TestCase):
    # Tests if an item price is less than $1
    # Should fail
    def testFormPriceFail(self):
        form = itemForm(data={
            "name" : "test", 
            "image" : "pictures/challah.JPG",
            "type" : "Shirt",
            "price" : "0.05",
            "size": "XL",
            "user_email" : "svacca@clarku.edu",
            "brand": "Forever 21",
            "style" : "Casual",
            "status": "Available"
        })
        self.assertEqual(form.errors["price"], ["Should be at least $1"])
    
    # Tests if an item price is 0.99 cents
    # Should fail
    def testFormPriceFailAgain(self):
        form = itemForm(data={
            "name" : "test", 
            "image" : "pictures/challah.JPG",
            "type" : "Shirt",
            "price" : "0.99",
            "size": "XL",
            "user_email" : "svacca@clarku.edu",
            "brand": "Forever 21",
            "style" : "Casual",
            "status": "Available"
        })
        self.assertEqual(form.errors["price"], ["Should be at least $1"])

    # Tests that when an availability's name length is 100, it is allowed
    # Should pass
    def testFieldLengthPass(self):
        Availablity.objects.create(name='HdjB1gODsqcGGMLKarQf0FfRaHYwIwrhlGMRlWMCC7Yn1ml1E7sNLigZNWCqO3jylNKF1TVNBVWSg94fOQ45ZEpzMmtUOvGdtUrt')
        test = Availablity.objects.get()
        allowedLength = test._meta.get_field('name').max_length
        self.assertEqual(allowedLength, 100)
    
    # Tests that when an availability's name length is over 100, it is not allowed
    # Should fail
    def testFieldLengthFail(self):
        Availablity.objects.create(name='HdjB1gODsqcGGMLKarQf0FfRaHYwIwrhlGMRlWMCC7Yn1ml1E7sNLigZNWCqO3jylNKF1TVNBVWSg94fOQ45ZEpzMmtUOvGdtUrtoo')
        test = Availablity.objects.get()
        allowedLength = test._meta.get_field('name').max_length
        self.assertEqual(allowedLength, 100)