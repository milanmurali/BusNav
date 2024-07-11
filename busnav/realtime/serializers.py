from rest_framework import serializers
from realtime.models import Realtime

class android_serialiser(serializers.ModelSerializer):
    class Meta:
        model=Realtime
        fields='__all__'