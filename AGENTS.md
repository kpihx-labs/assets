# AGENTS.md — kpihx-labs-assets

> Project context for all AI agents working in this repository.
> Loaded automatically by all KπX agents when present at project root.

## KπX Mantras

**Exploration:** Problem First → Why before How → Visualization
**Architecture:** 0 Trust · 100% Control | 0 Magic · 100% Transparency | 0 Hardcoding · 100% Flexibility

## Project Overview

| Field | Value |
|-------|-------|
| Purpose | Sovereign Assets Hub for KpihX-Labs projects (images, docs, brands) |
| Stack | Nginx / Docker / GitLab-CI |
| Status | 🟡 In progress |

## Architecture Rules

- **Sovereign First** — All assets served from local docker-host infrastructure via assets.kpihx-labs.com.
- **Organization** — Sub-folders per project (e.g., `sciencurious_lab/`).
- **Transparency** — No hidden links; all assets explicitly listed in sub-folder index/markdown.

## Evolution Rules

- New asset → add to the matching sub-folder, update its `presentation.md`.
- CI/CD → GitLab is the source of truth; GitHub is the mirror for public accessibility.
- **Makefile is the standard task runner** — use `make push` for sync.
