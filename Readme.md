## Load SQL Files into the PostgreSQL Docker Container

If the PostgreSQL container is already running, you can execute SQL files from your local machine into the database using `docker exec`.

### Run schema (create tables)

```bash
docker exec -i postgres-dev psql -U postgres -d git_project < schema.sql
```

### Run seed data (insert sample data)

```bash
docker exec -i postgres-dev psql -U postgres -d git_project < seed.sql
```

### Explanation

* `docker exec -i postgres-dev` → run a command inside the running container
* `psql` → PostgreSQL command line client
* `-U postgres` → database user
* `-d git_project` → database name
* `< seed.sql` → pipe the local SQL file into the container

### Example workflow

1. Start the PostgreSQL container
2. Create the database schema

```bash
docker exec -i postgres-dev psql -U postgres -d git_project < schema.sql
```

3. Insert sample data

```bash
docker exec -i postgres-dev psql -U postgres -d git_project < seed.sql
```

After running these commands, the database will contain all tables and seed data.
