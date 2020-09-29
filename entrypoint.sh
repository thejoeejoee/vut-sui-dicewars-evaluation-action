#!/usr/bin/env sh


AI_PATH=$(ls -la "$GITHUB_WORKSPACE");

echo "::set-output name=results::Entrypoint result: " "$AI_PATH";