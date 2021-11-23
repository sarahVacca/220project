from django.shortcuts import render

# Create your views here.
from .models import Clothing_Item

def index(request):
    context = {"clothing_items": Clothing_Item.objects.order_by('name')}
    return render(request, "index.html", context)
