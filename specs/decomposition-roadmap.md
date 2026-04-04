# Simulacron Decomposition Roadmap Spec

## Goal

Turn the layered cognition and presence ecology latent in `fork_tales` into individually comprehensible packages and services.

## Upstream decomposition anchor

`specs/eta-mu-extraction-vault.md` already identified several systems that want to exist separately:
- presence-core
- muse-core
- panel-composer
- daimoi system
- web graph weaver
- lore/entity manifest

`simulacron` is the repo that explains how those cuts hang together from the entity side.

## Proposed package/service lattice

### 1. presence-core
Holds:
- presence manifests
- budget and authority rules
- handoff / ownership contracts

### 2. muse-core
Holds:
- context assembly
- mode switching
- resource claims
- retrieval coordination

### 3. daimoi
Holds:
- field dynamics
- observer metrics
- collision semantics
- packet/event vocabulary

### 4. graph-runtime
Holds:
- topology
- resource pressure
- viewgraph/truthgraph coupling
- canonical graph query surfaces

### 5. panel-composer / UX surfaces
Holds:
- manifestation layer
- panel state
- inspectable controls
- narrative/operational dashboards

### 6. lore / entity manifest
Holds:
- names
- sigils
- world-facing identity and vocabulary

## What simulacron keeps

This repo should keep the **cross-cutting entity doctrine**:
- what a layered entity is
- what kinds of presences serve it
- what kinds of substrates it depends on
- what success and failure look like across layers

## Acceptance criteria for a healthy decomposition

A future contributor should be able to answer:
- which repo defines the entity?
- which repo defines the cast?
- which repo defines packet motion?
- which repo defines graph/resource substrate?
- which repo defines manifestation/UI?

without reopening Fork Tales and spelunking through unrelated code.

## Near-term doc work still wanted

- add concrete examples of a 3-presence and 6-presence simulacron
- recover more cast members from `presence.*.md`
- map panel artifacts in Fork Tales to outward simulacron manifestation patterns
- connect the layered model to one or two real workflows

## Founding sentence

If `graph-runtime` is the world and `daimoi` are the moving winds, then `simulacron` is the creature that learns how to stand, choose, and speak inside that weather.
