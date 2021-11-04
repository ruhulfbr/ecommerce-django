from django.urls import path
from .views import HomeView, AboutView, ContactView

from . import views

urlpatterns = [
    path('', HomeView.as_view(), name="home"),
    path('about-us', AboutView.as_view(), name="about-us"),
    path('conatct-us', ContactView.as_view(), name="contact-us"),
]
