from django.conf.urls import url
from bus_stop import views


urlpatterns=[
    url('post_busstop', views.postbusstop),
    url('userview_busstop', views.userviewbusstop),
    url('adminmanage_busstop', views.adminmanagebusstop),
    url('accept/(?P<idd>\w+)', views.accept),
    url('deny/(?P<idd>\w+)', views.deny),
    url('near/',views.viewnearstop)
]

