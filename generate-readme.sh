#!/bin/bash
rm README.md

echo '# fave-slackmojis' >> README.md
echo -e 'My favorite emojis to use in a Slack setting, saved here to make sure I can access them in future Slacks.\n' >> README.md

echo 'This README was generated using `./generate-readme.sh`' >> README.md

echo '| Emoji preview | Emoji name |' >> README.md
echo '| ------------- | ------------- |' >> README.md
for filename in ./emojis/**; do
  name=${filename##*\/}
  rm -f ${filename}:Zone.Identifier
  echo "| <img src='$filename'/> | $name |" >> README.md
done
