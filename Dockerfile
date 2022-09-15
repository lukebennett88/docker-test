FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Bundle app source
COPY . .
RUN yarn build
EXPOSE 3000
CMD sh -c "yarn start"
