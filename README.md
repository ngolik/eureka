# Eureka Service Registry

This repository contains the code for setting up a Eureka Service Registry, a component of the Netflix Eureka service discovery system.

## Overview

Eureka is a service registry used in a microservices architecture to enable service discovery. It allows services to find and communicate with each other without hardcoding their locations.

## Getting Started

### Prerequisites

- Java Development Kit (JDK) installed
- Maven build tool

### Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/ngolik/eureka.git
    ```

2. Navigate to the project directory:

    ```bash
    cd eureka-service-registry
    ```

3. Build the project:

    ```bash
    mvn clean install
    ```

4. Run the Eureka server:

    ```bash
    java -jar target/eureka-service-registry-<version>.jar
    ```

   Replace `<version>` with the actual version number.

5. Access the Eureka dashboard:

   Open your browser and go to [http://localhost:8761](http://localhost:8761).

## Configuration

You can configure the Eureka server by modifying the `application.properties` file.

- Example Configuration:

    ```properties
    server.port=8761
    eureka.client.register-with-eureka=false
    eureka.client.fetch-registry=false
    ```

## Usage

Once the Eureka server is running, other microservices can register with it to enable service discovery.

### Registering a Service

To register a service with Eureka, include the following properties in the service's `application.properties` file:

```properties
eureka.client.service-url.default-zone=http://localhost:8761/eureka
