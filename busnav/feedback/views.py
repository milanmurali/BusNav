from django.shortcuts import render
from feedback.models import Feedback
from bus_route.models import BusRoute
from bus_stop.models import BusStop
from bus_register.models import BusRegister
import datetime
# Create your views here.

def postfeedback (request):
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    obb2 = BusRegister.objects.all()
    context = {
        'x': obb,
        'y': obb1,
        'z': obb2
    }
    if request.method=='POST':
        obj=Feedback()
        obj.user_id=1
        obj.route_id=request.POST.get('route')
        obj.bus_id=request.POST.get('bus')
        obj.stop_id = request.POST.get('stop')
        obj.rating= request.POST.get('rating')
        obj.comment = request.POST.get('comment')
        obj.feedback_date = datetime.datetime.today()
        obj.save()
    return render(request,'feedback/post_feedback.html',context)

def userviewfeedback (request):
    obj = Feedback.objects.all()
    context = {
        'x': obj
    }
    return render(request,'feedback/user_view_feedback.html',context)

def adminviewreplyfeedback (request):
    obj = Feedback.objects.all()
    context = {
        'x': obj
    }
    return render(request,'feedback/admin_view_reply_feedback.html',context)