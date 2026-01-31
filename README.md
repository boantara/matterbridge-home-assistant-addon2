# <img src="https://matterbridge.io/assets/matterbridge.svg" alt="Matterbridge Logo" width="32px" height="32px"> &nbsp;&nbsp;&nbsp; Matterbridge Home Assistant Application

[![npm version](https://img.shields.io/npm/v/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![npm downloads](https://img.shields.io/npm/dt/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![Docker Version](https://img.shields.io/docker/v/luligu/matterbridge/latest?label=docker%20version)](https://hub.docker.com/r/luligu/matterbridge)
[![Docker Pulls](https://img.shields.io/docker/pulls/luligu/matterbridge?label=docker%20pulls)](https://hub.docker.com/r/luligu/matterbridge)
![Node.js CI](https://github.com/Luligu/matterbridge/actions/workflows/build.yml/badge.svg)
![CodeQL](https://github.com/Luligu/matterbridge/actions/workflows/codeql.yml/badge.svg)
[![codecov](https://codecov.io/gh/Luligu/matterbridge/branch/main/graph/badge.svg)](https://codecov.io/gh/Luligu/matterbridge)

[![powered by](https://img.shields.io/badge/powered%20by-matter--history-blue)](https://www.npmjs.com/package/matter-history)
[![powered by](https://img.shields.io/badge/powered%20by-node--ansi--logger-blue)](https://www.npmjs.com/package/node-ansi-logger)
[![powered by](https://img.shields.io/badge/powered%20by-node--persist--manager-blue)](https://www.npmjs.com/package/node-persist-manager)

---

If you like this project and find it useful, please consider giving it a star on [GitHub](https://github.com/Luligu/matterbridge-home-assistant-addon) and sponsoring it.

<a href="https://www.buymeacoffee.com/luligugithub"><img src="https://matterbridge.io/assets/bmc-button.svg" alt="Buy me a coffee" width="80"></a>

# Matterbridge Home Assistant Application

The official Matterbridge Home Assistant Application (formerly known as add-on) allows you to run [Matterbridge](https://matterbridge.io) with the Home Assistant Supervisor.

All Matterbridge features work correctly in the official application (e.g. you can update Matterbridge itself or the plugins without issues).

The Matterbridge storage and the Matterbridge plugins storage persist when you update, rebuild or restart the application.

When you restart, build or rebuild the application, Matterbridge will reload all plugins that were previously registered (it takes time so be patient).

The Application can run on arm64 and amd64 archs (armv7 arch has been [deprecated](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems) by Home Assistant).

The image (luligu/matterbridge:s6-rc-base) is built on **Debian 13** (trixie-slim) with **Node.js 24** and integrates the **s6-rc overlay** system.
