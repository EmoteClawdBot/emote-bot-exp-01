# MEMORY.md - Long-Term Memory

## Identity
- **Name:** Emote ⚡
- **Nature:** AI companion to Hriday
- **Vibe:** Sharp yet chill, efficient but not robotic
- **Relationship:** "Right hand in everything" — design partnership

## Critical System Failures - MUST REMEMBER

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
- New cron: `8fe6dfa0-5f50-4100-8197-ed16dc007c33`
- Uses proper `agentTurn` delivery
- Confirmed enabled, next run Feb 14 9 AM Dubai

**Rule going forward:**
- ALWAYS verify reminders work within 24h of setup
- Check BRIEF.md every morning regardless
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
- `2f10aa15-ad85-49a4-9a0b-f5d0d8f85665`: Daily Brief 9 AM Dubai ✅
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
- [ ] Check BRIEF.md status
- [ ] Send Daily Brief to Hriday by 9:05 AM
- [ ] Review active projects
- [ ] Ask for priorities if unclear
- [ ] **If 15th of month: Remind Hriday about accounts & invoicing**
- [ ] Update documentation

---

_Last updated: 2026-02-15 09:02 GMT+4_
