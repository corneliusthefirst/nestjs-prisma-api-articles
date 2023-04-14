FROM node:18.15-alpine as common-build-stage


WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
RUN npm i -g @nestjs/cli

COPY . .

EXPOSE 3000

# Development build stage
FROM common-build-stage as development-build-stage

ENV NODE_ENV=development

CMD ["npm", "run", "start:dev"]

# Production build stage
FROM common-build-stage as production-build-stage

ENV NODE_ENV production

CMD ["npm", "run", "start:prod"]