# pull official base image
FROM node:14-alpine

# set working directory
WORKDIR /Pivotal-CRM-React-Redux-project


# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# add app
COPY . ./

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm i -d



# start app
CMD ["npm", "run" , "start"]

