from django.db import models
from bus_stop.models import BusStop
# Create your models here.




class BusRoute(models.Model):
    route_id = models.AutoField(primary_key=True)
    route_name = models.CharField(max_length=30)
    # stop_id = models.IntegerField()
    stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)
    description = models.CharField(max_length=500)
    end_stop_id = models.CharField(max_length=50)
    # end_stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)


    class Meta:
        managed = False
        db_table = 'bus_route'



