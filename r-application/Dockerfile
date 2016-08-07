FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install r-base r-base-dev

RUN R -e 'install.packages("Rook", repos="http://cran.rstudio.org")'

ADD rook-app.R /app/rook-app.R
ADD run.R /app/run.R

EXPOSE 8080

WORKDIR /app

CMD Rscript /app/run.R