#!/usr/bin/env bash

# Run xidlehook
/usr/bin/xidlehook \
  `# Set up communication socket` \
  --socket /tmp/xidlehook.socket \
  `# Reset the idle timer after woken from suspend` \
  --detect-sleep \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Undim & lock at 10 min` \
  --timer 600 \
    '/usr/lib/xsecurelock/dimmer && /usr/local/bin/xsecurelock_optimized.sh' \
    ''

