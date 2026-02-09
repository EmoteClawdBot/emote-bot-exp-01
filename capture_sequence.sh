#!/bin/bash
mkdir -p /Users/emote/.openclaw/media/frames
for i in $(seq 1 30); do
  # Trigger screenshot via browser snapshot
  echo "Frame $i"
  sleep 0.5
done
