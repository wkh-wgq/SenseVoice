# syntax=docker/dockerfile:1
FROM python:3.11-slim
WORKDIR /app/SenseVoice
COPY . .
RUN apt-get update && echo 'y' | apt-get install ffmpeg
RUN pip install -r requirements.txt
EXPOSE 7860
CMD [ "python", "webui.py" ]
# docker run -d --name voice_demo-1 -p 7860:7860 voice_demo:v1