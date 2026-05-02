# 🏗️ Sovereign Infrastructure

Détails techniques de l'infrastructure supportant le **Assets Hub** et les services **KpihX-Labs**.

## 🗺️ Topologie Réseau

```text
    [ INTERNET ]
         |
    ( Cloudflare ) <--- L7 Tunnel (Warp / Access)
         |
    [ HOMELAB GW ]
         |
    ( Traefik Ingress ) <--- Proxy inverse & Certs
         |
    +----|-------------+-------------------+
    |    v             |                   |
 [ ASSETS ]       [ SENTINEL ]       [ N8N/AI ]
 (Nginx/SPA)     (Security/IAM)     (Automation)
```

## 🛠️ Stack Technique

- **Hyperviseur** : Proxmox VE (Isolation par LXC & VM)
- **Orchestration** : Docker Swarm / Compose
- **Pipeline CI/CD** : GitLab Runner (Auto-sync GitHub)
- **Monitoring** : Sentinel (Dashboard de santé)

## 📡 Exposition Publique

L'exposition est sécurisée via **Cloudflare Zero Trust**, permettant un accès public granulaire sans exposer de ports sur la box internet.

---
*Transparence totale pour une confiance absolue.*
