from django.conf.urls import url
from bus_route import views

urlpatterns=[
    url('post_busroute/', views.postbusroute),
    url('userview_busroute/', views.userviewbusroutes),
    url('adminmanage_busroute/', views.adminmanagebusroutes),
    url('update/(?P<idd>\w+)', views.update),
    url('delete/(?P<idd>\w+)', views.delete),

]