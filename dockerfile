# Usa una imagen oficial de Python como base
FROM python:3.11-slim

# Instala las dependencias necesarias para tkinter
RUN apt-get update && \
    apt-get install -y python3-tk && \
    rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias a la imagen
COPY requirements.txt .

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación a la imagen
COPY main.py .

# Copia el archivo Excel existente si es necesario
# COPY datos.xlsx .

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]
