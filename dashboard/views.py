# Create your views here.
from django.shortcuts import render
from django.views import View
from django.http import HttpResponse
from django.contrib.auth.mixins import LoginRequiredMixin


class DashboardView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Dashboard'}
        return render(request, 'dashboard/index.html', context)

