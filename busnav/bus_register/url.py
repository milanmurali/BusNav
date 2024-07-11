from django.conf.urls import url
from bus_register import views

urlpatterns=[
    url('post_busregistration/', views.postbusregistration),
    url('bus_reg_home/', views.buspostbusregistration),
    url('userview_busregistration/', views.userviewbusregistraion),
    url('adminmanage_busregistration/', views.adminmanagebusregistraion),
    url('accept/(?P<idd>\w+)', views.accept),
    url('deny/(?P<idd>\w+)', views.deny),
    url('view/',views.view),
    url('update/(?P<idd>\w+)',views.update)


]


