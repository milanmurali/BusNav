from django.db import models
from user_register.models import UserRegister
# Create your models here.


class Crowdsource(models.Model):
    crowdsource_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserRegister, on_delete=models.CASCADE)
    description = models.CharField(max_length=100)
    status = models.CharField(max_length=15)
    type = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'crowdsource'

