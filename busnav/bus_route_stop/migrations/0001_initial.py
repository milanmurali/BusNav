# Generated by Django 3.2.20 on 2024-01-11 11:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BusRouteStop',
            fields=[
                ('route_stop_id', models.AutoField(primary_key=True, serialize=False)),
                ('stop_sequence_order', models.IntegerField()),
            ],
            options={
                'db_table': 'bus_route_stop',
                'managed': False,
            },
        ),
    ]
