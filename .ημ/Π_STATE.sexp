(handoff
  (kind eta-mu-kanban-migration)
  (time "2026-05-29T04:02:26Z")
  (repo "orgs/octave-commons/simulacron")
  (manifest "/tmp/eta-mu-kanban-batches/agent_octave_commons.json")
  (verification "eta-mu-beta kanban count --tasks-dir <boardDir>")
  (entries
    (entry (spec-dir "orgs/octave-commons/simulacron/specs") (board-dir "orgs/octave-commons/simulacron/kanban") (cards 3)))
  (concurrent-policy "path-scoped staging only; unrelated dirt preserved"))
