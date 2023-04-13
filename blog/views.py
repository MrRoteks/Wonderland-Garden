from django.shortcuts import render
from django.http import HttpResponse
from .models import Post


projects_dict = [
    {
        'author': 'Author1',
        'title': 'Post 1',
        'content': 'First post content',
        'date_posted': '17.03.2023'
    },
    {
        'author': 'Author2',
        'title': 'Post 2',
        'content': '2\'nd post content',
        'date_posted': '18.03.2023'
    }
]


def home(request):
    context = {
        'projects_dict': Post.objects.all()
    }
    return render(request, 'blog/home.html', context)


def projects(request):
    return render(request, 'blog/projects.html', {'title': 'All Projects'})


def info(request):
    return render(request, 'blog/info.html', {'title': 'info'})


def worker_dashboard(request):
    return render(request, 'blog/worker-dashboard.html', {'title': 'Worker dashboard'})


def user_dashboard(request):
    return render(request, 'blog/user-dashboard.html', {'title': 'User dashboard'})


def login(request):
    return render(request, 'blog/login.html', {'title': 'Login'})


def register(request):
    return render(request, 'blog/register.html', {'title': 'Register'})
