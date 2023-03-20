from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='wondeland-home'),
    path('projects/', views.projects, name='wondeland-projects'),
    path('info/', views.info, name='wondeland-info'),
    path('worker-dashboard/', views.worker_dashboard,
         name='wondeland-worker-dashboard'),
    path('user-dashboard/', views.user_dashboard,
         name='wondeland-user-dashboard'),
    path('login/', views.login, name='wondeland-login'),
    path('register/', views.register, name='wondeland-register'),

]
