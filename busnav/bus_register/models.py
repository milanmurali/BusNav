from django.db import models
from user_register.models import UserRegister
# Create your models here.


class BusRegister(models.Model):
    bus_id = models.AutoField(primary_key=True)
    busname = models.CharField(max_length=50)
    vehicle_no = models.CharField(max_length=25)
    starting_point = models.CharField(max_length=25)
    destination_point = models.CharField(max_length=25)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserRegister, on_delete=models.CASCADE)
    type = models.CharField(max_length=25)
    status = models.CharField(max_length=50)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'bus_register'

