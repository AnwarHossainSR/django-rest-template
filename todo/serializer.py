# serializers.py
from rest_framework import serializers

from .models import Todo


class TodoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Todo
        fields = ['task', 'completed']

    def create(self, validated_data):
        return Todo.objects.create(**validated_data)
