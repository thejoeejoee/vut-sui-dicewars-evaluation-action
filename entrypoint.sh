#!/usr/bin/env sh


AI_PATH=$(ls -la "$GITHUB_WORKSPACE"/"$1"/);

echo "::set-output name=results::Entrypoint result: " "$AI_PATH";