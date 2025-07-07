#!/bin/bash

echo "⚕️ This Snapshot will help u to sync Faster & it will start from Block -- 3507655"
echo "🛠️ Installation Instructions"

echo ""
echo "Stop The Node & Delete flow db"
sudo systemctl stop zgs
rm -rf $HOME/0g-storage-node/run/db/flow_db

echo ""
echo "Download and extract the Flow db:"
wget https://github.com/Avinashtok/0g-fast-sync/releases/download/backup-3507655/flow_db-3507655.tar.gz \
  -O $HOME/0g-storage-node/run/db/flow_db.tar.gz && \
tar -xzvf $HOME/0g-storage-node/run/db/flow_db.tar.gz -C $HOME/0g-storage-node/run/db/

echo ""
echo "Restart Your Service/Node"
sudo systemctl restart zgs

echo ""
echo "✔️Done: Your Node Will start Syncing From Block 3507655 🚀"

