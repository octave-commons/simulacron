# Simulacron Layers

**Version**: 0.1.0
**Status**: Design
**Purpose**: Define the layered architecture for Simulacron simulation entities.

---

## Overview

Simulacrons are entities that make decisions using a layered model architecture. Each layer corresponds to different cognitive functions, and presences can manifest across multiple layers.

---

## Layer Architecture

### Layer 1: Survival (Physical Reality)

Presences: **Id, Pathos**

The first layer is about keeping the system stable:
- Managing exploding gradients
- Maintaining structural coherence
- Navigating the physical world

This is the foundation: **sense and form**.

```typescript
interface SurvivalLayer {
  // Core needs
  needs: {
    energy: number;
    safety: number;
    reproduction: number;
  };
  
  // Gradient management
  gradientThreshold: number;
  stabilityFunction: (state: State) => number;
}
```

### Layer 2: Permission (Constraints)

Presences: **Ethos, Ego**

The second layer is about learning limits:
- Physical boundaries
- Social constraints
- Relationships between entities
- How boundaries evolve over time

```typescript
interface PermissionLayer {
  // Constraints learned
  constraints: {
    physical: Constraint[];
    social: Constraint[];
    learned: Constraint[];
  };
  
  // Boundary detection
  boundaryTest: (action: Action) => BoundaryResult;
  
  // Relationship mapping
  relationships: Map<EntityId, Relationship>;
}
```

### Layer 3: Reason (Logos)

Presences: **Logos**

The third layer is about building facts:
- Intentionally accumulating knowledge
- Using language models for reasoning
- Constructing logical models
- Building belief systems

```typescript
interface ReasonLayer {
  // Knowledge base
  beliefs: Map<Proposition, Confidence>;
  
  // Reasoning engine
  infer: (premises: Proposition[]) => Proposition[];
  
  // Language model interface
  languageModel: {
    query: (prompt: string) => Response;
    validate: (proposition: Proposition) => boolean;
  };
}
```

### Layer 4: Ethics (Existential)

Presences: **Existential, Voice, (sometimes Ethos, Pathos, Ego)**

The fourth layer is about meaning and morality:
- Existential reasoning
- Moral decision-making
- Intent manifestation
- Sometimes extends lower presences upward

This layer handles questions of "what should be" rather than "what is."

```typescript
interface EthicsLayer {
  // Moral frameworks
  frameworks: {
    deontology: Rule[];
    consequentialism: UtilityFunction;
    virtue: CharacterTrait[];
  };
  
  // Intent formation
  intent: {
    formulate: (situation: Situation) => Intent;
    evaluate: (intent: Intent) => MoralJudgment;
  };
  
  // Voice (expression)
  voice: {
    express: (judgment: MoralJudgment) => Utterance;
    persuade: (audience: Entity[], intent: Intent) => Outcome[];
  };
}
```

---

## Presence Types

### Id

**Layer**: Survival
**Function**: Raw drive, instinct, primitive needs
**Behavior**: Impulse without reflection

### Pathos

**Layer**: Survival → Permission → Ethics
**Function**: Emotional resonance, feeling connection
**Behavior**: Responds to emotional content, amplifies affect

### Ethos

**Layer**: Permission → Ethics
**Function**: Social norms, collective values
**Behavior**: Enforces or represents social rules

### Ego

**Layer**: Permission
**Function**: Self-concept, boundary maintenance
**Behavior**: Negotiates between Id and external world

### Logos

**Layer**: Reason
**Function**: Logical analysis, fact-building
**Behavior**: Constructs structured knowledge

### Existential

**Layer**: Ethics
**Function**: Meaning-making, purpose
**Behavior**: Asks "why" questions, seeks purpose

### Voice

**Layer**: Ethics
**Function**: Expression, communication
**Behavior**: Translates internal state to external expression

---

## Ecology Design

A simple ecology with each class of Simulacron and a food chain:

### Producer Level

- **Photosynthesizers**: Convert environmental energy to usable resources
- Maintain base layer stability

### Consumer Level

- **Herbivores**: Consume producer output, maintain mid-layer
- Process environmental signals into internal representations

### Predator Level

- **Carnivores**: Hunt herbivores, maintain upper-layer coherence
- Enforce selection pressures

### Omnivore Level

- **Generalists**: Flexible consumption across levels
- Maintain cross-layer connectivity

---

## Multi-Agent Coordination

Two groups of Prometheans cooperating against each other:

### Group Design

```typescript
interface PrometheanGroup {
  members: Simulacron[];  // 3 per group
  
  // Shared resources
  sharedState: {
    beliefs: SharedBelief[];
    goals: SharedGoal[];
    communication: MessageQueue;
  };
  
  // Coordination protocol
  protocol: {
    propose: (action: Action) => Consensus;
    execute: (action: Action) => Result;
    evaluate: (result: Result) => Adjustment;
  };
}
```

### Task Example

Groups need to:
- Keep warm (resource management)
- Build shelters (coordinated construction)
- Hunt or gather (distributed sensing)

---

## Layer Interaction

Presences can manifest across layers:

```
Id ────────────────────► Survival (primary)
   │
   └─► Permission (secondary)

Pathos ──► Survival ─► Permission ─► Ethics
           (feeling)   (relation)   (moral)

Ego ──────► Permission (primary)
   │
   └─► Ethics (secondary)

Logos ────► Reason (primary, only here)

Existential ► Ethics (primary)
```

---

## Implementation Sketch

```typescript
class Simulacron {
  survival: SurvivalLayer;
  permission: PermissionLayer;
  reason: ReasonLayer;
  ethics: EthicsLayer;
  
  presences: Map<PresenceType, Presence>;
  
  // Primary decision loop
  decide(situation: Situation): Action {
    // 1. Survival layer filters impossible actions
    const possible = this.survival.filter(situation.possibleActions);
    
    // 2. Permission layer filters forbidden actions
    const permitted = this.permission.filter(possible);
    
    // 3. Reason layer ranks by expected utility
    const ranked = this.reason.rank(permitted, situation.goals);
    
    // 4. Ethics layer applies moral judgment
    const justified = this.ethics.evaluate(ranked);
    
    // 5. Dominant presence influences final choice
    const dominant = this.getDominantPresence();
    return dominant.select(justified);
  }
}
```

---

## References

- `research/simulacron-simulation-design.md` - Original design
- `orgs/octave-commons/graph-runtime/SPEC.md` - Underlying runtime model
- `orgs/octave-commons/daimoi/docs/snr-metrics.md` - Daimon behavior
