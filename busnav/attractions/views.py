from django.shortcuts import render
from attractions.models import Attractions

# Create your views here.
def postattractions(request):
    if request.method=='POST':
        obj=Attractions()
        obj.name=request.POST.get('name')
        obj.description=request.POST.get('attrdesc')
        obj.latitude=request.POST.get('latitude')
        obj.longitude=request.POST.get('longitude')
        obj.status='pending'
        obj.save()
    return render(request, 'attractions/post_attractions.html')

def userviewattractions (request):
    obj=Attractions.objects.all()
    context={
        'x':obj
    }
    return render(request, 'attractions/user_view_attractions.html', context)

def adminmanageattractions (request):
    obj = Attractions.objects.all()
    context = {
        'x': obj
    }
    return render(request, 'attractions/admin_manage_attractions.html', context)


def accept(request,idd):
    obj=Attractions.objects.get(attractions_id=idd)
    obj.status='Accepted'
    obj.save()
    return adminmanageattractions(request)

def deny(request,idd):
    obj=Attractions.objects.get(attractions_id=idd)
    obj.status='Denied'
    obj.save()
    return adminmanageattractions(request)



