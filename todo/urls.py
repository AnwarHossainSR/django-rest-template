from django.urls import path

from todo.views import TodoView

urlpatterns = [
    path('todo', TodoView.as_view())
]
