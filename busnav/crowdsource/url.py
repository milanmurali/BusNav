from django.conf.urls import url
from crowdsource import views


urlpatterns=[
    url('userpost_crowdsource/', views.postcrowdsource),
    url('userview_crowdsource', views.userviewcrowdsource),
    url('adminmanage_crowdsource', views.adminmanage_crowdsource),
    url('accept/(?P<idd>\w+)', views.accept),
    url('deny/(?P<idd>\w+)', views.deny)

]


