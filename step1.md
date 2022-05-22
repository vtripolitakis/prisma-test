# Get started with Prisma and SQLite - Step 1 - Migrations
## Author: Vangelis Tripolitakis
## https://v.trp.gr - vtripolitakis@me.com - 22/05/2022

## What's this?
Today we'll cover migrations in Prisma. We'll create a couple of tables, add some data and
perform respective queries. We'll extend the current schema with clients and product reviews.

## Instructions

I suppose you've already read the instructions of step 0 [here](https://github.com/vtripolitakis/prisma-test#readme) and you've got some response from the hello-world-like example. 

- First we need to create an initial migration, so let's do it: `yarn prisma migrate dev --name initial-migration`. This will require you to delete existing data. For convenience, I've already supplied a dump in the `prisma` folder, named `mydb_initial.sql`. 
- Run `cat db/mydb_initial.sql | sqlite3 ./db/mydb.sqlite` to reimport data.
- Now let's add the `Clients` table. Add this to the `prisma/schema.prisma` file:

```
model Client {
  Id           Int     @id @default(autoincrement())
  ClientName String?
  ClientSurname  String?
}
```
- Run `yarn prisma generate` to generate the `@prisma/client` for this demo application

## What I can do next?

- Either run `yarn tsc` and then `node dist/` to see the Employees table on the console. 
- Or Run `yarn prisma studio` to start Prisma Studio and check the supplied database
-- Play around and have fun with the `src/index.ts`