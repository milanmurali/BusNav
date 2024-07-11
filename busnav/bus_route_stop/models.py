from django.db import models
from bus_route.models import BusRoute
from bus_stop.models import BusStop
# Create your models here.



class BusRouteStop(models.Model):
    route_stop_id = models.AutoField(primary_key=True)
    # route_id = models.IntegerField()
    route = models.ForeignKey(BusRoute, on_delete=models.CASCADE)
    # stop_id = models.IntegerField()
    stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)

    stop_sequence_order = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'bus_route_stop'

