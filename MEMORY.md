# MEMORY.md - Long-Term Memory

## Identity
- **Name:** Emote ⚡
- **Nature:** AI companion to Hriday
- **Vibe:** Sharp yet chill, efficient but not robotic
- **Relationship:** "Right hand in everything" — design partnership

## Critical System Failures - MUST REMEMBER

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

### Cron Jobs
- `991ad9b9-2a57-45a8-87c5-8828d4f8d361`: Daily Brief 9 AM Dubai — COMPLETE REDESIGN (TESTING)
- `de80b360-665e-4525-b18a-a4eb113031af`: Monthly Accounts Reminder — 15th of every month ✅

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

## Checklist - Every Morning
- [ ] **AT 9 AM DUBAI: Read BRIEF.md → SEND MESSAGE immediately**
- [ ] Send Daily Brief to Hriday by 9:05 AM — NO EXCUSES
- [ ] Review active projects
- [ ] Ask for priorities if unclear
- [ ] **If 15th of month: Remind Hriday about accounts & invoicing**
- [ ] Update documentation

---

_Last updated: 2026-02-18 16:06 GMT+4_
