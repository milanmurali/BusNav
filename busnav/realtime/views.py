from django.http import HttpResponse
from django.shortcuts import render
from bus_register.models import BusRegister
from realtime.models import Realtime
import datetime

# Create your views here.



from rest_framework.views import APIView,Response
from realtime.serializers import android_serialiser

class track(APIView):
    def post(self,request):
        objs=Realtime.objects.filter(bus_no=request.data['cno'])
        if len(objs)>0:
            obj=objs[0]
        else:
            obj=Realtime()
        obj.bus_no=request.data['cno']
        obj.latitude=request.data['lat']
        obj.longitude=request.data['lon']
        obj.bus_id=1
        obj.route_id=1
        # obj.timestamp=datetime.datetime.today()
        obj.speed=1
        obj.direction=1
        obj.status='pending'
        obj.save()
        return HttpResponse('yes')


def map(request,idd):
    obj = Realtime.objects.get(realtime_id=idd)
    context = {
        'lat': obj.latitude,
        'lon': obj.longitude
    }
    return render(request,'realtime/track1.html',context)

def view(request):
    obj=Realtime.objects.all()
    context={
        'x':obj
    }
    return render(request,'realtime/user_view_realtime.html',context)

