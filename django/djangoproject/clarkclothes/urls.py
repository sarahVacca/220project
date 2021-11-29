from django.urls import path

from . import views

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
    path('formSize/', views.formSize, name="addSize"),
    path('formStyle/', views.formStyle, name="newStyle"),
    path('formBrand/', views.formBrand, name="createBrand"),
    path('<id>/', views.update_type, name="t_update"),

]
