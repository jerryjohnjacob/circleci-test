#!/bin/bash
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_EMAIL
  password $HEROKU_TOKEN
EOF

cat >> ~/.ssh/config << EOF
  VerifyHostKeyDNS yes
  StrictHostKeyChecking no
EOF
