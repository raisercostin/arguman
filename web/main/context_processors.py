from django.conf import settings

def allsettings(request):
  return {'allsettings': settings}
