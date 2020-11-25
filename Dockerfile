FROM node:alpine3.12

WORKDIR /var/lib/html/wapp

RUN npx -y create-react-app ./

COPY . .

RUN rm package-lock.json && \
    rm -r node_modules && \
    npm install
    
EXPOSE 3000

ENTRYPOINT npm start