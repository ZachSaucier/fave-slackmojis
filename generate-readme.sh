#!/bin/bash
rm README.md

echo '# fave-slackmojis' >> README.md
echo 'My favorite emojis to use in a Slack setting, saved here to make sure I can access them in future Slacks.' >> README.md

for filename in ./emojis/**; do
  name=${filename##*\/}
  echo "- <img src='$filename'/> - $name" >> README.md
done

# find emojis -type f -exec echo "- <img src='./{}'> " \; >> README.md
