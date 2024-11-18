# syntax=docker/dockerfile:1
FROM python:3.11
WORKDIR /app/SenseVoice
COPY . .
RUN pip install -r requirements.txt
EXPOSE 7860
CMD [ "python", "webui.py" ]