FROM amazonlinux
RUN yum upgrade && \
    yum install -y git nodejs
RUN git clone https://github.com/durgaprasaduniq/nodejs-app-mss.git
WORKDIR /nodejs-app-mss
RUN npm install && \
     npm install -g pm2 
EXPOSE 9981
CMD ["pm2-runtime","app.js"]`

