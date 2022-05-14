# Get started with Prisma and SQLite
## Author: Vangelis Tripolitakis
## https://v.trp.gr - vtripolitakis@me.com - 14/05/2022

## What's this?
This small repo gets you started with an SQLite database and Prisma/Typescript. In order to advance things fast, an [SQLite](https://github.com/jpwhite3/northwind-SQLite3) version of the Northwind database(supplied by MS Access back in the time) is supplied in the `db/mydb.sqlite` folder.

## Instructions

- Run `yarn install`
- Run `yarn prisma init`
- Copy `.env.example` to `.env` to use the simple sqlite database on `db` folder
- Edit `prisma/schema.prisma` and make sure the provider is `"sqlite"`

```
datasource db {
  provider = "sqlite"
  url      = env("DATABASE_URL")
}
```
- Use introspection to populate the `prisma.schema` and issue: `yarn prisma db pull`
- Run `yarn prisma generate` to generate the `@prisma/client` for this demo application

## What I can do next?

- Either run `yarn tsc` and then `node dist/` to see the Employees table on the console. 
- Or Run `yarn prisma studio` to start Prisma Studio and check the supplied database
-- Play around and have fun with the `src/index.ts`