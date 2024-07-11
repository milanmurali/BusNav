from django.db import models

# Create your models here.


class Attractions(models.Model):
    attractions_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    latitude = models.CharField(max_length=25)
    longitude = models.CharField(max_length=25)
    description = models.CharField(max_length=500)
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'attractions'

