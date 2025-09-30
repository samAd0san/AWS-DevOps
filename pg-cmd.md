## This file shows how to start PostgreSQL server - then go to PgAdmin and click on particular server to view the dbs

### 1. To List all the availabe servers in PostgreSQL (PgAdmin4)
```powershell
PS C:\WINDOWS\system32> Get-Service | Where-Object {$_.Name -like "postgresql*"}
>>

Status   Name               DisplayName
------   ----               -----------
Running  postgresql-x64-15  postgresql-x64-15
Running  postgresql-x64-17  postgresql-x64-17 - PostgreSQL Serv...
```

### 2. To start a particular server
- **PG15 (port 5433):**
```powershell
PS C:\WINDOWS\system32> Start-Service -Name "postgresql-x64-15"
```

- **PG17 (default port 5432):**
```powershell
PS C:\WINDOWS\system32> Start-Service -Name "postgresql-x64-17"
```

### 3. To check whether it is running or not
```powershell
PS C:\WINDOWS\system32> Get-Service -Name "postgresql-x64-15"

Status   Name               DisplayName
------   ----               -----------
Running  postgresql-x64-15  postgresql-x64-15


PS C:\WINDOWS\system32> Get-Service -Name "postgresql-x64-17"
>>

Status   Name               DisplayName
------   ----               -----------
Running  postgresql-x64-17  postgresql-x64-17 - PostgreSQL Serv...
```

### 4. To stop a particular server
- **PG15 (port 5433):**
```powershell
PS C:\WINDOWS\system32> Stop-Service -Name "postgresql-x64-15"
```

- **PG17 (default port 5432):**
```powershell
PS C:\WINDOWS\system32> Stop-Service -Name "postgresql-x64-17"
```
