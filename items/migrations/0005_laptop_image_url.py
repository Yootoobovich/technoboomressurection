# Generated by Django 5.1.5 on 2025-01-25 13:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('items', '0004_alter_laptop_owner_alter_laptop_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='laptop',
            name='image_url',
            field=models.URLField(blank=True, null=True),
        ),
    ]
