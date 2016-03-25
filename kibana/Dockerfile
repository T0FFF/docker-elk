FROM kibana:latest

RUN apt-get update && apt-get install -y netcat

RUN echo "Europe/Paris" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata


COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

RUN kibana plugin --install elastic/sense

CMD ["/tmp/entrypoint.sh"]
