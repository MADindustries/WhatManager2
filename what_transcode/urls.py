from django.conf.urls import url
from what_transcode.views import index, status_table, request_transcode, request_retry, update

urlpatterns = [
    url(r'^$', index),
    url(r'^status_table$', status_table),
    url(r'^request$', request_transcode),
    url(r'^request_retry$', request_retry),
    url(r'^update$', update),
]
