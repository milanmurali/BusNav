from django.db import models
from bus_register.models import BusRegister
from bus_stop.models import BusStop
from bus_route.models import BusRoute

# Create your models here.


class BusSchedule(models.Model):
    schedule_id = models.AutoField(primary_key=True)
    # bus_id = models.IntegerField()
    bus = models.ForeignKey(BusRegister, on_delete=models.CASCADE)
    # route_id = models.IntegerField()
    route = models.ForeignKey(BusRoute, on_delete=models.CASCADE)

    # stop_id = models.IntegerField()
    stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)

    stop_arrival_time = models.TimeField()
    trip = models.IntegerField()

    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'bus_schedule'

