FROM python:3.10-alpine

# Imposta la cartella di lavoro dentro il container
WORKDIR /usr/src/app

# Crea una pagina HTML di test all'avvio
RUN echo "<h1>Deploy Automatizzato di Test Funzionante!</h1>" > index.html

# Espone la porta interna del container
EXPOSE 80

# Avvia un server web super minimale nativo di Python sulla porta 80
CMD ["python", "-m", "http.server", "80"]
