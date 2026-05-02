# ScienCurious Lab — Sovereign Educational Hub

> "L'éducation, ce n'est pas remplir des vases, mais allumer une flamme."

## 🌟 La Vision
ScienCurious Lab ambitionne de devenir le leader de l'**IA éducative souveraine**. Nous visons un écosystème où chaque établissement peut disposer de son propre "ScienCurious Lab" local : un tuteur IA visuel capable de générer des cours dynamiques et des archives de révision (vidéo/texte) sans dépendance technologique tierce.

### Le Modèle "Teacher-Pilot"
Contrairement aux solutions automatisées qui marginalisent l'enseignant, notre approche place l'humain aux commandes.
- **L'Enseignant (Le Pilote)** : Fournit la base de connaissance brute, cadre les objectifs pédagogiques et définit le fond.
- **L'IA (Le Copilote)** : Ajuste la **forme** (visualisation Manim, Three.js, schémas logiques) en fonction du profil de compréhension de chaque élève.

Cette synergie permet de simuler un **tuteur personnel** pour chaque étudiant, résolvant le problème du ratio disproportionné entre le nombre d'enseignants et d'élèves.

## 🌍 Pourquoi ScienCurious ?
Le projet est né d'un constat alarmant sur le **décrochage scolaire**, tant au **Cameroun** qu'en **France** (observé lors de mon stage aux Apprentis d'Auteuil). Le problème n'est pas le manque de volonté des jeunes, mais le format traditionnel de l'éducation qui peine à capter l'intérêt et à s'adapter aux rythmes individuels. ScienCurious utilise la puissance du visuel et de l'interactivité pour ré-engager ces profils.

## 🏗️ Architecture Technique (Souveraineté Radicale)

Nous avons fait le choix de la **Souveraineté Totale**. Pas d'Azure, pas d'AWS. Tout tourne sur notre propre infrastructure.

```text
    _______________________________________________________________
   |                                                               |
   |               [ SOUVERAINETÉ KPIHX-LABS ]                     |
   |_______________________________________________________________|
   |                                                               |
   |  HARDWARE  : Mac Studio (Inférence locale M2/M3)              |
   |  KERNEL    : Proxmox Hypervisor | Debian | Docker-Host        |
   |  NETWORK   : Cloudflare Tunnel (L7) | Traefik (Ingress)       |
   |_______________________________________________________________|
   |                                                               |
   |  [ 📁 ASSETS HUB ] <-------------------- (Ce Répertoire)      |
   |    URL : assets.kpihx-labs.com                                |
   |    Rôle : Distribution CDN souveraine des cours & médias      |
   |                                                               |
   |  [ 🧠 LOCAL INFERENCE ENGINE ]                                |
   |    Models : Qwen 2.5 (32B), Mistral Small                     |
   |    Status : Local In-memory (No Cloud API dependence)         |
   |                                                               |
   |  [ ⚙️ CI/CD PIPELINE ]                                         |
   |    Stack : GitLab Runner -> Docker Swarm -> Mirror GitHub     |
   |_______________________________________________________________|
```

### Le Flux Opérationnel (Workflow)

```text
       PROFESSEUR                          IA LOCALE (SOUVERAINE)
      (Le Pilote)                       (Le Copilote de Forme)
           |                                       |
    [ DONNÉE BRUTE ] -----------------------> [ ANALYSE LLM ]
    (Texte, Schéma)                           (Contextualisation)
           |                                       |
    [ CADRAGE PÉDA ]                          [ GÉNÉRATION CODE ]
    (Objectifs, Ton)                          (Manim / Three.js)
           |                                       |
           v                                       v
    [ VALIDATION ] <------------------------- [ RENDU VISUEL ]
           |                                       |
           +-----------------+---------------------+
                             |
                             v
                    [ HUB D'ASSETS (CDN) ]
                   (assets.kpihx-labs.com)
                             |
                  ___________|___________
                 |           |           |
             [ ÉLÈVE A ] [ ÉLÈVE B ] [ ÉLÈVE C ]
             (Profil V)  (Profil K)  (Profil A)
```


## 🚀 État d'Avancement (POC)
Actuellement au stade de **Preuve de Concept (POC)** :
- Moteur vocal fonctionnel.
- Pipeline de génération visuelle validée via API (Transition vers inférence locale en cours).
- Infrastructure de déploiement (CI/CD, Tunnels, Hyperviseur) totalement opérationnelle.
- Domaine souverain : `kpihx-labs.com`.

---

![Representative Banner](sciencurious_lab.png)
*Branding Officiel — Projet ScienCurious Lab*

