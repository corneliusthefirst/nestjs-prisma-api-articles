
## Description

A simple API using [Nest](https://github.com/nestjs/nest) and [Prisma](https://www.prisma.io/) for managing database operation & providing endpoints. Full implementation from database migration to E2E testing using [Jest](https://jestjs.io/).

## Installation

```bash
npm install
```

## Running the app

Start local database using docker :

```bash
# postgres 15.2 alpine
$ docker compose up -d
```

Then start the app. Take care if you edit `.env` file or `docker-compose.yml` to point to your local postgresql instance using your own credentials. You should first edit the `.env` file to reflect those changes. Anyway, if you're using the default one, these operations are not needed.

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## License

[MIT licensed](LICENSE).
