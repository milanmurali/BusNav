from django.db.models import Q
from django.shortcuts import render
from bus_register.models import BusRegister
# Create your views here.
from login.models import Login


def postbusregistration (request):
    obk = ''
    obm=''
    if request.method == 'POST':
        a = request.POST.get('un')
        # b = request.POST.get('password')
        obv = Login.objects.filter(Q(username=a) | (Q(username=a)))
        if len(obv) > 0:
            obk = 'Username already taken'
        else:
            if request.method=='POST':
                obj=BusRegister()
                obj.user_id=1
                obj.busname=request.POST.get('busname')
                obj.vehicle_no=request.POST.get('vehicleno')
                obj.starting_point=request.POST.get('startpoint')
                obj.destination_point=request.POST.get('endpoint')
                obj.type=request.POST.get('type')
                obj.username=request.POST.get('un')
                obj.password=request.POST.get('ps')
                obj.save()
                obm='Successfully Added'
    context={
        'x':obk,
        'msg':obm
    }



    return render(request, 'bus_register/post_busregistration.html',context)

def buspostbusregistration (request):
    obk = ''
    obm = ''
    if request.method == 'POST':
        a = request.POST.get('un')
        # b = request.POST.get('password')
        obv = Login.objects.filter(Q(username=a) | (Q(username=a)))
        if len(obv) > 0:
            obk = 'Username already taken'
        else:
            if request.method=='POST':
                obj=BusRegister()
                obj.user_id=1
                obj.busname=request.POST.get('busname')
                obj.vehicle_no=request.POST.get('vehicleno')
                obj.starting_point=request.POST.get('startpoint')
                obj.destination_point=request.POST.get('endpoint')
                obj.type=request.POST.get('type')
                obj.username = request.POST.get('un')
                obj.password = request.POST.get('ps')
                obj.save()
                obm = 'Successfully Added'
    context = {
        'x': obk,
        'msg': obm
    }
    return render(request, 'bus_register/bus_post_busregistration.html',context)

def userviewbusregistraion (request):
    # if request.method=='POST':
    #     vv=request.POST.get('lop')
    #     obj = BusRegister.objects.filter(busname__contains=vv)
    #     context = {
    #         'x': obj
    #     }
    #     return render(request, 'bus_register/user_view_busregistration.html', context)
    # else:
    obj=BusRegister.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_register/user_view_busregistration.html', context)

def adminmanagebusregistraion (request):
    obj=BusRegister.objects.all()
    context={
        'x':obj
    }
    return render(request, 'bus_register/admin_manage_busregistration.html', context)

def accept(request,idd):
    obj=BusRegister.objects.get(bus_id=idd)
    obj.status='Accepted'
    obj.save()

    ob = Login()
    ob.username = obj.username
    ob.password = obj.password
    ob.user_id = obj.bus_id
    ob.type = 'bus'
    ob.save()
    return adminmanagebusregistraion(request)

def deny(request,idd):
    obj=BusRegister.objects.get(bus_id=idd)
    obj.status='Denied'
    obj.save()
    return adminmanagebusregistraion(request)

def view(request):
    ss=request.session["user_id"]
    obj = BusRegister.objects.filter(bus_id=ss)
    context = {
        'x': obj
    }
    return render(request, 'bus_register/view.html', context)

def update(request,idd):
    obj = BusRegister.objects.get(bus_id=idd)
    context = {
        'x': obj
    }
    if request.method=='POST':
        obj=BusRegister.objects.get(bus_id=idd)
        obj.user_id=1
        obj.busname=request.POST.get('busname')
        obj.vehicle_no=request.POST.get('vehicleno')
        obj.starting_point=request.POST.get('startpoint')
        obj.destination_point=request.POST.get('endpoint')
        obj.type=request.POST.get('type')
        obj.username = request.POST.get('un')
        obj.password = request.POST.get('ps')
        obj.save()
        return view(request)

    return render(request, 'bus_register/update.html',context)

