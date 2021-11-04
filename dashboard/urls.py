from django.urls import path
from .views import DashboardView

from . import views

urlpatterns = [
    path('', DashboardView.as_view(), name="DashboardView"),
]
