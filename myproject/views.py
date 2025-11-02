# myproject/views.py

from django.shortcuts import render

def index(request):
    """Представление главной страницы ToDo."""
    return render(request, 'todo/index.html')