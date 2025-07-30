# Claude Code Container

Docker container for running Claude CLI.

## Usage

### Basic Usage

```bash
# Build
docker build -t claude-code .

# Run
docker run -it claude-code
```

### Google Cloud Vertex AI Usage

```bash
docker run \
    -it \
    -e GOOGLE_APPLICATION_CREDENTIALS=/credentials.json \
    -e CLOUD_ML_REGION="us-east5" \
    -e CLAUDE_CODE_USE_VERTEX="1" \
    -e ANTHROPIC_VERTEX_PROJECT_ID=<your-project-id> \
    -e ANTHROPIC_MODEL=<claude-sonnet-4...> \
    -e ANTHROPIC_SMALL_FAST_MODEL=<claude-sonnet-4...> \
    -v /home/user/credentials.json:/credentials.json \
    -v /home/user/project:/home/claude/app \
    docker.io/sshnaidm/claude
```

## Google Cloud Credentials

To use with Vertex AI, you need a service account key:

1. Create service account: [gcloud auth docs](https://cloud.google.com/docs/authentication/getting-started)
2. Download JSON key: [service account keys](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
3. Mount as `/credentials.json` in container

## Container Details

- Base: Fedora 42
- User: claude (non-root)
- Working dir: /home/claude/app
- Binary: /usr/local/bin/claude

## License

Apache 2.0
