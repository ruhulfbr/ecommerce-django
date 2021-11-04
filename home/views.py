from django.shortcuts import render
from django.views import View
from home.models import Banner, Testimonial
from product.models import Product

class HomeView(View):
    def get(self, request):
        trendingProducts = Product.objects.filter(tag='Trending', status='active').order_by('-id')[:5]
        feturedProducts = Product.objects.filter(tag='Featured', status='active').order_by('-id')[:5]
        newProducts = Product.objects.filter(tag='New Arrival', status='active').order_by('-id')[:5]
        saleProducts = Product.objects.filter(tag='On Sale', status='active').order_by('-id')[:5]

        context = {'title': 'Home'}
        context['banners']          = Banner.objects.order_by('ordering')
        context['testimonials'] = Testimonial.objects.order_by('-id')
        context['trendingProducts'] = trendingProducts
        context['feturedProducts']  = feturedProducts
        context['newProducts']      = newProducts
        context['saleProducts']     = saleProducts

        return render(request, 'home/index.html', context)

class AboutView(View):
    def get(self, request):
        context = {'title': 'About Us'}
        return render(request, 'home/about.html', context)

class ContactView(View):
    def get(self, request):
        context = {'title': 'Contact Us'}
        return render(request, 'home/contact.html', context)
