import pymysql
import pytz
import subprocess
from datetime import datetime

# Conexión a la base de datos
db = pymysql.connect(
    host="localhost",
    user="admin_gamba",  # Cambia esto si tienes otro usuario
    password="User$$123456",  # Añade la contraseña si la tienes
    database="gamba_db"  # Cambia esto al nombre de tu base de datos
)

# Ejecutar el script SQL
def actualizar_horas():
    try:
        with db.cursor() as cursor:
            # Obtener la hora actual en la zona horaria de Miami
            miami_tz = pytz.timezone('America/New_York')
            ahora = datetime.now(miami_tz)
            
            # Verificar si la hora actual está dentro del rango de trabajo
            if ahora.time() >= datetime.strptime('07:00:00', '%H:%M:%S').time() and ahora.time() < datetime.strptime('00:00:00', '%H:%M:%S').time():
                # Ejecutar el script SQL
                sql = "UPDATE maquinas SET tiempo_funcionamiento = tiempo_funcionamiento + 1"
                cursor.execute(sql)
                db.commit()
                print("Horas actualizadas.")
            else:
                print("Fuera del horario laboral.")
    except Exception as e:
        print(f"Error al actualizar las horas: {e}")

# Ejecutar la función
actualizar_horas()

# Cerrar la conexión a la base de datos
db.close()
# Llamada al script PHP para verificar y crear órdenes de trabajo
php_script_path = 'ordenseguimiento.php'  # Ajusta esta ruta según la ubicación del archivo PHP
subprocess.run(['php', php_script_path])
