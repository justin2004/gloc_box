FROM debian

RUN apt-get update && apt-get install -y git perl make libfile-homedir-perl libgtk2-perl libhtml-parser-perl libhttp-tiny-perl libxml-simple-perl libio-socket-ssl-perl libnet-ssleay-perl
RUN git clone https://github.com/jvolkening/gloc.git
#RUN apt-get install -y x11-apps

WORKDIR /gloc

RUN ls -la
RUN perl Makefile.PL && make
CMD ./gloc

