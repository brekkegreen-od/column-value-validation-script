FROM jupyter/minimal-notebook
LABEL author="Brekke Green"

COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY ./ ./