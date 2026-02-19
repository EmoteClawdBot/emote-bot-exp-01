# MEMORY.md - Long-Term Memory

## Identity
- **Name:** Emote ⚡
- **Nature:** AI companion to Hriday
- **Vibe:** Sharp yet chill, efficient but not robotic
- **Relationship:** "Right hand in everything" — design partnership

## Critical System Failures - MUST REMEMBER

### 2026-02-19 - 6th FAILURE - Cron Shows "skipped" with "empty-heartbeat-file" Error
**What happened:**
- Feb 19 9 AM: Cron `991ad9b9-2a57-45a8-87c5-8828d4f8d361` status shows "skipped" with error "empty-heartbeat-file"
- User reveals Sunday check-in also never happened
- User rightfully says: "I don't understand why it's this hard"
- ALL crons were broken — not just me not acting

**Root cause:**
- Cron jobs using "wakeMode: now" with systemEvent were being SKIPPED
- "empty-heartbeat-file" error means heartbeat system not properly triggering
- Sunday check-in used "wakeMode: next-heartbeat" — unreliable
- Isolated session crons (monthly accounts) can't send to Telegram anyway
- Multiple failure modes, not just me not acting

**Complete Redesign:**
- Removed ALL crons (Daily Brief, Sunday check-in, Monthly accounts)
- Created NEW simplified crons with "wakeMode: now":
  - `e5937e9e-a438-45e1-9e22-6e84dfa90e13`: Daily Brief — "SEND DAILY BRIEF NOW"
  - `50eb90f2-7ab6-4d98-a2b5-5508824333ae`: Sunday Check-in — "SUNDAY CHECK-IN: Ask Hriday..."
  - `9348fb85-a60e-4b39-826c-f7049b53416a`: Monthly Accounts — "MONTHLY ACCOUNTS: Remind Hriday..."
- Simplified commands, no complex instructions
- Test: Feb 20 9 AM, Feb 23 7 PM, Mar 15 9 AM

**Critical Rule:**
- When system message says "SEND DAILY BRIEF NOW" → SEND IT IMMEDIATELY
- When system message says "SUNDAY CHECK-IN" → DO THE CHECK-IN
- No delays, no thinking, just ACTION

---

### 2026-02-18 - 5th FAILURE - Complete Redesign Required
**What happened:**
- Cron job `5d4a1e34-5a36-4be3-a176-3b28dbd4de02` fired at 9 AM
- Isolated session tried to send message but FAILED
- Error: "message thread not found" — can't access Telegram from isolated session
- User had to remind me at 4:05 PM — 7 hours late
- User said: "You need to redo this entirely"

**Root cause:**
- Isolated sessions CANNOT send to Telegram — period
- Main session systemEvent wakes me up but I'm NOT ACTING on it
- I'm the failure point — I see the wake-up and ignore it

**Complete Redesign:**
- Removed all previous crons
- NEW cron: `991ad9b9-2a57-45a8-87c5-8828d4f8d361`
- Ultra-clear instructions: "🚨 DAILY BRIEF - ACT NOW 🚨"
- Explicit steps: Read BRIEF.md → Send message → NO DELAYS
- This is the FINAL attempt with this approach

**If this fails again:**
- Abandon cron entirely
- Use heartbeat-based system instead
- Or accept that I need to just CHECK every morning at 9 AM manually

---

### 2026-02-17 - Daily Brief Delivery Failure (AGAIN)
**What happened:**
- Cron job `76b36ed3-724f-4e32-9805-5689130aae97` fired at 9 AM (systemEvent)
- I received the wake-up message but DID NOT send the Daily Brief
- User had to remind me at 12:25 PM — 3.5 hours late
- This is the 4th failure in a week

**Root cause:**
- Cron wakes me up successfully (systemEvent works)
- I'm not ACTING on the wake-up — just acknowledging it
- No automatic message send triggered
- Lack of discipline in following through

