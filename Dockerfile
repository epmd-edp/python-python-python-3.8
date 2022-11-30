FROM public.ecr.aws/docker/library/python:3.8.13-slim
WORKDIR /usr/src/app
EXPOSE 8080
COPY . .
RUN python setup.py install
CMD ["python3", "./server.py"]
