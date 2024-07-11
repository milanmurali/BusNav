from django.conf.urls import url
from attractions import views


urlpatterns=[
    url('post_attractions/', views.postattractions),
    url('userview_attractions/', views.userviewattractions),
    url('adminmanage_attractions/', views.adminmanageattractions),
    url('accept/(?P<idd>\w+)', views.accept),
    url('deny/(?P<idd>\w+)', views.deny)
]
