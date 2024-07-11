# Generated by Django 3.2.20 on 2024-01-11 11:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='UserRegister',
            fields=[
                ('user_id', models.AutoField(primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=25)),
                ('last_name', models.CharField(max_length=25)),
                ('dob', models.DateField()),
                ('gender', models.CharField(max_length=1)),
                ('email', models.CharField(max_length=25)),
                ('username', models.CharField(max_length=25)),
                ('password', models.CharField(max_length=25)),
            ],
            options={
                'db_table': 'user_register',
                'managed': False,
            },
        ),
    ]
