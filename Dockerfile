FROM balenalib/raspberrypi3-64-debian-python:latest

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

EXPOSE 443

ENV buildTag=1.0


CMD streamlit run app.py --server.address=0.0.0.0 --server.port=443
#ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8599", "--server.address=0.0.0.0"]