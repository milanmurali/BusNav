from django.db import models

from user_register.models import UserRegister
from bus_route.models import BusRoute
from bus_register.models import BusRegister
from bus_stop.models import BusStop
# Create your models here.


class Feedback(models.Model):
    feedback_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserRegister, on_delete=models.CASCADE)

    # route_id = models.IntegerField()
    route = models.ForeignKey(BusRoute, on_delete=models.CASCADE)

    # bus_id = models.IntegerField()
    bus = models.ForeignKey(BusRegister, on_delete=models.CASCADE)

    stop = models.ForeignKey(BusStop, on_delete=models.CASCADE)

    rating = models.IntegerField()
    comment = models.CharField(max_length=50)
    feedback_date = models.DateField()

    class Meta:
        managed = False
        db_table = 'feedback'

