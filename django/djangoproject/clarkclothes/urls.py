from django.urls import path

from . import views
from .views import detail_view

urlpatterns = [
    path('', views.index, name="index"),
    path('additem', views.form, name="form"),
    path('<id>', views.update_view, name="update_view"),
    path('<id>/delete', views.delete_view, name="delete_view"),

]
