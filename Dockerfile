FROM kuzmenkov/amrcloudbasic:latest

RUN sudo R -e "install.packages('stringi', repos='https://cran.r-project.org/')" \
&& R CMD javareconf \
&& R -e "install.packages('rJava', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('mailR', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('anytime', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('fst', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('shinytoastr', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('readxl', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('readr', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('shinyBS', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('future', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('uuid', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('fs', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('lubridate', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('curl', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('shinyWidgets', repos='https://cran.r-project.org/')" \
#&& R -e "install.packages('devtools', repos='https://cran.r-project.org/')" \
#&& sudo su - -c "R -e \"options(unzip = 'internal'); devtools::install_github('dreamRs/shinyWidgets')\"" \
&& R -e "install.packages('stringr', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('tools', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('rjson', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('htmlwidgets', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('utils', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('DT', repos='https://cran.r-project.org/')" \
#&& sudo su - -c "R -e \"options(unzip = 'internal'); devtools::install_github('rstudio/DT')\"" \
# options(unzip = 'internal'); 
&& R -e "install.packages('promises', repos='https://cran.r-project.org/')" \
&& sudo su - -c "R -e \"install.packages(c('raster', 'sp', 'viridis', 'leaflet', 'leaflet.extras'), repos='https://cran.r-project.org/')\"" \
#&& sudo su - -c "R -e \"options(unzip = 'internal'); remotes::install_github('bhaskarvk/leaflet.extras')\"" \
&& R -e "install.packages('ggrepel', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('leaflet.minicharts', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('rhandsontable', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('ipc', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('shinyAce', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('RSQLite', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('glue', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('highcharter', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('shinycssloaders', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('fmsb', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('visNetwork', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('igraph', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('formattable', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('mapview', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('timevis', repos='https://cran.r-project.org/')" \
#&& sudo su - -c "R -e \"options(unzip = 'internal'); remotes::install_github('daattali/timevis')\""\
&& sudo su - -c "R -e \"remotes::install_git('https://github.com/kuzmenkov111/shinyparticles')\""\
&& R -e "install.packages('officer', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('flextable', repos='https://cran.r-project.org/')" \
&& sudo su - -c "R -e \"remotes::install_git('https://github.com/kuzmenkov111/qrencoder')\"" \
&& R -e "install.packages(c('rgdal'), repos='https://cran.r-project.org/')" \
&& R -e "install.packages('anytime', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('configr', repos='https://cran.r-project.org/')" \
&& sudo su - -c "R -e \"remotes::install_git('https://github.com/kuzmenkov111/Ruchardet')\"" \
&& R -e "install.packages('GetoptLong', repos='https://cran.r-project.org/')" \
&& R -e "install.packages('qs', repos='https://cran.r-project.org/')"


EXPOSE 3838
#RUN mkdir /home/docker/data \
#&& mkdir /home/docker/app

VOLUME /home/docker/data
VOLUME /home/docker/app
VOLUME /home/docker/cashe

EXPOSE 3838

CMD ["R", "-e shiny::runApp('/home/docker/app',port=3838,host='0.0.0.0')"]
