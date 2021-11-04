from django import forms
from product.models import Product, Category

class ProductForm(forms.ModelForm):
    name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class': "form-control", 'placeholder': "Product Name"}))
    slug = forms.CharField(required=True,widget=forms.TextInput(attrs={'class': "form-control", 'placeholder': "Product slug"}))
    short_desc = forms.CharField(required=True, widget=forms.Textarea(attrs={'class': "form-control height-100", 'placeholder': "Product Short Description"}))
    long_desc = forms.CharField(required=True, widget=forms.Textarea(attrs={'class': "form-control height-100", 'placeholder': "Product Long Description"}))
    price = forms.FloatField(required=True, widget=forms.NumberInput(attrs={'class': "form-control", 'placeholder': "Product Price"}))
    quantity = forms.IntegerField(required=True, widget=forms.NumberInput(attrs={'class': "form-control", 'placeholder': "Product Quantity"}))
    sku = forms.CharField(required=True, widget=forms.TextInput(attrs={'class': "form-control", 'placeholder': "Product Sku"}))
    # category = forms.ChoiceField(required=True,widget=forms.Select(attrs={'class': "form-control", 'placeholder': "Select Category"}))

    class Meta:
        model=Product
        fields = ['name', 'category','short_desc','long_desc', 'price', 'quantity', 'sku', 'slug']

        def __init__(self, *args, **kwargs):
            user = kwargs.pop('user', '')
            super(ProductForm, self).__init__(*args, **kwargs)
            self.fields['category'] = forms.ModelChoiceField(queryset=Category.objects.filter(status='Active'))
