# https://www.pgadmin.org/docs/pgadmin4/latest/config_py.html#config-py

from pgadmin.utils import env

try:
  file = open(MAIL_PASSWORD_FILE, "r")
  MAIL_PASSWORD = file.read()
  file.close()
except NameError:
  pass
except:
  print("Something went wrong with MAIL_PASSWORD_FILE process")
