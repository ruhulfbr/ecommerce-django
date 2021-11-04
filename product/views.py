# Create your views here.
from product.form import ProductForm
from django.shortcuts import render, get_object_or_404, redirect
from django.views import View
from django.contrib import messages
from django.contrib.auth.mixins import LoginRequiredMixin
from product.models import Category, Product
from django.core.paginator import Paginator

productLimit = 5

class Products(LoginRequiredMixin, View):
    def get(self, request):
        products = Product.objects.filter(status='active').order_by('-id')
        paginator = Paginator(products, productLimit)
        page_number = request.GET.get('page')
        productObj = paginator.get_page(page_number)

        context = {'title': 'Products', 'page_title': 'Products', 'products': productObj }
        return render(request, 'product/list.html', context)

class TaggedProducts(LoginRequiredMixin, View):
    def get(self, request, tag):
        products = Product.objects.filter(tag='Trending', status='active').order_by('-id')
        paginator = Paginator(products, productLimit)
        page_number = request.GET.get('page')
        productObj = paginator.get_page(page_number)

        context = {'title': tag+' Products', 'page_title': tag+' - Products', 'p_type': tag }
        context['products'] = productObj
        return render(request, 'product/list.html', context)

class CategoryProducts(LoginRequiredMixin, View):
    def get(self, request, id):
        products = Product.objects.filter(category_id=id, status='active').order_by('-id')
        paginator = Paginator(products, productLimit)
        page_number = request.GET.get('page')
        productObj = paginator.get_page(page_number)

        category = get_object_or_404(Category, pk=id)
        context = {'title': category.name+' - Products', 'page_title': category.name+' - Products', 'p_type': category.name}
        context['products'] = productObj
        context['categoryInfo'] = category
        return render(request, 'product/list.html', context)

class SearchProducts(LoginRequiredMixin, View):
    def get(self, request):
        searchKey = request.GET.get('q')
        products = Product.objects.filter(name__contains=searchKey, status='active').order_by('-id')
        paginator = Paginator(products, productLimit)
        page_number = request.GET.get('page')
        productObj = paginator.get_page(page_number)

        context = {'title': 'Search Result - Products', 'page_title': 'Search Result for <i>'+searchKey+'</i>', 'p_type': 'Search Result'}
        context['products'] = productObj
        context['search'] = 'yes'
        return render(request, 'product/list.html', context)

class productDetails(LoginRequiredMixin, View):
    def get(self, request, id):
        product = get_object_or_404(Product, pk=id)
        category = get_object_or_404(Category, pk=product.category.id)

        context = {'title': product.name+' - Products', 'page_title': product.name+' - Products', 'p_type': product.name}
        context['product'] = product
        context['category'] = category
        return render(request, 'product/details.html', context)


class AddView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Add Product', 'page_title': 'Add Product'}
        context['form'] = ProductForm()
        return render(request, 'product/add.html', context)



#Manage Categories
class CategoryListView(LoginRequiredMixin, View):
    def get(self, request, id=False):
        categories = Category.objects.order_by('-id')
        context = {'title': 'Categories', 'page_title': 'Product Categories', 'categories': categories}
        return render(request, 'product/category/index.html', context)

    def post(self, request):
        categoryName = request.POST['name'].strip()
        parentCat = 0
        errorMessage = None

        if (not categoryName):
             errorMessage = 'Category Name is required.'
        elif len(categoryName) < 4:
             errorMessage = 'Category Name is required.'

        if not errorMessage:
             newCategory = Category(name=categoryName, parent=parentCat)
             newCategory.save()
             messages.add_message(request, messages.SUCCESS, 'New category Successfully added')
        else:
            messages.add_message(request, messages.WARNING, errorMessage)
        return redirect('/product/categories')

class CategoryEditView(LoginRequiredMixin, View):
    def get(self, request, id):

        categories = Category.objects.order_by('-id')

        context = {'title': 'Edit Category', 'page_title': 'Product Categories', 'categories': categories}
        context['category_id'] = id
        context['single_category'] = get_object_or_404(Category, pk=id)

        return render(request, 'product/category/index.html', context)

    def post(self, request, id):
        categoryName = request.POST['name'].strip()
        categoryStatus = request.POST['status']

        parentCat = 0
        errorMessage = None

        if (not categoryName):
             errorMessage = 'Category Name is required.'
        elif len(categoryName) < 4:
             errorMessage = 'Category Name is required.'

        if not errorMessage:
             updateCat = Category(id=id,name=categoryName, parent=parentCat, status=categoryStatus)
             updateCat.save()
             messages.add_message(request, messages.SUCCESS, 'Category Successfully Updated')
        else:
            messages.add_message(request, messages.WARNING, errorMessage)
        return redirect('/product/categories')

class CategoryDeleteView(LoginRequiredMixin, View):

    def get(self, request, id):
        Category.objects.filter(id=id).delete()
        messages.add_message(request, messages.SUCCESS, 'Category Successfully Deleted')
        return redirect('/product/categories')



