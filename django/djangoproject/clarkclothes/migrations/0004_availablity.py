# Generated by Django 3.2.8 on 2021-11-24 01:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clarkclothes', '0003_auto_20211123_1847'),
    ]

    operations = [
        migrations.CreateModel(
            name='Availablity',
            fields=[
                ('name', models.CharField(max_length=100, primary_key=True, serialize=False)),
            ],
        ),
    ]