#!/bin/sh
	
# append jira id from 	 
COMMIT_FILE=$1
COMMIT_MSG=$(cat $1)
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
JIRA_ID=$(echo "$CURRENT_BRANCH" | grep -Eo "[A-Z0-9]{1,10}-?[A-Z0-9]+-\d+")

if [ ! -z "$JIRA_ID" ]; then
  echo "[$JIRA_ID] $COMMIT_MSG" > $COMMIT_FILE
  echo "JIRA ID '$JIRA_ID' prepended to commit message. (Use --no-verify to skip)"
fi	

# https://github.com/shyiko/ktlint pre-commit hook
export PATH=/usr/local/bin:$PATH
# git diff --name-only --cached --relative | grep '\.kt[s"]\?$' | xargs ktlint --relative .
# if [ $? -ne 0 ]; then exit 1; fi
git diff --name-only --cached --relative | grep '\.kt[s"]\?$' | xargs ktlint -F --relative .
if [ $? -ne 0 ]; then exit 1; else git add .; fi