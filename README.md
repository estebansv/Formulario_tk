# Formulario de Entrada de Datos en Excel

Este proyecto es una aplicación de escritorio simple desarrollada con Python y la biblioteca `tkinter` que permite a los usuarios ingresar y guardar datos en un archivo de Excel. La aplicación es útil para capturar información básica como nombre, edad, correo electrónico, teléfono y dirección, y almacenarla de manera estructurada en un archivo llamado `datos.xlsx`.

## Características

- **Interfaz Gráfica de Usuario (GUI):** Utiliza `tkinter` para proporcionar una interfaz amigable y fácil de usar.
- **Validación de Datos:** Incluye validaciones para asegurar que los campos se llenen correctamente antes de guardar los datos.
  - **Campos Obligatorios:** Todos los campos deben ser completados.
  - **Formato de Email:** Se verifica que el email tenga un formato válido.
  - **Datos Numéricos:** Las edades y números de teléfono se validan para asegurarse de que sean numéricos.
- **Almacenamiento en Excel:** Los datos se guardan en un archivo de Excel `datos.xlsx` usando `openpyxl`.
- **Recuperación de Datos:** Si el archivo `datos.xlsx` ya existe, los nuevos datos se añaden a la hoja existente.

## Requisitos

- Python 3.x
- Paquetes necesarios (instalables via pip):
  - `tkinter`
  - `openpyxl`

## Instalación

Sigue estos pasos para configurar y ejecutar la aplicación:

1. **Clona el Repositorio:**

   ```bash
   git clone <URL_del_repositorio>
   cd <nombre_del_directorio>


   Instala las Dependencias:

Ejecuta el siguiente comando para instalar el paquete openpyxl:

bash
Copy code
pip install openpyxl==3.1.2
Nota: No es necesario instalar tkinter por separado ya que viene incluido con la instalación estándar de Python en Windows y macOS. Para Linux, puede que necesites instalar tkinter manualmente usando tu gestor de paquetes.

bash
Copy code
sudo apt-get install python3-tk  # En Ubuntu/Debian
Ejecuta la Aplicación:

Inicia el programa ejecutando el siguiente comando:

bash
Copy code
python main.py
Uso
Ingresa los Datos:

Abre la aplicación.
Rellena los campos de Nombre, Edad, Email, Teléfono y Dirección.
Haz clic en el botón Guardar para almacenar la información.
Validación de Entrada:

Asegúrate de completar todos los campos. Si algún campo está vacío, recibirás un aviso.
Ingresa un correo electrónico válido. El sistema verificará el formato y alertará si es incorrecto.
La Edad y el Teléfono deben ser numéricos. Si se ingresan caracteres no numéricos, se mostrará una advertencia.
Archivo de Salida:

Los datos se guardarán en datos.xlsx en el mismo directorio donde se encuentra el script.
Si el archivo ya existe, los nuevos datos se agregarán al final.
Capturas de Pantalla
Ventana Principal

Mensaje de Advertencia

Estructura del Código
Aquí tienes una descripción breve de la estructura del código:

Librerías Importadas:

tkinter: Para la interfaz gráfica.
openpyxl: Para manipular archivos de Excel.
re: Para validaciones de expresiones regulares en emails.
os: Para verificar la existencia de archivos.
Comprobación de Archivo:

Si el archivo datos.xlsx existe, se abre y se carga.
Si no, se crea un nuevo archivo con una hoja activa y se añade un encabezado.
Función guardar_datos():

Captura los valores ingresados por el usuario.
Valida los campos.
Agrega los datos a la hoja de Excel y guarda el archivo.
Limpia las entradas después de guardar.
Configuración de la Ventana:

Configuración de estilo de la ventana principal y los widgets.
Configuración de botones y disposición de la cuadrícula.
Personalización
Si deseas personalizar el programa, puedes considerar las siguientes opciones:

Cambiar el Estilo de la Interfaz:

Modifica los colores, fuentes y estilos ajustando los valores en label_style y entry_style.
Ampliar la Validación:

Añade validaciones adicionales para otros tipos de campos o condiciones específicas.
Agregar Campos Adicionales:

Puedes añadir más campos al formulario modificando la interfaz de usuario y ajustando la lógica de almacenamiento en Excel.
