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
    path('bob/<type>/', views.update_type, name="t_update"),
    path('bob/<type>/delete/', views.delete_type, name="bob_delete"),
    path('tim/<size>/', views.update_size, name="s_update"),
    path('tim/<size>/delete/', views.delete_size, name="tim_delete"),
    path('rob/<style_name>/', views.update_style, name="y_update"),
    path('rob/<style_name>/delete/', views.delete_style, name="rob_delete"),
    path('joe/<brand_name>/', views.update_brand, name="b_update"),
    path('joe/<brand_name>/delete/', views.delete_brand, name="joe_delete"),

]
