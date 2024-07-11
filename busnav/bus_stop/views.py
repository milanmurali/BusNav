from django.shortcuts import render

from bus_route_stop.models import BusRouteStop
from bus_stop.models import BusStop

# Create your views here.
def postbusstop (request):
    if request.method=='POST':
        obj=BusStop()
        obj.stop_name=request.POST.get('busstopname')
        obj.stop_desc=request.POST.get('stopdesc')
        obj.latitude=request.POST.get('latitude')
        obj.longitude=request.POST.get('longitude')
        obj.save()
    return render(request, 'bus_stop/post_busstop.html')

def userviewbusstop (request):

    obj=BusStop.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_stop/user_view_busstop.html', context)

def adminmanagebusstop (request):
    obj=BusStop.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_stop/admin_manage_busstop.html', context)


def accept(request,idd):
    obj=BusStop.objects.get(stop_id=idd)
    obj.status='Accepted'
    obj.save()
    return adminmanagebusstop(request)

def deny(request,idd):
    obj=BusStop.objects.get(stop_id=idd)
    obj.status='Denied'
    obj.save()
    return adminmanagebusstop(request)

from bus_stop.models import RtStop
from bus_stop.models import RtAutostand
def viewnearstop(request):
    obj=RtStop.objects.all()
    obj1=RtAutostand.objects.all()
    route_data1 = [

    ]



    # st=[]
    print(len(obj1))
    for o in obj:
        dt={'lat': o.latitude,'lng':o.longitude}
        route_data1.append(dt)

    context={
        # 'startlat':startlat,
        # 'startlon':startlon,
        # 'endlat':endlat,
        # 'endlon':endlon,
        'stops':obj,
        'auto':obj1,
    }

    return render(request, 'bus_stop/view.html', context)