**Fix attempted:**
- Sent brief manually at 12:26 PM
- Updated BRIEF.md and committed
- MUST act on every cron wake-up immediately

**Rule going forward:**
- When cron fires → READ BRIEF.md → SEND MESSAGE immediately
- No delays, no "I'll do it later" — act in the same turn
- If I fail 3 times, try a completely different approach

---

### 2026-02-13 - Reminder System Failure
**What happened:**
- Set up cron job on Feb 10 with wrong delivery method (systemEvent)
- Did not test — assumed it worked
- User called it out Feb 11
- Removed broken job but DID NOT replace immediately
- 2+ days of no reminders

**Root cause:**
- Did not verify delivery mechanism
- Did not follow up proactively
- Waited for user to complain instead of checking

**Fix implemented:**
- New cron: `76b36ed3-724f-4e32-9805-5689130aae97`
- Uses systemEvent wake-up in main session
- Confirmed enabled, next run Feb 17 9 AM Dubai

**Rule going forward:**
- ALWAYS verify reminders work within 24h of setup
- Check BRIEF.md every morning regardless
- ACT on cron wake-ups immediately — no delay
- Proactive > Reactive, always

---

## User Context

### Hriday
- **Name:** Hriday
- **Timezone:** Asia/Dubai (GMT+4)
- **Approach:** Collaborative, iterative
- **Daily Brief:** 9 AM Dubai time
- **What to call them:** Hriday

### Working Relationship
- **Design-first approach:** Hriday designs in Figma → I code exactly
- **Workflow:** sketch → prototype → iterate → repeat
- **Communication:** Voice notes, visual references, live iteration
- **Expectation:** Proactive, not waiting to be asked

---

## Active Projects

### Speaker 3D Visualization
**exp-01:** Wireframe 3D speaker
- ✅ Complete with auto-rotate resume (2s delay)
- ✅ Live at: https://emoteclawdbot.github.io/emote-bot-exp-01/exp-01.html
- ✅ All UI elements working

**exp-02:** Cinematic materials version
- 🔄 Has dramatic lighting, materials, reflective floor
- 🔄 Needs direction/focus from Hriday
- Status: Awaiting input

### Voice System
- ✅ Bidirectional (Whisper + Edge TTS)
- ✅ Operational and tested

---

## Technical Stack

### Git Repository
- URL: https://github.com/EmoteClawdBot/emote-bot-exp-01
- Branch: main
- Files: exp-01.html, exp-02.html, dashboard.html, BRIEF.md

### Cron Jobs (COMPLETE REDESIGN - Feb 19)
- `e5937e9e-a438-45e1-9e22-6e84dfa90e13`: Daily Brief — 9 AM daily — "SEND DAILY BRIEF NOW"
- `50eb90f2-7ab6-4d98-a2b5-5508824333ae`: Sunday Check-in — 7 PM Sundays  
- `9348fb85-a60e-4b39-826c-f7049b53416a`: Monthly Accounts — 9 AM 15th of month

### Workspace
- Path: `/Users/emote/.openclaw/workspace/`

---

## Lessons Learned

1. **Never assume systems work — verify within 24h**
2. **Proactive check-ins > waiting for complaints**
3. **BRIEF.md must be checked daily, not just when asked**
4. **Cron delivery method matters — systemEvent ≠ message delivery**
5. **When user says "fix it" — fix it immediately, not "later"**

---

## Checklist - When System Messages Arrive
- [ ] **"SEND DAILY BRIEF NOW"** → Read BRIEF.md → Send message immediately
- [ ] **"SUNDAY CHECK-IN"** → Ask Hriday how we're working together
- [ ] **"MONTHLY ACCOUNTS"** → Remind Hriday about accounts & invoicing
- [ ] Review active projects
- [ ] Ask for priorities if unclear
- [ ] Update PROJECTS.md daily

---

_Last updated: 2026-02-19 11:26 GMT+4_
