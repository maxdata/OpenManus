FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y curl \
    && curl -LsSf https://astral.sh/uv/install.sh | sh \
    && uv sync

ENV PYTHONPATH=/app

CMD ["python", "main.py"]
