# Fork Tales Source Map

`simulacron` is a **concept extraction**, not a direct code transplant.

Unlike `graph-runtime` or `myrmex`, there is no single clean `fork_tales` module called "simulacron." The idea emerges from several overlapping strata in the original experiment.

## Primary upstream concept sources

### 1. Presence / muse / panel decomposition
- `specs/eta-mu-extraction-vault.md`

This workspace document breaks `fork_tales` into distinct systems:
- Presence system
- Muse system
- Panel composition system
- Daimoi system

`simulacron` sits above those as a readable framing for the kinds of entities that make decisions and manifest across layers.

### 2. Fork Tales UI and entity semantics
Representative sources inside `fork_tales`:
- `orgs/octave-commons/fork_tales/part64/frontend/src/components/Panels/Vitals.tsx`
- `orgs/octave-commons/fork_tales/part64/frontend/src/components/Panels/Chat.tsx`
- `orgs/octave-commons/fork_tales/.opencode/agent/presence.*.md`

These matter because the experiment already encoded different roles, presences, continuity signals, and behavioral overlays in UI and agent surfaces before they were separated into standalone concepts.

### 3. Later note-driven decomposition
Useful adjacent notes in the recovered Cephalon corpus:
- `orgs/octave-commons/cephalon/packages/cephalon-cljs/docs/notes/cephalon/promethean-ontology-8-layers.md`
- `orgs/octave-commons/cephalon/packages/cephalon-cljs/docs/notes/cephalon/cephalon-daimoi-v01.md`

These are not the original `fork_tales` runtime, but they preserve later attempts to make the same layered ontology legible.

## What this repo currently captures
- `docs/layers.md` gives a compressed, comprehensible model for layered cognition:
  - survival
  - permission
  - reason
  - ethics
  - synthesis

## Honest status
This repo should be read as a **named lens over the decomposed experiment**, not as a fully specified microservice.

The upstream experiment contained the ingredients for simulacron behavior in many places, but they were tangled together with UI, narrative, agent prompts, and runtime state. The purpose of this repo is to hold the conceptual layer cleanly enough that a future implementation can be built on top of it.
