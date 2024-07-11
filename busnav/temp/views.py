from django.shortcuts import render
from bus_stop.models import BusStop
# Create your views here.

def login (request):
    return render(request, 'temp/Login.html')
def admin_home (request):
    return render(request, 'temp/Admin home.html')

def bus_home (request):
    return render(request, 'temp/Bus_Home.html')

def user_home (request):
    obj=BusStop.objects.all()
    context={
            'x':obj
        }
    return render(request, 'temp/User Home.html',context)

