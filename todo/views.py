from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView

from todo.models import Todo
from todo.serializer import TodoSerializer


class TodoView(APIView):
    serializer_class = TodoSerializer  # Explicitly set the serializer_class

    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)

    def get(self, request):
        items = [(x.task, x.completed) for x in Todo.objects.all()]
        return Response(items)
