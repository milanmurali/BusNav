from django.shortcuts import render
from notification.models import Notification
# Create your views here.

def postnotifications (request):
    if request.method=='POST':
        obj=Notification()
        obj.user_id=1
        obj.notification_type=request.POST.get('type')
        obj.message=request.POST.get('notification')
        obj.save()
    return render(request,'notification/post_notification.html')

def userviewnotification (request):
    obj = Notification.objects.all()
    context = {
        'x': obj
    }
    return render(request,'notification/user_view_notifications.html',context)