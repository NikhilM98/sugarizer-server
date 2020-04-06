FROM node:latest

WORKDIR /opt
RUN git clone https://github.com/llaske/sugarizer
RUN git clone --single-branch --branch docker https://github.com/nikhilm98/sugarizer-server

WORKDIR /opt/sugarizer-server

RUN npm install --no-optional

EXPOSE 8080
EXPOSE 8039
CMD [ "npm", "run", "start" ]