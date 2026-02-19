FROM node:18

# Install git automatically
RUN apt-get update && apt-get install -y git

WORKDIR /simple-node-js-react-npm-app

# Clone your repo
RUN https://github.com/islanderTron/simple-node-js-react-npm-app.git

# Install dependencies
RUN npm install

CMD ["node", "index.js"]
