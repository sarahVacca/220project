from django.http.response import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

# Create your views here.
from .models import Clothing_Item
from PIL import Image
from .forms import itemForm

def index(request):
    context = {"clothing_items": Clothing_Item.objects.order_by('name')}
    return render(request, "index.html", context)

def list(request):
    images = {"clothing_items": Clothing_Item.objects.values_list('image')}
    return render(request, "index.html", {'images': images})

def form(request):
    context={}
    form = itemForm(request.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/clarkclothes')
    context['form'] = form
    return render(request, "forms.html", context)