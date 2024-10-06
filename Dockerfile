FROM ubuntu:latest
MAINTAINER Duy Thanh "thanhb2108121@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv /flask_app/venv
RUN /flask_app/venv/bin/pip install --upgrade pip
RUN /flask_app/venv/bin/pip install -r requirements.txt
ENV PATH="/flask_app/venv/bin:$PATH"
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
