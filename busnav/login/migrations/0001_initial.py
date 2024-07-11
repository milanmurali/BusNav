# Generated by Django 3.2.20 on 2024-01-11 11:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Login',
            fields=[
                ('login_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=30)),
                ('password', models.CharField(max_length=30)),
                ('user_id', models.IntegerField()),
                ('type', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'login',
                'managed': False,
            },
        ),
    ]
