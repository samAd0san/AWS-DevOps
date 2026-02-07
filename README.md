### Initialize hybrid react native app along with expo and cli - runs on a single terminal
```bash
npx create-expo-app@latest HybridApp --template bare-minimum
cd HybridApp
npm install
```

### Add kafka container on port 9092 (default)
```bash
docker run -d -p 9092:9092 apache/kafka:latest
```

### Add PostgreSQL container on port 5432
```bash
docker run --name postgres-container -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=postgres -p 5432:5432 -d postgres:latest
```

### Add Neo4j container 
```bash
docker run --name=neo4j -p 7474:7474 -p 7687:7687 -e NEO4J_AUTH=neo4j/Samad@123 neo4j:latest
```

### Add Redis container
```bash
docker run -d --name redis-single-node -p 6379:6379 redis:latest --cluster-enabled yes --cluster-config-file nodes.conf --cluster-node-timeout 5000 --appendonly yes\n
```
