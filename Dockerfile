# base image
FROM python:3.10

# set working directory
WORKDIR /code

# copy dependencies
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy files to working directory
COPY src/ .

# exposes port 5000 so people outside of this container have access
EXPOSE 5000

# run container on start
CMD [ "python", "./server.py" ]

