import os

_DB_CONF = {
 'host': os.environ.get('DB_HOST', '10.0.2.15'),
 'port': 3306,
 'user': os.environ.get('DB_USER', 'satya'),
 'passwd': os.environ.get('DB_PASSWORD', 'Shiva@1192'),
 'db': os.environ.get('DB_NAME', 'student')
#  'host':'localhost',
#  'port':3306,
#  'user':'satya',
#  'passwd':'Shiva@1192',
#  'db':'student'
}
