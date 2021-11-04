from product.utils import my_cool_func

def view_coolness(request):
    data = my_cool_func(request)
    return render_to_response("xxx.html")