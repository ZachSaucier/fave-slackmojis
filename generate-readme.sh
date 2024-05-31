#!/bin/bash
rm README.md

echo '# fave-slackmojis' >> README.md
echo 'My favorite emojis to use in a Slack setting, saved here to make sure I can access them in future Slacks.' >> README.md

echo 'This README was generated using `./generate-readme.sh`' >> README.md

echo '| Emoji preview | Emoji name |' >> README.md
echo '| ------------- | ------------- |' >> README.md
for filename in ./emojis/**; do
  name=${filename##*\/}
  echo "| <img src='$filename'/> | $name |" >> README.md
done

rm emojis/*.Identifier
