FROM node:12.22.8-stretch
RUN mkdir -p /opt/app-root
WORKDIR /opt/app-root
COPY . . 
RUN npm install 
EXPOSE 3000
CMD ["node", "./app.js"]
