# Use an official MongoDB image as the base image
FROM mongo

# Set environment variables for MongoDB
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD mojahobe

# Copy the replica set configuration file to the container
COPY mongo-rs.conf /etc/mongo-rs.conf

# Start MongoDB with replica set configuration
CMD ["mongod", "--bind_ip_all", "--replSet", "rs0", "--config", "/etc/mongo-rs.conf"]
