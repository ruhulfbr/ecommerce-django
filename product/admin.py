from django.contrib import admin
from product.models import Product, Category
from django.utils.html import format_html
from django.contrib.admin import DateFieldListFilter


class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'status', 'created_at']
    search_fields = ['name', 'status', 'created_at']
    list_filter = ['status']
    ordering = ('name', 'status', 'created_at')
    ordering = ['-id']

admin.site.register(Category, CategoryAdmin)


class ProductAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        return format_html('<img height="100" src="{}" />'.format(obj.image.url))
    image_tag.short_description = 'Product Image'

    list_display = ['image_tag', 'name', 'category', 'tag', 'price', 'quantity', 'status', 'created_at']
    search_fields = ['long_desc', 'category__name', 'slug', 'name', 'price', 'quantity', 'tag', 'status']
    list_filter = ['created_at', 'category', 'tag', 'status', 'price', 'quantity']
    ordering = ('id', 'name', 'category', 'price', 'quantity', 'tag', 'status', 'created_at')
    # readonly_fields = ('image_tag', )
    exclude = ('slug',)
    ordering = ['-id']


admin.site.register(Product, ProductAdmin)
