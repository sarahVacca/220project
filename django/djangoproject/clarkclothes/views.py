from django.http.response import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

from django.shortcuts import (get_object_or_404, render, HttpResponseRedirect)

# Create your views here.
from .models import Clothing_Item, Type, Size, Style, Brand
from PIL import Image
from .forms import itemForm, typeForm, sizeForm, styleForm, brandForm

def index(request):
    context = {"clothing_items": Clothing_Item.objects.order_by('name')}
    return render(request, "index.html", context)

def typedetails(request):
    context = {"types": Type.objects.order_by('type')}
    return render(request, "typedetails.html", context)

def sizedetails(request):
    context = {"sizes": Size.objects.order_by('size')}
    return render(request, "sizedetails.html", context)

def styledetails(request):
    context = {"styles": Style.objects.order_by('style_name')}
    return render(request, "styledetails.html", context)

def branddetails(request):
    context = {"brands": Brand.objects.order_by('brand_name')}
    return render(request, "branddetails.html", context)

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

def formType(request):
    context={}
    form2 = typeForm(request.POST or None)
    if form2.is_valid():
        form2.save()
        return HttpResponseRedirect('/clarkclothes')
    context['form'] = form2
    return render(request, "typeform.html", context)

def formSize(request):
    context={}
    form = sizeForm(request.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/clarkclothes')
    context['form'] = form
    return render(request, "sizeform.html", context)

def formStyle(request):
    context={}
    form = styleForm(request.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/clarkclothes')
    context['form'] = form
    return render(request, "styleform.html", context)

def formBrand(request):
    context={}
    form = brandForm(request.POST or None)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/clarkclothes')
    context['form'] = form
    return render(request, "brandform.html", context)

def detail_view(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # add the dictionary during initialization
    context["data"] = Clothing_Item.objects.get(id = id)
         
    return render(request, "detail_view.html", context)

def update_view(request, id=None):
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
        return HttpResponseRedirect("/")
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_view.html", context)

def update_type(request, id=None):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Type, id = id)
 
    # pass the object as instance in form
    form = typeForm(request.POST or None, instance = obj)
 
    # save the data from the form and
    # redirect to detail_view
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/")
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_type.html", context)

def update_size(request, id=None):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Size, id = id)
 
    # pass the object as instance in form
    form = sizeForm(request.POST or None, instance = obj)
 
    # save the data from the form and
    # redirect to detail_view
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/")
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_size.html", context)

def update_style(request, id=None):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Style, id = id)
 
    # pass the object as instance in form
    form = styleForm(request.POST or None, instance = obj)
 
    # save the data from the form and
    # redirect to detail_view
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/")
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_style.html", context)

def update_brand(request, id=None):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Brand, id = id)
 
    # pass the object as instance in form
    form = brandForm(request.POST or None, instance = obj)
 
    # save the data from the form and
    # redirect to detail_view
    if form.is_valid():
        form.save()
        return HttpResponseRedirect("/")
 
    # add form dictionary to context
    context["form"] = form
 
    return render(request, "update_brand.html", context)

def delete_type(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Type, id = id)
 
 
    if request.method =="POST":
        # delete object
        obj.delete()
        # after deleting redirect to
        # home page
        return HttpResponseRedirect("/clarkclothes")
 
    return render(request, "delete_type.html", context)

def delete_size(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Size, id = id)
 
 
    if request.method =="POST":
        # delete object
        obj.delete()
        # after deleting redirect to
        # home page
        return HttpResponseRedirect("/clarkclothes")
 
    return render(request, "delete_size.html", context)

def delete_style(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Style, id = id)
 
 
    if request.method =="POST":
        # delete object
        obj.delete()
        # after deleting redirect to
        # home page
        return HttpResponseRedirect("/clarkclothes")
 
    return render(request, "delete_style.html", context)

def delete_brand(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Brand, id = id)
 
 
    if request.method =="POST":
        # delete object
        obj.delete()
        # after deleting redirect to
        # home page
        return HttpResponseRedirect("/clarkclothes")
 
    return render(request, "delete_brand.html", context)

def delete_view(request, id):
    # dictionary for initial data with
    # field names as keys
    context ={}
 
    # fetch the object related to passed id
    obj = get_object_or_404(Clothing_Item, id = id)
 
 
    if request.method =="POST":
        # delete object
        obj.delete()
        # after deleting redirect to
        # home page
        return HttpResponseRedirect("/clarkclothes")
 
    return render(request, "delete_view.html", context)