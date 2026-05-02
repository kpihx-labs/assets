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

## 🌐 Exposition Publique (Cloudflare Zero Trust)

Pour rendre ce hub accessible via `assets.kpihx-labs.com`, suivez cette procédure dans le dashboard Cloudflare :

1.  **Dashboard Cloudflare** > **Zero Trust** > **Networks** > **Tunnels**.
2.  Sélectionner le tunnel actif (ex: `kpihx-labs-home`).
3.  Onglet **Public Hostname** > **Add a public hostname**.
4.  Configuration :
    *   **Subdomain** : `assets`
    *   **Domain** : `kpihx-labs.com`
    *   **Service Type** : `HTTPS` (ou HTTP si Traefik gère le SSL en amont)
    *   **URL** : `traefik:443` (ou l'IP locale du serveur `10.10.10.X:443`)
5.  **HTTP Settings** : Activer `No TLS Verify` si vous utilisez des certificats auto-signés en interne entre Cloudflare et Traefik.

---

## 🔒 Sécurité & Accès

- **Public** : Les assets sous `/sciencurious/` et la racine sont ouverts (pas de middleware d'auth).
- **Admin** : Le monitoring Traefik et les logs restent protégés par le middleware `auth` (Basic Auth) si réactivé.
- **Tunnel** : Le tunnel Cloudflare agit comme un pare-feu applicatif (WAF), filtrant le trafic malveillant avant qu'il n'atteigne le Homelab.

---
*Transparence totale pour une confiance absolue.*
