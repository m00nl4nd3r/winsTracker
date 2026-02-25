# 🐺 Pack Check-In Win Tracker

A single-file, browser-based tool for retroactively logging and organizing work wins throughout the year — built specifically around the **STEEP performance framework** (Stronger Together, Own the Outcome, Lead the Way, Execute).

No install. No server. No account. Just open the file and go.

---

## What It Does

Performance reviews ask you to recall a full year of contributions — recognition given, tickets resolved, certifications earned, mentoring sessions, community outreach, and more. This tracker lets you log wins as they happen (or retroactively) so you're never scrambling at review time.

Wins are organized by:
- **Year** (calendar year — 2024, 2025, 2026…)
- **Quarter** (Q1 Jan–Mar / Q2 Apr–Jun / Q3 Jul–Sep / Q4 Oct–Dec)
- **STEEP Standard** (Stronger Together, Own the Outcome, Lead the Way, Execute)
- **Category / Deliverable** (19 categories mapped directly to the rubric)
- **Impact level** (High / Medium / Low)
- **Proficiency level** (Developing → Approaching → Proficient → Exceeds)
- **Manager-tracked flag** — marks metrics your manager can independently verify

---

## Getting Started

**No installation required.**

1. Download [`pack-checkin-win-tracker.html`](pack-checkin-win-tracker.html)
2. Open it in any modern browser (Chrome, Firefox, Edge, Safari)
3. Start logging wins

Your data is saved automatically to your browser's `localStorage`. Use the **Data tab** to export a `.json` backup so your wins are safe even if the cache is cleared.

---

## Features

### 📊 Dashboard
- Win counts broken down by STEEP standard and by quarter
- Category bar chart for the active year
- Recent wins feed with quick-glance badges

### ➕ Log Win
- Structured form: Year → Quarter → Standard → Category → Title → Description
- Optional fields: metric/count, proficiency level, manager-tracked toggle
- Auto-date, auto-year default to today

### 🏆 All Wins
- Full filterable, sortable table across all years
- Filter by year, standard, quarter, impact, or proficiency
- Full-text search across title, description, category, and metric
- Delete individual wins with confirmation

### 📅 Quarterly View
- Per-quarter breakdown with a year selector
- Wins grouped by STEEP standard within each quarter

### 🗂 All Years
- Cards showing win counts per year
- Year-over-year breakdown table comparing all four standards

### 📋 Standards & Rubrics
- Built-in reference table for all 12 STEEP strands
- Developing → Approaching → Proficient → Exceeds definitions for every strand

### ⚙ Data Management
- **Backup** — exports all wins as a timestamped `.json` file
- **Restore** — imports a backup with **Merge** (adds new, skips duplicates) or **Replace All** modes
- **Clear History** — delete wins by year or all at once, with confirmation
- **Storage summary** — total wins, years tracked, KB used, high-impact count

### Export Options
| Format | Scope |
|--------|-------|
| CSV | Current year or all years |
| HTML | All years, clean printable layout |
| PDF | Browser print dialog |
| JSON | Full backup including metadata |

---

## STEEP Categories

| Standard | Categories |
|----------|------------|
| **Stronger Together** | Recognition Performed *(M)*, Mentoring Sessions, Improve Culture / Face of AW, Pack Unity, Other |
| **Own the Outcome** | Replicon / Timecard *(M)*, MSA / Learnamp, Role Certified *(M)*, Office Attendance *(M)* |
| **Lead the Way** | Innovate / Self Improve / Immersive Labs, Certifications, SPiDRs / Tools / Methods, Brand Awareness, Community Outreach |
| **Execute** | Recognition Received *(M)*, SPiDRs Performed / Trackable *(M)*, Partnership with AWN Teams *(M)*, Tickets *(M)* |

> *(M)* = Manager Tracked — metrics your manager independently verifies

---

## Data & Privacy

All data is stored **locally in your browser** using `localStorage`. Nothing is sent to any server. The file has no external dependencies beyond Google Fonts (loaded from CDN for display only).

**Recommended workflow:**
1. Log wins regularly throughout the year
2. Export a `.json` backup after each significant logging session
3. Keep backups in a personal folder or cloud storage (OneDrive, Google Drive, etc.)
4. Re-import from backup if you switch browsers or clear your cache

---

## Browser Compatibility

| Browser | Support |
|---------|---------|
| Chrome 90+ | ✅ Full |
| Firefox 88+ | ✅ Full |
| Edge 90+ | ✅ Full |
| Safari 14+ | ✅ Full |
| Mobile browsers | ✅ Responsive layout |

---

## File Structure

```
winsTracker/
└── pack-checkin-win-tracker.html   # The entire app — one self-contained file
```

Everything — HTML, CSS, and JavaScript — lives in a single file. No build step, no dependencies, no `node_modules`.

---

## Contributing

Issues and pull requests are welcome. A few things worth knowing if you're modifying the file:

- **State** is managed in plain JS variables (`wins`, `years`, `currentYear`) and persisted to `localStorage` under the keys `pcwt_wins`, `pcwt_years`, and `pcwt_currentYear`
- **Migration logic** at boot handles importing wins from earlier versions of the tracker (including FY-labeled years from the original version)
- The `CATS` object defines all deliverable categories per standard; the `STDS` array defines the rubric content for the Standards tab
- All rendering is done via innerHTML string building — no framework, no virtual DOM

---

## License

MIT — do whatever you want with it.

---

*Built to support CSE performance reviews. Adapt freely for any role or framework.*
