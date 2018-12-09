from django.conf.urls import url
from login.views import login, logout, view_token

urlpatterns = [
    url(r'^login$', login),
    url(r'^logout$', logout),
    url(r'^view_token$', view_token),
]
