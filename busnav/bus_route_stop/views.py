from django.shortcuts import render
from bus_route_stop.models import BusRouteStop
from bus_route.models import BusRoute
from bus_stop.models import BusStop
# Create your views here.

def postroutestop (request):
    obb=BusRoute.objects.all()
    obb1=BusStop.objects.all()
    context={
        'x':obb,
        'y':obb1
    }
    if request.method=='POST':
        obj=BusRouteStop()
        obj.route_id=request.POST.get('bus')
        obj.stop_id=request.POST.get('stop')
        obj.stop_sequence_order=request.POST.get('sequence')
        obj.save()
    return render(request, 'bus_route_stop/post_routestop.html',context)

def adminmanageroutestop (request):

    obj=BusRouteStop.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_route_stop/admin_manage_route_stop.html', context)

def userviewroutestop (request):

    obj=BusRouteStop.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_route_stop/user_view_route_stop.html', context)

def update(request,idd):
    obj=BusRouteStop.objects.get(route_stop_id=idd)
    context={
        'x':obj
    }
    if request.method=='POST':
        obj=BusRouteStop.objects.get(route_stop_id=idd)
        obj.route_id=1
        obj.stop_id=1
        obj.stop_sequence_order=request.POST.get('sequence')
        obj.save()
        return adminmanageroutestop(request)
    return render(request, 'bus_route_stop/update.html', context)

def delete(request,idd):
    obj = BusRouteStop.objects.get(route_stop_id=idd)
    obj.delete()
    return adminmanageroutestop(request)