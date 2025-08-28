# ⚙️ GhostAlarm Systemd Integration Guide

Enable GhostAlarm to autorun at startup using systemd 
for RTC wake rituals, KDE alerts, and forensic-grade 
logging.

---

## 🛠️ Setup Overview

This guide wires GhostAlarm into systemd with 
rollback-safe clarity and symbolic wake logic.

---

## 📁 1. Create the systemd unit

```bash
sudo nano /etc/systemd/system/ghostalarm.service

[Unit]
Description=GhostAlarm RTC Wake Trigger
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/ghostalarm.sh
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
