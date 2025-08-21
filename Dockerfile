FROM node:18-alpine3.17

WORKDIR /app

COPY . .

RUN npm install


ENV MONGO_URI='mongodb+srv://supercluster.d83jj.mongodb.net/superData'
ENV MONGO_USERNAME=superuser
ENV MONGO_PASSWORD=SuperPassword

EXPOSE 3000

CMD [ "npm", "start" ]