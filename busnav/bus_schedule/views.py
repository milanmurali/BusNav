from django.shortcuts import render
from bus_schedule.models import BusSchedule
from bus_register.models import BusRegister
from bus_route.models import BusRoute
from bus_stop.models import BusStop

import datetime
# Create your views here.
def postbusschedule (request):
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    obb2 = BusRegister.objects.all()
    context = {
        'x': obb,
        'y': obb1,
        'z': obb2
    }
    if request.method=='POST':
        obj=BusSchedule()
        obj.bus_id=request.POST.get('bus')
        obj.stop_id=request.POST.get('stop')
        obj.route_id=request.POST.get('route')
        obj.trip=request.POST.get('trip')
        obj.stop_arrival_time=request.POST.get('tm')
        obj.save()
    return render(request, 'bus_schedule/post_busschedule.html', context)

def buspostbusschedule (request):
    ss= request.session["user_id"]
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    # obb2 = BusRegister.objects.all()
    context = {
        'x': obb,
        'y': obb1,
        # 'z': obb2
    }
    if request.method=='POST':
        obj=BusSchedule()
        obj.bus_id=ss
        obj.stop_id=request.POST.get('stop')
        obj.route_id=request.POST.get('route')
        obj.trip=request.POST.get('trip')
        obj.stop_arrival_time=request.POST.get('tm')
        obj.save()
    return render(request, 'bus_schedule/buspost_busschedule.html', context)

def update (request,idd):
    ss = request.session["user_id"]
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    # obb2 = BusRegister.objects.all()
    obj = BusSchedule.objects.get(schedule_id=idd)
    context = {
        'x': obb,
        'y': obb1,
        # 'z': obb2,
        'a':obj
    }
    if request.method == 'POST':
        obj = BusSchedule.objects.get(schedule_id=idd)
        obj.bus_id =ss
        obj.stop_id = request.POST.get('stop')
        obj.route_id = request.POST.get('route')
        obj.trip = request.POST.get('trip')
        obj.stop_arrival_time = request.POST.get('dt')
        obj.save()
        return busmanagebusschedule(request)
    return render(request, 'bus_schedule/update.html', context)


def userviewbusschedule (request):
    if request.method=='POST':
        vv=request.POST.get('lop')
        obj = BusSchedule.objects.filter(stop__stop_name__contains=vv)
        context = {
            'x': obj
        }
        return render(request, 'bus_schedule/user_view_bus_schedule.html', context)
    else:
        obj=BusSchedule.objects.all()
        context={
            'x':obj
        }
    return render(request, 'bus_schedule/user_view_bus_schedule.html', context)

def adminmanagebusschedule (request):
    obj=BusSchedule.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_schedule/admin_manage_bus_schedule.html', context)
def busmanagebusschedule (request):
    ss= request.session["user_id"]
    obj = BusSchedule.objects.filter(bus_id=ss)
    context = {
        'x': obj
    }
    return render(request, 'bus_schedule/bus_manage_bus_schedule.html', context)


def accept(request,idd):
    obj=BusSchedule.objects.get(schedule_id=idd)
    obj.status='Accepted'
    obj.save()
    return adminmanagebusschedule(request)

def deny(request,idd):
    obj=BusSchedule.objects.get(schedule_id=idd)
    obj.status='Denied'
    obj.save()
    return adminmanagebusschedule(request)


