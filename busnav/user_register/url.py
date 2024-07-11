from django.conf.urls import url
from user_register import views


urlpatterns=[
    url('post_userregister', views.postuserregistration),
    url('update/(?P<idd>\w+)', views.update),
    url('view_user/', views.view_user),
    url('map/(?P<idd>\w+)',views.map),
]