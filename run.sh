#!/bin/bash

docker run \
	-it \
	-e GOOGLE_APPLICATION_CREDENTIALS=/credentials.json \
	-e CLOUD_ML_REGION="us-east5" \
	-e CLAUDE_CODE_USE_VERTEX="1" \
	-e ANTHROPIC_VERTEX_PROJECT_ID=<your-project-id> \
	-e ANTHROPIC_MODEL=<claude-sonnet-4...> \
	-e ANTHROPIC_SMALL_FAST_MODEL=<claude-sonnet-4...> \
	-v /home/user/credentials.json:/credentials.json \
	-v /home/user/project:/home/claude/app docker.io/sshnaidm/claude

podman run \
	-it \
	-e GOOGLE_APPLICATION_CREDENTIALS=/credentials.json \
	-e CLOUD_ML_REGION="us-east5" \
	-e CLAUDE_CODE_USE_VERTEX="1" \
	-e ANTHROPIC_VERTEX_PROJECT_ID=<your-project-id> \
	-e ANTHROPIC_MODEL=<claude-sonnet-4...> \
	-e ANTHROPIC_SMALL_FAST_MODEL=<claude-sonnet-4...> \
	-v /home/user/credentials.json:/credentials.json \
	-v /home/user/project:/home/claude/app quay.io/sshnaidm1/claude
