from django.conf.urls import url
from feedback import views


urlpatterns=[
    url('post_feedback/', views.postfeedback),
    url('userview_feedback/', views.userviewfeedback),
    url('adminmanage_feedback/', views.adminviewreplyfeedback),

]



