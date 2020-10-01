#!/usr/bin/env sh

# arguments from GH action
ARG_AI_NAME=$1;
ARG_AI_PATH=$2;

rm -rf dicewars && git clone https://github.com/ibenes/dicewars.git dicewars;

# target path to copy AI
TARGET_AI_PATH="dicewars/dicewars/ai/";

# absolute path to AI
AI_FULL_PATH="$GITHUB_WORKSPACE"/"$ARG_AI_PATH""$ARG_AI_NAME";

# move AI to needed destination
cp -r "$AI_FULL_PATH" "$TARGET_AI_PATH";

# move eval script
cp /evaluate.py evaluate.py;

echo "::set-output name=results::AI name: " "$ARG_AI_NAME";

# run evaluation
export PYTHONPATH=scripts:.;

cd dicewars && ../evaluate.py --user-ai-name "$ARG_AI_NAME" --game-size 4 --nb-boards 128
