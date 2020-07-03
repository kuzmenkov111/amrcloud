FROM kuzmenkov/amrcloudbasic:4.1

RUN sudo R -e "install.packages('stringi')" \
&& R -e "install.packages('mailR')" \
&& R -e "install.packages('fst')" \
&& R -e "install.packages('shinytoastr')" \
&& R -e "install.packages('readxl')" \
&& R -e "install.packages('readr')" \
&& R -e "install.packages('shinyBS')" \
&& R -e "install.packages('svglite')" \
&& R -e "install.packages('future')" \
&& R -e "install.packages('uuid')" \
&& R -e "install.packages('fs')" \
&& R -e "install.packages('lubridate')" \
&& R -e "install.packages('curl')" \
&& R -e "install.packages('shinyWidgets')" \
&& R -e "install.packages('stringr')" \
&& R -e "install.packages('tools')" \
&& R -e "install.packages('rjson')" \
&& R -e "install.packages('htmlwidgets')" \
&& R -e "install.packages('utils')" \
&& R -e "install.packages('DT')" \
&& R -e "install.packages('promises')" \
&& R -e "install.packages('raster')" \
&& R -e "install.packages('sp')" \
&& R -e "install.packages('viridis')" \
&& R -e "install.packages('leaflet')" \
&& R -e "install.packages('leaflet.extras')" \
&& R -e "install.packages('ggrepel')" \
&& R -e "install.packages('leaflet.minicharts')" \
&& R -e "install.packages('rhandsontable')" \
&& R -e "install.packages('ipc')" \
&& R -e "install.packages('shinyAce')" \
&& R -e "install.packages('RSQLite')" \
&& R -e "install.packages('glue')" \
&& R -e "install.packages('highcharter')" \
&& R -e "install.packages('shinycssloaders')" \
&& R -e "install.packages('fmsb')" \
&& R -e "install.packages('visNetwork')" \
&& R -e "install.packages('igraph')" \
&& R -e "install.packages('formattable')" \
&& R -e "install.packages('mapview')" \
&& R -e "install.packages('timevis')" \
&& R -e "install.packages('shinyparticles')" \
&& R -e "install.packages('officer')" \
&& R -e "install.packages('flextable')" \
&& R -e "install.packages('qrencoder')" \
&& R -e "install.packages(c('rgdal'))" \
&& R -e "install.packages('anytime')" \
&& R -e "install.packages('configr')" \
&& R -e "install.packages('Ruchardet')" \
&& R -e "install.packages('GetoptLong')" \
&& R -e "install.packages('qs')" \
&& R -e "install.packages('leafsync')" \
&& R -e "install.packages('GAlogger')" \
&& R -e "install.packages('shinybusy')" \
&& R -e "install.packages('waiter')" \
&& R -e "install.packages('leaflet.extras2')" 
VOLUME /home/dockerapp/data
VOLUME /home/dockerapp/app
VOLUME /home/dockerapp/cashe
VOLUME /home/dockerapp/deleted
EXPOSE 3838
USER dockerapp
CMD ["R", "-e shiny::runApp('/home/dockerapp/app',port=3838,host='0.0.0.0')"]
