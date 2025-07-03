# Don't Remove Credit @RnpUpdate
# Subscribe YouTube Channel For Amazing Bot @Rnp_Update
# Ask Doubt on telegram @MrRnp

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /RNP-File-Store
WORKDIR /RNP-File-Store
COPY . /RNP-File-Store
CMD ["python", "bot.py"]
