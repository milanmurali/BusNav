from django.db import models

from user_register.models import UserRegister\
# Create your models here.


class Notification(models.Model):
    notification_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(UserRegister, on_delete=models.CASCADE)

    message = models.CharField(max_length=50)
    notification_type = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'notification'

