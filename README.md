# Vercel structurizr-site-generatr demo

This is a demo of deploying [structurizr-site-generator](https://github.com/avisi-cloud/structurizr-site-generatr) to Vercel.

## Configuration

This demo requires a custom install and build command

Build command:

```
structurizr-site-generatr generate-site -w workspace.dsl
```

Output directory:

```
build/site
```

Install command:

```
./vercel-install.sh
```

### Customising the `structurizr-site-generatr` version

This demo uses v1.1.14 of `structurizr-site-generatr` by default. To use a different version, update the `vercel-install.sh` script to use the desired version.
