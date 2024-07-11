from django.db import models

# Create your models here.


class Realtime(models.Model):
    realtime_id = models.AutoField(primary_key=True)
    bus_id = models.IntegerField()
    route_id = models.IntegerField()
    latitude = models.CharField(max_length=400)
    longitude = models.CharField(max_length=400)
    # timestamp = models.DateTimeField()
    speed = models.IntegerField()
    direction = models.IntegerField()
    status = models.CharField(max_length=25)
    bus_no = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'realtime'

