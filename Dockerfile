# Use an official Swift runtime as a parent image
FROM swift:5.9.2

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Compile the Swift code
RUN swift build

# Run the application
CMD ["swift", "run", "mail-collect"]
