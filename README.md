# PostgreSQL + pgAdmin Local Setup

A Docker-based local PostgreSQL database with pgAdmin management interface.

## Prerequisites

- Docker and Docker Compose installed on your system

## Quick Start

1. **Start the services:**
   ```bash
   docker-compose up -d
   ```

2. **Access pgAdmin:**
   - Open your browser and go to: http://localhost:5050
   - Login with:
     - Email: `admin@admin.com`
     - Password: `admin123`
  - Alternatively, set a different one in ```docker-compose.yml```

3. **Connect to PostgreSQL in pgAdmin:**
   - Click "Add New Server"
   - General tab:
     - Name: `Local PostgreSQL` (or any name you prefer)
   - Connection tab:
     - Host: `postgres` (this is the service name in docker-compose)
     - Port: `5432`
     - Username: `admin`
     - Password: `admin123`
     - Database: `mydb`
   - Save

## Default Credentials

### PostgreSQL
- Host: `localhost`
- Port: `5432`
- Database: `mydb`
- Username: `admin`
- Password: `admin123`

### pgAdmin
- URL: http://localhost:5050
- Email: `admin@admin.com`
- Password: `admin123`

## Useful Commands

```bash
# Start services
docker-compose up -d

# Stop services
docker-compose down

# Stop services and remove volumes (deletes all data)
docker-compose down -v

# View logs
docker-compose logs -f

# Access PostgreSQL CLI directly
docker exec -it local_postgres psql -U admin -d mydb
```

## Connecting from Applications

Use these connection parameters in your applications:

```
Host: localhost
Port: 5432
Database: mydb
Username: admin
Password: admin123
```

**Connection string example:**
```
postgresql://admin:admin123@localhost:5432/mydb
```

## Security Note

The default credentials are for local development only. Change them for any production use!

## Customization

Edit the `docker-compose.yml` file to:
- Change default credentials
- Modify port mappings
- Add additional databases
- Configure PostgreSQL settings
