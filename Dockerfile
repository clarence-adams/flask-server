# base image
FROM python:3.10

# set working directory
WORKDIR /code

# copy dependencies
COPY requirements.txt .

# install Dependencies
RUN pip install -r requirements.txt

# copy files to working directory
COPY src/ .

EXPOSE 5000

# run container on start
CMD [ "python", "./server.py" ]

