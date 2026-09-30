FROM python:3.12-alpine AS base
WORKDIR /app
RUN adduser -D -u 10001 appuser \
 && apk add --no-cache --virtual .build-deps gcc musl-dev \
 && pip install --no-cache-dir flask==3.0.3 \
 && apk del .build-deps
COPY app/app.py .
USER appuser
EXPOSE 8080
CMD ["python", "app.py"]
