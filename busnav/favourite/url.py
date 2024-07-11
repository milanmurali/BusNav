from django.conf.urls import url
from favourite import views


urlpatterns=[
    url('post_favourite/', views.postfavourite),
    url('usermanage_favourite', views.usermanagefavourites),
    url('update/(?P<idd>\w+)', views.update),
    url('delete/(?P<idd>\w+)', views.delete),


]


