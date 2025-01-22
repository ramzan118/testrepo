FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt  # Changed from direct install
COPY app/app.py .  # Correct path to app.py
CMD ["python", "app.py"]
