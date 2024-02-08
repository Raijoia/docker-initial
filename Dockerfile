FROM node:14
WORKDIR /app
ARG PORT_BUILD=6000
ENV PORT=$PORT_BUILD
EXPOSE $PORT_BUILD
COPY . /app
RUN npm install
ENTRYPOINT npm start  

# build docker 
# docker build -t raijoia/start-docker:1.0 .

# iniciando a imagem
# docker run  -d -p 8080:3000 raijoia/start-docker:1.0