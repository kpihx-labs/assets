# 📦 KpihX-Labs Assets Hub

> **Sovereign Infrastructure · Visual Education · Radical Transparency**

Bienvenue sur le **Assets Hub** de KpihX-Labs. Ce portail centralise les ressources numériques, la documentation technique et les démonstrations visuelles de notre écosystème souverain.

## 🚀 Navigation Rapide

- **🧪 ScienCurious Lab** : Découvrez notre projet phare d'IA éducative souveraine. [Accéder à la présentation](sciencurious_lab/presentation.md).
- **🌌 Visual Platform** : Expérimentez notre moteur de rendu 3D temps réel. [Voir la plateforme](visual/index.md).
- **🏷️ Brand Assets** : Logos, chartes graphiques et identités visuelles. [Explorer](brand/README.md).
- **🏗️ Infrastructure** : Plongée au cœur de notre cloud privé et de nos pipelines. [Détails techniques](infra/README.md).

## 🏗️ Architecture du Hub

Ce hub est auto-hébergé sur notre infrastructure **Homelab** et servi via une stack optimisée :
- **Nginx (Alpine)** : Serveur haute performance pour les assets statiques.
- **Docsify** : Moteur de documentation SPA (Single Page Application) sans build.
- **Three.js** : Visualisations immersives en temps réel.

```text
    [ VISITEUR ] --( Cloudflare Tunnel )--> [ TRAEFIK ] --( Internal Network )--> [ ASSETS HUB ]
```

---
*Propulsé par KpihX-Labs — Vers une souveraineté numérique absolue.*
