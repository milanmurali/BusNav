from django.shortcuts import render
from bus_route.models import BusRoute
from bus_stop.models import BusStop
# Create your views here.

def postbusroute (request):
    obb=BusStop.objects.all()
    context={
        'x':obb,
    }

    if request.method=='POST':
        obj=BusRoute()
        obj.route_name=request.POST.get('busroutename')
        obj.description=request.POST.get('routedesc')
        obj.stop_id=request.POST.get('startstop')
        obj.end_stop_id=request.POST.get('endstop')
        obj.save()
    return render(request, 'bus_route/post_busroute.html', context)

def userviewbusroutes (request):
    obj=BusRoute.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_route/user_view_busroutes.html', context)

def adminmanagebusroutes (request):
    obj=BusRoute.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_route/admin_manage_busroutes.html', context)

def update(request,idd):
    obj = BusRoute.objects.get(route_id=idd)
    obj1=BusStop.objects.all()
    context = {
        'x': obj,
        'y':obj1
    }
    if request.method=='POST':
        obj=BusRoute.objects.get(route_id=idd)
        obj.route_name=request.POST.get('busroutename')
        obj.description=request.POST.get('routedesc')
        obj.start_stop_id=request.POST.get('startstopid')
        obj.end_stop_id=request.POST.get('endstopid')
        obj.save()
        return adminmanagebusroutes(request)
    return render(request,'bus_route/update.html',context)


def delete(request, idd):
    obj=BusRoute.objects.get(route_id=idd)
    obj.delete()
    return adminmanagebusroutes(request)