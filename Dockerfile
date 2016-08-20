FROM perl:5

RUN mkdir -p /usr/src && cd /usr/src && git clone https://github.com/sisimai/p5-Sisimai.git && cd ./p5-Sisimai && make install-from-local

CMD perl -MSisimai -lE 'print Sisimai->dump(shift)' /data