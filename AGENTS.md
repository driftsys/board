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

- `docs/initiatives/` — initiative framing documents (objective, goals, roadmap)
- `docs/records/` — ADRs (`adr-NNN-topic.md` format)
- `project.yaml` — project manifest

Epics are tracked as GitHub issues with the `epic` label — no corresponding
markdown files. Initiatives are the level above epics and deserve a framing
document.

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

- **Initiatives.** One markdown file per initiative in `docs/initiatives/`.
  Include objective, goals, roadmap (epics and milestones), and affected repos.
- **Epics.** Tracked as GitHub issues — no markdown files. Use the `epic` issue
  template. Reference the parent initiative in the issue body.
- **ADRs.** Follow the `adr-NNN-topic.md` format with Status/Date/Scope metadata
  and Context/Decision/Alternatives/Consequences sections.
- **Scopes.** Conventional commit scopes: `repo` (project meta), `ci`
  (workflows), `initiative` (initiative documents), `adr` (architecture
  decisions).
