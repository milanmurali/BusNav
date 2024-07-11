from django.conf.urls import url
from notification import views


urlpatterns=[
    url('post_notification', views.postnotifications),
    url('userview_notification', views.userviewnotification),

]