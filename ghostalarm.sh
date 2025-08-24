#!/bin/bash
# ghostalarm.sh — RTC wake + alarm trigger
# Version: 1.0.0
# Author: Kehd Emmanuel H. Diaz
# Created: 2025-08-25
# Description: Schedules RTC wake and triggers KDE alarm with forensic logging

LOG="./logs/ghostalarm.log"
PROFILE="./profiles/weekday.conf"

# Load profile
source "$PROFILE"

echo "[INFO] ghostalarm triggered at $(date)" | tee -a "$LOG"
echo "[INFO] Scheduling RTC wake for $WAKE_HOUR:$WAKE_MIN" | tee -a "$LOG"

WAKE_TIME=$(date -d "$WAKE_HOUR:$WAKE_MIN tomorrow" +%s)
sudo rtcwake -m mem -t "$WAKE_TIME"

# Optional: Trigger KDE alarm sound
if [[ "$TRIGGER_SOUND" == "true" ]]; then
  paplay "$ALARM_SOUND"
  echo "[INFO] Alarm sound played: $ALARM_SOUND" | tee -a "$LOG"
fi
