# ScienCurious Lab — Representative Presentation

> "Enseigner, ce n'est pas remplir un vase, mais allumer une flamme !"

## Vision & Concept

ScienCurious Lab is a **Sovereign AI-driven Learning Platform** that prioritizes **Visual Logic** over traditional text-heavy methods. It solves the "one-size-fits-all" limitation by providing a **1-to-1 Virtual Tutor** that adapts its pedagogical form in real-time under the strategic supervision of a human teacher.

```text
    [ TEACHER ] <--- Strategic Control & Knowledge Base
         |
         v
    +-----------+      +-----------------------+
    |   AGENT   | <--> |   SOVEREIGN MODELS    |
    |    IA     |      | (Qwen, Mistral Small) |
    +-----------+      +-----------------------+
         |
         | (Live Voice & Manim/Three.js)
         v
    +-----------------------+
    |       STUDENT         |
    | (Visual Learning Mix) |
    +-----------------------+
         |
         +--> [ SAVE SESSION ] --> (Video / Article / MD)
```

## Technical Architecture (Sovereign SaaS)

The platform is built on a **Sovereign Infrastructure** (KpihX-Labs), avoiding dependence on major cloud providers (GAFAM).

```text
    +-------------------------------------------+
    |              KpihX-Labs Infrastructure     |
    |                                           |
    |  [ PROXMOX HYPERVISOR ]                   |
    |       |                                   |
    |       +-- [ DOCKER-HOST LXC ]             |
    |               |                           |
    |               +-- [ ScienCurious App ]    |
    |               +-- [ Sovereign LLMs ]      |
    |               +-- [ Voice Engine ]        |
    |                                           |
    |  [ CLOUDFLARE TUNNEL ] <--- SSL / DNS     |
    +-------------------------------------------+
               ^
               |
        [ kpihx-labs.com ]
```

## Key Differentiators

1. **Sovereign Control**: Independent hosting on local hardware (Mac Mini/Studio) using compact high-performance models (7B-32B params).
2. **Teacher-Pilot Model**: Teachers provide the substance (knowledge base), AI handles the form (personalized visualization).
3. **Live-to-Content**: Real-time generation of pedagogical assets that can be persisted as permanent study records.
4. **Pedagogical Inclusion**: Designed specifically to reduce school dropout rates by bridging the gap between abstract text and intuitive visualization.

## Branding Asset

![Representative Banner](sciencurious_lab.png)
*920x420px — Official Branding for Bertrand Pivin Award Application*
