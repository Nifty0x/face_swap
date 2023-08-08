FROM python:3.11
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y libgl1-mesa-glx
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "run.py"]
