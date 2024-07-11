from django.conf.urls import url
from bus_route_stop import views


urlpatterns=[
    url('post_routestop', views.postroutestop),
    url('adminmanage_routestop', views.adminmanageroutestop),
    url('userview_routestop', views.userviewroutestop)
]
