FROM python:3.6.12-buster

#making a working directory for application
WORKING \app
#install dependencies
COPY requirements.txt .

#running the requirements.txt file
RUN pip install -r requirements.txt

#copy source code
COPY \app .

#run application
CMD ["python","app.py"]
