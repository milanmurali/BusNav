from django.conf.urls import url
from realtime import views


urlpatterns=[
    url('android/', views.track.as_view()),
    url('a/(?P<idd>\w+)',views.map),
    url('vv/',views.view)
]