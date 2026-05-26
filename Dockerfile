# Image de base légère
FROM python:3.11-alpine

# Répertoire de travail
WORKDIR /app

# Copie et installation des dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code source
COPY src/ .

# Port exposé
EXPOSE 8080

# Commande de démarrage
CMD ["python", "app.py"]
