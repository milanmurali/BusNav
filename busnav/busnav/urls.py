"""busnav URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from temp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    url('attractions/', include('attractions.url')),
    url('bus_register/', include('bus_register.url')),
    url('bus_route/', include('bus_route.url')),
    url('bus_route_stop/', include('bus_route_stop.url')),
    url('bus_schedule/', include('bus_schedule.url')),
    url('bus_stop/', include('bus_stop.url')),
    url('crowdsource/', include('crowdsource.url')),
    url('favourite/', include('favourite.url')),
    url('feedback/', include('feedback.url')),
    url('login/', include('login.url')),
    url('notification/', include('notification.url')),
    url('track/', include('realtime.url')),
    url('user_register/', include('user_register.url')),
    url('temp/',include('temp.url')),
    url('$',views.login)



]
