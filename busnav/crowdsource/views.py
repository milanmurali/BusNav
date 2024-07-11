from django.shortcuts import render
from crowdsource.models import Crowdsource
# Create your views here.

def postcrowdsource (request):
    if request.method=='POST':
        obj=Crowdsource()
        obj.user_id=1
        obj.description=request.POST.get('info')
        obj.type=request.POST.get('type')
        obj.save()
    return render(request, 'crowdsource/post_crowdsource.html')

def userviewcrowdsource (request):

    obj=Crowdsource.objects.all()
    context={
        'x':obj
    }
    return render(request, 'crowdsource/user_view_crowdsource.html', context)

def adminmanage_crowdsource (request):


    obj=Crowdsource.objects.all()
    context={
        'x':obj
    }
    return render(request, 'crowdsource/admin_manage_crowdsource.html', context)


def accept(request,idd):
    obj=Crowdsource.objects.get(crowdsource_id=idd)
    obj.status='Accepted'
    obj.save()
    return adminmanage_crowdsource(request)

def deny(request,idd):
    obj=Crowdsource.objects.get(crowdsource_id=idd)
    obj.status='Denied'
    obj.save()
    return adminmanage_crowdsource(request)