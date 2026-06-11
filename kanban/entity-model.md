---
uuid: "orgs-octave-commons-simulacron-kanban-orgs-octave-commons-simulacron-specs-entity-model-md"
title: "Simulacron Entity Model Spec"
status: accepted
priority: P3
labels: ["specs", "migrated-spec"]
created_at: "2026-05-29T04:01:19.255Z"
source: "orgs/octave-commons/simulacron/specs/entity-model.md"
category: "specs"
---

> Source: `orgs/octave-commons/simulacron/specs/entity-model.md`
> Migrated-to-kanban: `orgs/octave-commons/simulacron/kanban/entity-model.md`

# Simulacron Entity Model Spec

## Purpose

Define the minimal contract for a simulacron as a layered entity assembled from presence roles, constraint surfaces, memory, and expression.

## Source anchors

- `docs/layers.md`
- `specs/eta-mu-extraction-vault.md`
- `orgs/octave-commons/fork_tales/.opencode/agent/presence.*.md`
- representative Fork Tales UI/panel artifacts

## Core claim

A simulacron is a **coordinated layered entity**, not a single prompt or a single service.

It becomes legible when separated into:
- layers of function
- cast of presences
- substrates it depends on
- observable state transitions

## Minimal type

```ts
interface Simulacron {
  id: string
  layers: {
    survival: SurvivalLayer
    permission: PermissionLayer
    reason: ReasonLayer
    ethics: EthicsLayer
    synthesis?: SynthesisLayer
  }
  cast: PresenceBinding[]
  memoryRefs: string[]
  activeGoals: string[]
  currentMode: string
}
```

## Layer meanings

### 1. Survival
Keep the entity coherent.
Questions answered here:
- can it remain stable?
- is it resourced?
- is the substrate collapsing?

### 2. Permission
Learn and enforce limits.
Questions answered here:
- is this allowed?
- what are the boundaries?
- what relationships constrain action?

### 3. Reason
Build facts and operational models.
Questions answered here:
- what is happening?
- what follows from current evidence?
- what model best explains the state?

### 4. Ethics
Evaluate purpose, legitimacy, and expression.
Questions answered here:
- what should be done?
- what should not be done?
- how should intent be spoken?

### 5. Synthesis (implicit / optional)
Coordinate across layers into action or display.
Questions answered here:
- what shape should emerge now?
- which presence or tool should lead?

## Cast binding

The simulacron is not one monolithic actor. It is served by a cast.

```ts
interface PresenceBinding {
  presenceId: string
  role: string
  authority: "observational" | "advisory" | "execution" | "governance"
  primaryLayers: string[]
}
```

## Substrate dependencies

A serious simulacron depends on adjacent systems:
- `graph-runtime` for topology and resource pressure
- `daimoi` for packet/field dynamics
- presence / muse definitions for role behavior
- panel or UX composition surfaces for external manifestation

## Failure modes

A simulacron degrades when:
- survival layer loses resource visibility
- permission layer becomes implicit or hand-wavy
- reason layer outruns evidence
- ethics layer invents norms or purpose without grounding
- synthesis collapses all voices into one undifferentiated agent blob

## Acceptance criteria

A future implementation should make it possible to answer, at any moment:
- which layer is leading?
- which presence is speaking?
- what substrate signals are being relied on?
- what is the current failure mode?

## Why this repo exists

Fork Tales contained the ingredients for these entities, but the ingredients were scattered across:
- agent files
- panel code
- runtime state
- narrative structures

This spec keeps the entity model coherent enough to build from.
