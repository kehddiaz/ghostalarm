# 🕶️ ghostalarm

**Modular RTC wake suite with KDE triggers, forensic logging, and rollback-safe profiles.**  
Designed for stealth ops, reproducibility, and operational clarity.

---

## 🚀 Overview

`ghostalarm` is a privacy-hardened alarm suite for Linux systems, built to wake, alert, and log with surgical precision.  
It integrates RTC scheduling, KDE notifications, and audit-grade logging—ideal for stealth workflows, remote ops, and forensic traceability.

---

## 🧩 Features

- ⏰ **RTC Wake Scheduling** — boots system from sleep with hardware-level precision  
- 🖥️ **KDE Plasma Triggers** — visual + audible alerts via `kdialog` or `notify-send`  
- 📜 **Forensic Logging** — timestamped logs for every alarm  
- 🧪 **Rollback-Safe Profiles** — modular execution with audit clarity  
- 🧭 **Symbolic Wake Archetypes** — Sentinel, Pilgrim, Oracle modes for operational mapping  
- 🛠️ **Systemd Integration** — autorun at startup with optional timer units

---

## ⚙️ Systemd Integration

GhostAlarm supports autorun via systemd for RTC wake rituals and KDE alerts.  
See [`ghostalarm-systemd.md`](./ghostalarm-systemd.md) for setup instructions.

```bash
sudo nano /etc/systemd/system/ghostalarm.service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl enable ghostalarm.service

Includes logging options, timer scheduling, and symbolic mapping.

ghostalarm/
├── ghostalarm.sh              # Main execution script
├── ghostalarm-systemd.md      # Systemd integration guide
├── docs/                      # README, changelog, contributor notes
├── profiles/                  # Modular alarm profiles (Sentinel, Pilgrim, Oracle)
├── logs/                      # Timestamped forensic logs
├── assets/                    # Icons, KDE visuals, branding

🧭 Symbolic Modes

Mode	Purpose
🛡️ Sentinel	Surveillance, monitoring ops
🧭 Pilgrim	Remote sync, travel diagnostics
🔮 Oracle	System introspection, inquiry

Each profile maps to a symbolic archetype. Customize triggers, visuals, and logging per mode.

🤝 Contributor Guide
We welcome forks, PRs, and symbolic extensions. To contribute:
Clone the repo and explore ghostalarm.sh
Review ghostalarm-systemd.md
Submit PRs with clear changelogs and rollback-safe logic
Respect symbolic mappings and operational hygiene

🧪 Development Notes
Ensure ghostalarm.sh is executable: chmod +x ghostalarm.sh
Use absolute paths in systemd units
Log every invocation for audit clarity
KDE triggers require kdialog or notify-send installed

🛡️ License
MIT — use freely, fork responsibly, log everything.

GhostAlarm doesn’t just wake your system—it initiates a ritual. Every boot is a declaration. Every log is a breadcrumb. Every profile is a symbolic map.

Welcome to operational emergence. ⚡

---

Let me know if you'd like this scaffolded into a Copilot Page for live editing, or if you want to add badges, contributor credits, or visual branding next. This README is now cockpit-grade and contributor-ready.
