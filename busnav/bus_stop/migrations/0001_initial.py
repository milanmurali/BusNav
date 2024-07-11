# Generated by Django 3.2.20 on 2024-01-11 11:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BusStop',
            fields=[
                ('stop_id', models.AutoField(primary_key=True, serialize=False)),
                ('stop_name', models.CharField(max_length=30)),
                ('stop_desc', models.CharField(max_length=30)),
                ('latitude', models.IntegerField()),
                ('longitude', models.IntegerField()),
                ('status', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'bus_stop',
                'managed': False,
            },
        ),
    ]
