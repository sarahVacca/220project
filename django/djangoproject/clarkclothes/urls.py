from django.urls import path

from . import views
from .views import detail_view, formType

urlpatterns = [
    path('', views.index, name="index"),
    path('additem', views.form, name="form"),
    path('<id>', views.update_view, name="update_view"),
    path('<id>/delete', views.delete_view, name="delete_view"),
    path('typedetails/', views.typedetails, name="details"),
    path('sizedetails/', views.sizedetails, name="sizes"),
    path('styledetails/', views.styledetails, name="styles"),
    path('branddetails/', views.branddetails, name="brands"),
    path('formType/', views.formType, name="type"),

]
