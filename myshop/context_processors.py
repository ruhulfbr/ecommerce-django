
def categories(request):
    from product.models import Category
    return {'categories': Category.objects.order_by('name')}

def brands(request):
    from home.models import Brand
    return {'brands': Brand.objects.order_by('name')}
