FROM openresty/openresty:1.15.8.2-4-alpine-nosse42
RUN apk add --update alpine-sdk linux-headers python3 python3-dev
RUN pip3 install --upgrade pip
RUN pip install boto3 uwsgi flask
RUN mkdir /app
WORKDIR /app
ADD ./app/ /app
ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
ADD start.sh /tmp/start.sh
RUN chmod +x /tmp/start.sh
CMD /tmp/start.sh
