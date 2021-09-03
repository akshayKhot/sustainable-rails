# Sustainable Rails - Widgets

### Setup

1. Pull down the app from version control
2. Run `bin/setup`

### Run the app

1. Run `bin/run`

### Tests and CI

1. Run `bin/ci` to run all tests and checks for the app
2. `tmp/test.log` will use the production logging format and *not* the development one. 

### Production

* All runtime configuration should be supplied via UNIX environment variables.
* Rails logging uses lograge. Run `bin/setup help` for more details on how to set it up. 