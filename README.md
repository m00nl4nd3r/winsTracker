# 🐺 Win Tracker

A single-file, browser-based tool for logging and organizing work wins throughout the year — built around the **STEEP performance framework** (Stronger Together, Own the Outcome, Lead the Way, Execute).

No install. No server. No account. Open the file and go.

---

## Releases

| Version | File | What changed |
|---------|------|--------------|
| **v3.0** | `wins-tracker-v3.0.html` | Overhauled HTML and PDF exports — dark theme, colored badges, per-year/quarter breakdowns, summary stats |
| v2.0 | `wins-tracker-v2.0.html` | Multi-year support, edit wins, backup/restore, clear history, quick-log checkbox |
| v1.0 | *(initial)* | Single fiscal year, log/view/export only |

---

## Getting Started

1. Download [`wins-tracker-v3.0.html`](wins-tracker-v3.0.html)
2. Open it in any modern browser
3. Start logging — data saves automatically to your browser's `localStorage`

> **Important:** Browser cache can be cleared at any time. Use the **Data tab → Download Backup** regularly to keep a `.json` copy of your wins somewhere safe.

---

## Features

### 📊 Dashboard
Win counts by STEEP standard and by quarter, a category bar chart, and a recent wins feed — all scoped to the active year.

### ➕ Log Win
Structured form with cascading fields: Year → Quarter → Standard → Category → Title → Description, plus optional impact level, proficiency level, manager-tracked flag, and metric/count. Check **"Log another after saving"** to stay on the form and keep logging without extra clicks.

### 🏆 All Wins
Full filterable, sortable table across all years. Filter by year, standard, quarter, impact, or proficiency. Full-text search across title, description, category, and metric. Edit or delete any win inline.

### ✎ Edit Wins
Click the edit button on any row in All Wins or Quarterly View to open a pre-populated modal. All fields are editable — including year, quarter, standard, and category. Changes are saved in place without affecting the win's original creation timestamp.

### 📅 Quarterly View
Per-quarter breakdown with a year selector. Wins grouped by STEEP standard. Edit and delete buttons on every row.

### 🗂 All Years
Year cards showing win counts at a glance, plus a year-over-year breakdown table comparing all four standards side by side.

### 📋 Standards & Rubrics
Built-in reference for all 12 STEEP strands with full Developing → Approaching → Proficient → Exceeds descriptors.

### ⚙ Data Management

| Action | What it does |
|--------|-------------|
| **Download Backup** | Exports all wins as a timestamped `.json` file |
| **Restore — Merge** | Imports a backup, adds new wins, skips duplicates by ID |
| **Restore — Replace All** | Imports a backup, overwrites all existing data |
| **Clear History** | Deletes wins for a specific year or all years, with confirmation |

### 📤 Exports

| Format | Description |
|--------|-------------|
| **HTML** | Fully styled dark-themed document matching the app's color scheme. Includes a sticky header, global summary stats (multi-year), per-year breakdowns, and per-quarter tables with colored badges for standard, impact, and proficiency. |
| **PDF** | Print the app directly — dark theme and all badge colors are preserved via `print-color-adjust`. |
| **CSV** | Flat data export for current year or all years. |
| **JSON** | Full backup including metadata, suitable for re-import. |

---

## Quarters

Standard calendar year quarters — no fiscal year logic.

| Quarter | Months |
|---------|--------|
| Q1 | January – March |
| Q2 | April – June |
| Q3 | July – September |
| Q4 | October – December |

---

## STEEP Categories

| Standard | Categories |
|----------|------------|
| **Stronger Together** | Recognition Performed *(M)*, Mentoring Sessions, Improve Culture / Face of AW, Pack Unity, Other |
| **Own the Outcome** | Replicon (Timecard) *(M)*, MSA / Learnamp, Role Certified *(M)*, Office Attendance *(M)*, Other |
| **Lead the Way** | Innovate / Self Improve / Immersive Labs, Certifications, SPiDRs / Tools / Methods, Brand Awareness, Community Outreach, Other |
| **Execute** | Recognition Received *(M)*, SPiDRs Performed / Trackable *(M)*, Partnership with AWN Teams *(M)*, Tickets *(M)*, Other |

> *(M)* = Manager Tracked metric

---

## Data & Privacy

All data is stored locally in your browser via `localStorage`. Nothing is transmitted anywhere. The file has no runtime dependencies beyond Google Fonts (loaded from CDN for display only).

**Recommended workflow:**
- Log wins regularly as they happen
- Export a `.json` backup after any significant session
- Store backups in a personal folder, OneDrive, or Google Drive
- Re-import from backup if you switch browsers or clear your cache

---

## Migrating from v1.0 or v2.0

v3.0 shares the same `localStorage` keys as v2.0 — just open the new file and your data is already there. It also auto-migrates data from the original v1.0 storage keys (`packWins`, `packWins_v2`), including converting FY-labeled years to calendar years.

---

## Browser Compatibility

Chrome 90+, Firefox 88+, Edge 90+, Safari 14+. Responsive layout works on mobile.

---

## File Structure

```
winsTracker/
├── wins-tracker-v3.0.html   # Current version — single self-contained file
├── wins-tracker-v2.0.html   # Previous version
└── README.md
```

No build step. No dependencies. No `node_modules`.

---

## License

MIT
