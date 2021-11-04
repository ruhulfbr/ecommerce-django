from django.db import models
from django.contrib.auth.models import User
from django.utils.html import format_html
from django.utils.text import slugify


class Category(models.Model):
    class StatusOptions(models.TextChoices):
        Active = 'Active'
        Inactive = 'Inactive'

    name = models.CharField(max_length=128)
    parent = models.IntegerField(default=0)
    status = models.CharField(max_length=10, choices=StatusOptions.choices, default=StatusOptions.Active)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name}"



class Product(models.Model):
    class StatusOptions(models.TextChoices):
        Active = 'active'
        Inactive = 'inactive'

    class TagOptions(models.TextChoices):
        Trending = 'Trending'
        Featured = 'Featured'
        New_Arrival = 'New Arrival'
        Top_Rated = 'Top Rated'
        Best_Selling = 'Best Selling'
        On_Sale = 'On Sale'

    name = models.CharField(max_length=200)
    slug = models.SlugField(max_length=200)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True)
    short_desc = models.TextField(null=True)
    long_desc = models.TextField(null=True)
    price = models.FloatField(default=0)
    quantity = models.IntegerField(default=0)
    sku = models.CharField(max_length=128)
    tag = models.CharField(null=True, max_length=50, choices=TagOptions.choices)
    status = models.CharField(max_length=10, choices=StatusOptions.choices, default=StatusOptions.Active)
    image = models.ImageField(upload_to="images/products", null=True)
    image2 = models.ImageField(upload_to="images/products", null=True)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super(Product, self).save(*args, **kwargs)
