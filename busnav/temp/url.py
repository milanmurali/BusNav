from django.conf.urls import url
from temp import views


urlpatterns=[
    url('login/', views.login),
    url('admin_home/', views.admin_home),
    url('bus_home/', views.bus_home),
    url('user_home/', views.user_home),

]