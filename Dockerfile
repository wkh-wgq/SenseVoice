# syntax=docker/dockerfile:1
FROM python:3.11-slim
WORKDIR /app/SenseVoice
COPY . .
RUN apt-get update \
  && apt-get install -y --no-install-recommends ffmpeg \
  && rm -rf /var/lib/apt/lists /var/cache/apt/archives \
  && pip install --no-cache-dir -r requirements.txt
EXPOSE 7860
CMD [ "python", "webui.py" ]
# docker run -d --name voice_demo-1 -p 7860:7860 voice_demo:v1