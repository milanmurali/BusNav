from django.db import models

# Create your models here.



class BusStop(models.Model):
    stop_id = models.AutoField(primary_key=True)
    stop_name = models.CharField(max_length=30)
    stop_desc = models.CharField(max_length=500)
    latitude =  models.CharField(max_length=25)
    longitude = models.CharField(max_length=25)
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'bus_stop'


class RtAutostand(models.Model):
    rtautostand_id = models.AutoField(primary_key=True)
    stand_name = models.CharField(max_length=100)
    latitude = models.CharField(max_length=45)
    longitude = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'rt_autostand'


class RtStop(models.Model):
    rtstop_id = models.AutoField(primary_key=True)
    stop_name = models.CharField(max_length=100)
    latitude = models.CharField(max_length=45)
    longitude = models.CharField(max_length=45)
    direction = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'rt_stop'
