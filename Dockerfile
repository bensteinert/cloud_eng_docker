FROM alpine
LABEL Description="This image is used to start the Cloud Engineer URL \'decryptor\'  executable" Vendor="comSysto GmbH" Version="0.1"
ADD https://raw.githubusercontent.com/comsysto/cloud_eng_code/master/hello /opt/
ADD https://raw.githubusercontent.com/comsysto/cloud_eng_code/master/decode.js /opt/
RUN chmod +x /opt/hello
RUN apk --update add nodejs
ENTRYPOINT /opt/hello `node /opt/decode.js`