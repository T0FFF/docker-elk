FROM logstash:latest

RUN apt-get update && apt-get install -y netcat vim apache2

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN echo "Europe/Paris" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

CMD ["/tmp/entrypoint.sh"]
