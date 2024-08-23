#!/bin/bash
rm README.md

FILECOUNT="$(ls -l ./emojis | egrep -c '^-')"

echo '# fave-slackmojis' >> README.md
echo -e "My favorite emojis to use in a Slack setting, saved here to make sure I can access them in future Slacks. Now with $FILECOUNT emojis!\n" >> README.md

echo 'This README was generated using `./generate-readme.sh`' >> README.md

echo '| Emoji preview | Emoji name |' >> README.md
echo '| ------------- | ------------- |' >> README.md

rm -f ./emojis/*:Zone.Identifier
for filename in ./emojis/**; do
  name=${filename##*\/}
  echo "| <img src='$filename'/> | $name |" >> README.md
done
