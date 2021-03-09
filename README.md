# codelabs
=======
# Dynatrace Performance Clinics codelabs

A site for hosting Dynatrace  codelabs.
Adapted from [google code labs](https://github.com/googlecodelabs/tools/tree/master/site)

## Create a tutorial

create a new folder under **codelabs/markdown**.
Within this directory, create a **README.md** file. This is where you will write
the tutorial.

## Development

### Prerequisites 

Make sure to have the Codelabs command line tool [claat](https://github.com/googlecodelabs/tools/tree/master/claat) installed locally.  
The easiest way to get it is having go installed and executing.

```
go get github.com/googlecodelabs/tools/claat
```

You should then be able to run `claat help` from your terminal.

### Serve

To serve the site in dev mode, run `gulp serve`. This will compile all the views and
codelabs into the `build/` directory and start a web server to serve that content.

```text
$ gulp serve
```

The output will include the address where the server is running
(http://localhost:8026 by default).

You can also serve the completely compiled and minified (prod) version with the
`serve:dist` command. Always run this before publishing, as it will show you an
replica of what will appear on staging/production.

```text
$ gulp serve:dist
```

## Updating the published Codelabs

As of now, your changes will be visible only if you manually push the image and redeploy the application.

### Prerequisites 

Make sure the following prerequisites are met.

- Docker installed locally
- kubectl installed locally, pointing to the Kubernetes cluster that runs Codelabs
- Permissions to push to Harbor

### Executing the update

The `deploy.sh` script, pushes the image and redeploys the application.

