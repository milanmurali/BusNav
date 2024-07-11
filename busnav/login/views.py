
from django.http import HttpResponseRedirect
from django.shortcuts import render
from login.models import Login
from django.db.models import Q

# Create your views here.
from user_register.models import Location


def login(request):
    obk=""
    if request.method == "POST":
        uname = request.POST.get("username")
        passw = request.POST.get("password")
        obj = Login.objects.filter(username=uname,password=passw)
        tp =""
        for ob in obj :
            tp =ob.type
            uid=ob.user_id
            if tp == "admin":
                request.session["user_id"] = uid
                return HttpResponseRedirect('/temp/admin_home/')
            elif tp == "user":
                request.session["user_id"] = uid
                Location.objects.filter(user_id=uid).delete()
                obj = Location()
                obj.user_id = uid
                obj.longitude = "11.265328"
                obj.latitude = "75.779963"
                obj.save()
                return HttpResponseRedirect('/temp/user_home/')
            elif tp == "bus":
                request.session["user_id"] = uid
                return HttpResponseRedirect('/temp/bus_home/')
        else:
            objlist = "Username or password incorrect... please try again...!"
            context = {
                'msg': objlist,
                }
            return  render(request, 'login/login.html', context)
    return render(request,'login/login.html')

