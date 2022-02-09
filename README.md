# docker-performance-test-db

This reposiorty is created to test database performase with Docker for Mac.

## Requirements
Docker for Mac installed and running

## How to test/benchmark

For convenienve I've made two shell-scripts to make it easier to test.
First you have to start and wait for the PostgreSQL to initialize and be ready for connections.

### Start the server

Start the server by running `./start-server.sh`.

### Start the import

You can run a single import by using the script `./test-import.sh`.

I recommend running the import multiple times to benchmark the numbers.
This can be achieved by using a tool such as `hyperfine`.

I've used the following command in my testing: `hyperfine './test-import.sh' --show-output --ignore-failure`

## References

The supplied datadump was retrieved from a GitHub open-source project.
- [dump-08-11-21.dump](https://github.com/prantoamt/dockerized_psql/blob/225c68b289fba84bc881049ff518816706e7d10d/backups/dump-08-11-21.dump)