FROM python:3.6.5

COPY ./newsAnalysis /app/newsAnalysis
COPY ./requirements.txt /app/requirements.txt
COPY ./run.py /app/run.py
COPY ./projector /app/projector

WORKDIR /app
RUN pip install -r requirements.txt
RUN python -m nltk.downloader punkt

CMD export DISPLAY:0
CMD python run.py
