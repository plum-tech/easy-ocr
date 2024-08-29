FROM python:3.12-slim AS base

# Stage 1: Build environment (discarded after building)
FROM base AS builder

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Running environment (slim image)
FROM builder as app

WORKDIR /app

COPY --from=builder /app/ ./

# Copy rest of the application code
COPY . .

EXPOSE 8000

CMD ["fastapi", "run", "main.py"]
