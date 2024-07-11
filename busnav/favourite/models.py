from django.db import models
from user_register.models import UserRegister
from bus_stop.models import BusStop
from bus_route.models import BusRoute
from bus_register.models import BusRegister
# Create your models here.


class Favourite(models.Model):
    favourite_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user = models.ForeignKey(UserRegister, on_delete=models.CASCADE)
    # route_id = models.IntegerField()
    route = models.ForeignKey(BusRoute, on_delete=models.CASCADE)
    # stop_id = models.IntegerField()
    stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)
    # bus_id = models.IntegerField()
    bus = models.ForeignKey(BusRegister, on_delete=models.CASCADE)


    class Meta:
        managed = False
        db_table = 'favourite'

