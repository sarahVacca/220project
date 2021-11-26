from django.http.response import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

from django.shortcuts import (get_object_or_404, render, HttpResponseRedirect)

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

def detail_view(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # add the dictionary during initialization
    context["data"] = Clothing_Item.objects.get(id = id)
         
    return render(request, "detail_view.html", context)

def update_view(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Clothing_Item, id = id)
 
    # pass the object as instance in form
    form = itemForm(request.POST or None, instance = obj)
 
    # save the data from the form and
    # redirect to detail_view
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/" + id)
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_view.html", context)