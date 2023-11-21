from django.contrib import admin
from django.urls import include, path
from drf_spectacular.views import SpectacularAPIView, SpectacularRedocView, SpectacularSwaggerView

# Define a common prefix for 'api/v1/' URLs
api_v1_prefix = 'api/v1/'

urlpatterns = [
    path('admin/', admin.site.urls),
    path(api_v1_prefix, include('todo.urls')),
    # Optional UI:
    path(api_v1_prefix, include([
         path('schema', SpectacularAPIView.as_view(), name='schema'),
         ])),
    path('', SpectacularSwaggerView.as_view(
        url_name='schema'), name='swagger-ui'),
    path(api_v1_prefix + 'schema/redoc',
         SpectacularRedocView.as_view(url_name='schema'), name='redoc'),
]
