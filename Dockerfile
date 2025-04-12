FROM python:3.9
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN echo "🚧 Installing requirements..." && \
    pip install --no-cache-dir --upgrade -r /code/requirements.txt && \
    echo "✅ Done installing requirements"
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html
RUN echo "✅ Copied app files"
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

