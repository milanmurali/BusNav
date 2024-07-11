from django.shortcuts import render
from favourite.models import Favourite
from bus_register.models import BusRegister
from bus_route.models import BusRoute
from bus_stop.models import BusStop
# Create your views here.

def postfavourite (request):
    ss=request.session["user_id"]
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    obb2 = BusRegister.objects.all()
    context = {
        'x': obb,
        'y': obb1,
        'z': obb2
    }
    if request.method=='POST':
        obj=Favourite()
        obj.user_id = ss
        obj.route_id = request.POST.get('route')
        obj.bus_id = request.POST.get('bus')
        obj.stop_id =request.POST.get('stop')
        obj.save()
    return render(request, 'favourite/post_favourite.html',context)

def usermanagefavourites (request):
    ss=request.session["user_id"]
    obj=Favourite.objects.filter(user_id=ss)
    context={
        'x':obj
    }
    return render(request,'favourite/user_manage_favourites.html', context)

def update(request,idd):
    obj = Favourite.objects.get(favourite_id=idd)
    obb = BusRoute.objects.all()
    obb1 = BusStop.objects.all()
    obb2 = BusRegister.objects.all()
    context = {
        'x': obb,
        'y': obb1,
        'z': obb2
    }
    if request.method == 'POST':
        obj = Favourite()
        obj.user_id = 1
        obj.route_id = request.POST.get('route')
        obj.bus_id = request.POST.get('bus')
        obj.stop_id = request.POST.get('stop')
        obj.save()
        return usermanagefavourites(request)

    return render(request,'favourite/update.html',context)


def delete(request, idd):
    obj=Favourite.objects.get(favourite_id=idd)
    obj.delete()
    return usermanagefavourites(request)


