FROM python:3.5.2

# Set environment variables
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /
# Set work directory.
RUN mkdir /code
WORKDIR /code

# Copy project code.
COPY . /code/

RUN pip3 install -r /requirements.txt
