from django.conf.urls import url
from bus_schedule import views


urlpatterns=[
    url('post_busschedule/', views.postbusschedule),
    url('busschedule_buspost/', views.buspostbusschedule),
    url('userview_busschedule/', views.userviewbusschedule),
    url('adminmanage_busschedule/', views.adminmanagebusschedule),
    url('busmanage_busschedule/',views.busmanagebusschedule),
    url('accept/(?P<idd>\w+)', views.accept),
    url('deny/(?P<idd>\w+)', views.deny),
    url('update/(?P<idd>\w+)',views.update)
]