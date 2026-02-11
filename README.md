# 🛡️ AdBlock - Twitch (Android e Windows)

[![Plataformas](https://img.shields.io/badge/Plataformas-Windows%20%7C%20Android-lightgrey)]()

Este repositório reúne as melhores estratégias para bloquear anúncios em todas as camadas possíveis: DNS, aplicativos e extensões de navegador. O objetivo é oferecer uma experiência livre de anúncios no Windows e Android, especialmente contra os anúncios abusivos do YouTube e Twitch. Com o aumento absurdo de anúncios no YouTube e na Twitch, soluções isoladas muitas vezes não são suficientes.
Este repositório centraliza métodos testados e eficientes para eliminar anúncios em diferentes níveis:

**Nível DNS** – Bloqueia 70% dos anúncios em todo o sistema.

**Nível App (Android)** – Alternativa ao app oficial da Twitch em código aberto com a possibilidade de adicionar um proxy personalizado.

---

Windows (10/11)

1. Execute o script DNS.bat para adicionar o DNS personalizado do AdGuard.

2. Caso queira desativar e voltar às configurações padrão, execute o script desativar.bat

3. Se o script não funcionar, adicione o DNS manualmente conforme o tutorial em: [AdGuard DNS](https://adguard-dns.io/pt_br/public-dns.html)

**Servidores padrão:**
AdGuard DNS bloqueia anúncios e rastreadores.

```bash
IPv4: 94.140.14.14 | 94.140.15.15

IPv6: 2a10:50c0::ad1:ff | 2a10:50c0::ad2:ff
```

---

Mobile (Android)

1. Instale o Xtra no seu android [Download](https://github.com/crackededed/Xtra/releases)


2. Acesse as configurações e ative a URL de proxy personalizada:

<img src="https://raw.githubusercontent.com/zRafaX/Twitch-AdBlock/refs/heads/main/Assets/01.png" alt="Configuração 2" width="300" style="margin:10px"/>


Proxy:

```bash
https://as.luminous.dev/live/$channel?allow_source=true&allow_audio_only=true&fast_bread=true
```

Todos os anúncios serão bloqueados. Caso pare de funcionar, atualize para um proxy mais recente.

## Complemento para navegadores

#### Extensão:
1. Extensão Adguard: [Download](https://chromewebstore.google.com/detail/adguard-adblocker/bgnkhhnnamicmpeenaelnjfhikgbkllg?hl=pt-BR)
1. Extensão Adguard (Extra): [Download](https://chromewebstore.google.com/detail/adguard-extra/gkeojjjcdcopjkbelgbcpckplegclfeg)


Creditos: [Xtra](https://github.com/crackededed/Xtra) e [AdGuard](https://adguard.com)