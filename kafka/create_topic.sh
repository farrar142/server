 docker exec kafka-1 kafka-topics --create --topic $1 --bootstrap-server kafka-1:9092 --replication-factor 1 --partitions 1