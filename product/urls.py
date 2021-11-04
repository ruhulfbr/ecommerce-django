from django.urls import path
from .views import Products, TaggedProducts, CategoryProducts, SearchProducts, productDetails

from . import views

urlpatterns = [
    path('', Products.as_view(), name="products"),
    path('tag/<str:tag>', TaggedProducts.as_view(), name="products.tag"),
    path('category/<int:id>', CategoryProducts.as_view(), name="products.category"),
    path('search', SearchProducts.as_view(), name="products.search"),
    path('details/<int:id>', productDetails.as_view(), name="product.details"),
]
