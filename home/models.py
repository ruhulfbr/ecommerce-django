from django.db import models

# Create your models here.
class Banner(models.Model):
    class StatusOptions(models.TextChoices):
        Active = 'active'
        Inactive = 'inactive'

    title_1 = models.CharField(max_length=200)
    title_2 = models.CharField(max_length=200)
    link = models.CharField(max_length=512)
    status = models.CharField(max_length=10, choices=StatusOptions.choices, default=StatusOptions.Active)
    ordering = models.IntegerField(default=0)
    image = models.ImageField(upload_to="images/banners", null=True)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)


class Brand(models.Model):
    class StatusOptions(models.TextChoices):
        Active = 'active'
        Inactive = 'inactive'

    name = models.CharField(max_length=200)
    link = models.CharField(max_length=512)
    status = models.CharField(max_length=10, choices=StatusOptions.choices, default=StatusOptions.Active)
    image = models.ImageField(upload_to="images/banners", null=True)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)

class Testimonial(models.Model):
    title = models.CharField(max_length=200)
    Description = models.TextField(null=True)
    name = models.CharField(max_length=200)
    designation = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)