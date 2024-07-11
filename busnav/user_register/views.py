from django.db.models import Q
from django.shortcuts import render
from user_register.models import UserRegister, Location
from login.models import Login
# Create your views here.

def postuserregistration (request):
    obk=''
    obm=''
    if request.method=='POST':
        a = request.POST.get('username')
        # b = request.POST.get('password')
        obv = Login.objects.filter(Q(username=a) | (Q(username=a)))
        if len(obv) > 0:
            obk = 'Username already taken'
        else:
            obj=UserRegister()
            obj.first_name=request.POST.get('fname')
            obj.last_name=request.POST.get('lname')
            obj.gender=request.POST.get('gender')
            obj.dob=request.POST.get('dob')
            obj.email=request.POST.get('email')
            obj.username=request.POST.get('username')
            obj.password=request.POST.get('password')
            obj.save()

            ob=Login()
            ob.username=obj.username
            ob.password=obj.password
            ob.user_id=obj.user_id
            ob.type='user'
            ob.save()
            obm='Successfully Added'
    context={
        'x':obk,
        'msg':obm
    }

    return render(request,'user_register/post_userregistration.html',context)


def update(request,idd):
    # ss=request.session["user_id"]
    obb=UserRegister.objects.get(user_id=idd)
    context={
        'x':obb
    }
    if request.method == 'POST':
        obj = UserRegister.objects.get(user_id=idd)
        obj.first_name = request.POST.get('fname')
        obj.last_name = request.POST.get('lname')
        obj.gender = request.POST.get('gender')
        obj.dob = request.POST.get('dob')
        obj.email = request.POST.get('email')
        obj.username = request.POST.get('username')
        obj.password = request.POST.get('password')
        obj.save()
        return view_user(request)
    return render(request, 'user_register/update.html',context)


def view_user(request):
    ss=request.session["user_id"]
    obb=UserRegister.objects.filter(user_id=ss)
    context={
        'x':obb
    }
    return render(request, 'user_register/view_user.html',context)

def map(request,idd):
    obj=Location.objects.get(location_id=idd)
    context={
        'lat': obj.latitude,
        'lon': obj.longitude,

    }
    return render(request,'user_register/map.html',context)