# Usa Python 3.11
FROM python:3.11-slim

# Establece la carpeta de trabajo
WORKDIR /app

# Copia archivos al contenedor
COPY . .

# Instala dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 8080 (requerido por Cloud Run)
EXPOSE 8080

# Comando que ejecutará la app
CMD ["uvicorn", "playground:app", "--host", "0.0.0.0", "--port", "8080"]
