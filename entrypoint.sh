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

echo "::set-output name=results::AI name: " "$ARG_AI_NAME";

LS=$(ls -la .);
echo "$LS";


LS=$(ls -la dicewars);
echo "$LS";

# run evaluation
PYTHONPATH=dicewars/scripts:dicewars cd dicewars && ../evaluate.py --user-ai-name "$ARG_AI_NAME" --game-size 4 --nb-boards 128
