from django.db import models
# Create your models here.


class UserRegister(models.Model):
    user_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    dob = models.DateField()
    gender = models.CharField(max_length=1)
    email = models.CharField(max_length=25)
    username = models.CharField(max_length=25)
    password = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'user_register'


class Location(models.Model):
    location_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserRegister,on_delete=models.CASCADE)
    latitude = models.CharField(max_length=45)
    longitude = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'location'



