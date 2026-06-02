FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt requirements.txt
COPY app.py app.py
RUN groupadd -r pythongfg && \
    useradd -r -g pythongfg pythongfg && \
    pip install -r requirements.txt && \
    chown -R pythongfg:pythongfg /app


EXPOSE 80
USER pythongfg
CMD ["python", "app.py"]




