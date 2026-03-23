# 🚀 WinTurbo 2026 — Advanced System Performance Utility

![Windows Support](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D4?style=for-the-badge&logo=windows)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Stability](https://img.shields.io/badge/Stability-Stable-orange?style=for-the-badge)

O **WinTurbo 2026** é um utilitário de otimização de baixo nível desenvolvido para maximizar a eficiência operacional do Microsoft Windows. Através da orquestração de scripts de automação e ajustes granulares no Registro do Sistema, o WinTurbo mitiga gargalos de latência e elimina redundâncias de serviços em segundo plano.

---

## 🛠️ Especificações Técnicas

O WinTurbo atua em cinco pilares críticos para a performance do hardware:

### 1. Gestão de Memória e Processos (Turbo RAM)
Interrupção seletiva de serviços não críticos que consomem ciclos de CPU e endereçamento de memória RAM, tais como:
* **Telemetria e Diagnóstico:** (`DiagTrack`)
* **Serviços de Impressão/Fax Legados:** (`Fax`)
* **Geolocalização e Mapas:** (`MapsBroker`)

### 2. Otimização de Latência (Turbo Response)
Ajuste de flags no Registro (`HKEY_CURRENT_USER`) para reduzir o *input lag* de periféricos e acelerar o tempo de renderização da interface gráfica (Shell).

### 3. Gerenciamento de Energia (Turbo Power)
Injeção do GUID de energia `e9a42b02-d5df-448d-aa00-03f14749eb61`, desbloqueando o modo **Desempenho Máximo**, que elimina o *throttling* do processador.

### 4. Higienização de Dados (Turbo Clean)
Eliminação de logs de eventos, arquivos de paginação temporária e cache de *prefetch* que fragmentam o acesso ao disco (SSD/HDD).

---

## 📊 Matriz de Impacto

| Módulo | Área Afetada | Benefício Esperado |
| :--- | :--- | :--- |
| **Storage Clean** | Disco Local (C:) | Redução de overhead e espaço em disco. |
| **Power Engine** | CPU / GPU | Estabilidade de frequências (Clock) em carga alta. |
| **Registry Tweaks** | Kernel / UI | Redução de milissegundos no tempo de resposta. |
| **Service Control** | Memória RAM | Menor número de processos em standby. |

---

## 🚀 Implementação

### Requisitos de Sistema
* **SO:** Windows 10 (Build 19041+) ou Windows 11.
* **Privilégios:** Acesso de Administrador (Token de Elevação).

### Instruções de Execução
1. Realize o download do diretório ou do arquivo `WinTurbo.bat`.
2. Clique com o botão direito sobre o arquivo e selecione **"Executar como Administrador"**.
3. Utilize a interface CLI para selecionar os módulos desejados.
4. **Nota:** É mandatória a reinicialização do sistema para a propagação das chaves de registro.

---

## 🛡️ Termos de Uso e Segurança (Disclaimer)

O uso do **WinTurbo 2026** implica na aceitação dos seguintes termos:
* **Backup:** É de responsabilidade do usuário a criação de um Ponto de Restauração antes de qualquer alteração.
* **Falso Positivo:** Devido à natureza de modificação do sistema, softwares de segurança (Antivírus) podem sinalizar o script. O código é aberto e auditável.
* **Garantia:** O software é distribuído sob a licença MIT, sem garantias implícitas de qualquer natureza.

---

## 👨‍💻 Roadmap 2026
- [x] Implementação de planos de energia Ultimate.
- [x] Automação de limpeza de cache DNS.
- [ ] Interface Gráfica (GUI) em C# WPF.
- [ ] Módulo de desinstalação de Bloatwares.

---
**WinTurbo™ 2026** — *The Next Level of Performance.*
