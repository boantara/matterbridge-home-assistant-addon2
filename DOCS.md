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

# Changelogs

[Add-on Changelog](https://github.com/Luligu/matterbridge-home-assistant-addon/blob/main/CHANGELOG.md)

[Matterbridge Changelog](https://matterbridge.io/CHANGELOG.html)

# YouTube

Here’s a nice video: https://www.youtube.com/watch?v=06zzl7o_IqQ.

# Matterbridge Home Assistant plugin

The ideal companion to the add-on is the [Matterbridge Home Assistant plugin](https://github.com/Luligu/matterbridge-hass/blob/main/README.md)

## How to install the application

Click here

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FLuligu%2Fmatterbridge-home-assistant-addon)

or from your **Home Assistant** web page, go to **Settings**, select **Add-ons** and click on the **ADD-ON STORE** button.

In the upper-right corner, click on the **three dots menu**, select **Repositories** and paste this link

```
https://github.com/Luligu/matterbridge-home-assistant-addon
```

then click on **ADD**.

You should now see your Matterbridge add-on in the add-on store and be able to **INSTALL** it.

Be patient because it can take a few minutes.

Enable **Start on boot**, **Autoupdate** and **Add to sidebar**.

The Watchdog is not used because Matterbridge always restarts with the s6-rc overlay system.

Click on **Build** or **Rebuild**.

The building process on a Home Assistant Green takes around 2-3 minutes.

Starting Matterbridge the first time after a rebuild takes time too because it will reload all plugins that were already registered.

To open the Matterbridge frontend click on **Open web UI**.

You may be asked to install the Home Assistant Matter Server: confirm the default installation.

The add-on works perfectly with the beta of Matter Server (we use the same matter library).

This add-on has a configuration page where you can set the binding address for the matterbridge frontend and select to install the latest dev or the latest stable release of matterbridge.

![Configuration page](https://github.com/user-attachments/assets/5038dba2-438d-4984-bfb7-f76329fe3324)

## Supervisor behavior

To avoid having any old version of matterbridge and plugins, always update the add-on and rebuild the container when you are prompted to.

A restart or reboot of Home Assistant will update the Matterbridge version.

A restart or rebuild of the application will update the Matterbridge version.

After updating the application or rebuilding it, in the log you will see messages like this:

```
[18:16:13.122] [Matterbridge] Error parsing plugin matterbridge-example-accessory-platform. Trying to reinstall it from npm...
[18:16:16.167] [Matterbridge] Plugin matterbridge-example-accessory-platform reinstalled.
[18:16:16.190] [Matterbridge] Error parsing plugin matterbridge-example-dynamic-platform. Trying to reinstall it from npm...
[18:16:18.973] [Matterbridge] Plugin matterbridge-example-dynamic-platform reinstalled.
```

This is normal in this context and means that Matterbridge detected that the plugins are not present in the newly created container and will install them from npm using the latest stable version or the latest dev version.

If you were using a plugin installed from a tarball, you need to reinstall it manually.

If you were using a dev version of a plugin, it will be reinstalled with the latest dev version.

## How to configure the Matter mDNS

Since Home Assistant exposes a lot of interfaces to the containers, it is mandatory to set the **matter mdns interface** in the Matterbridge Settings page.

![Matterbridge settings](https://github.com/user-attachments/assets/50f89b9c-f450-4702-95cf-ee5359e2af31)

You can get the correct interface name from the **Network Adapter** panel. From the Home Assistant frontend navigate to Settings -> System -> Network.

In this case the correct name is end0 but your system can have a different interface.

![Network configuration](https://github.com/user-attachments/assets/3217ed7c-f5ae-49d9-8155-10966fd05609)
