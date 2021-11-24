from django.shortcuts import render

# Create your views here.
from .models import Clothing_Item
from PIL import Image

def index(request):
    context = {"clothing_items": Clothing_Item.objects.order_by('name')}
    return render(request, "index.html", context)

def list(request):
    images = {"clothing_items": Clothing_Item.objects.values_list('image')}
    return render(request, "index.html", {'images': images})