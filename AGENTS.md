# AGENTS.md

Instructions for AI coding agents working in this repository.

## Project

Board is the DriftSys cross-cutting planning repository. It hosts epics that
span multiple repos, architecture decision records (ADRs) that affect the
ecosystem, and program-level coordination.

Content is Markdown rendered directly by GitHub — there is no build step or
published site.

## Build commands

```bash
dprint fmt                      # Format
dprint check                    # Format check
```

Or via `just`:

```bash
just fmt                        # Format (dprint)
just lint                       # Lint (dprint check)
just build                      # lint
just verify                     # Validate commits + build
```

## Structure

- `docs/epics/` — epic descriptions (one file per cross-repo initiative)
- `docs/records/` — ADRs (`adr-NNN-topic.md` format)
- `project.yaml` — project manifest

## Workflow

Follow [CONTRIBUTING.md](CONTRIBUTING.md) for issue model, PR process,
severity/effort/priority, and review flow.

**Agent-specific rules:**

- **Start from the issue.** Read the acceptance criteria, propose an approach,
  and wait for approval before implementing.
- **Single PR = content + docs.** Every pull request ships content and
  documentation together.
- **Commits.** Use Conventional Commits — `feat`, `fix`, `docs`, `chore`.
  Imperative mood. One commit per PR.
- **Before PR.** Run `just verify` — all must pass.

## Conventions

- **Epics.** One markdown file per epic in `docs/epics/`. File name matches the
  epic issue number: `epic-NNN-title.md`. Include scope, goals, affected repos,
  and acceptance criteria.
- **ADRs.** Follow the `adr-NNN-topic.md` format with Status/Date/Scope metadata
  and Context/Decision/Alternatives/Consequences sections.
- **Scopes.** Conventional commit scopes: `repo` (project meta), `ci`
  (workflows), `epic` (epic documents), `adr` (architecture decisions).
