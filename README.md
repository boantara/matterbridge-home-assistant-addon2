# ![Matterbridge Logo](https://raw.githubusercontent.com/Luligu/matterbridge-home-assistant-addon/main/logo.png) &nbsp;&nbsp;&nbsp;Matterbridge Home Assistant Add-on

[![npm version](https://img.shields.io/npm/v/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![npm downloads](https://img.shields.io/npm/dt/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![Docker Version](https://img.shields.io/docker/v/luligu/matterbridge?label=docker%20version&sort=semver)](https://hub.docker.com/r/luligu/matterbridge)
[![Docker Pulls](https://img.shields.io/docker/pulls/luligu/matterbridge.svg)](https://hub.docker.com/r/luligu/matterbridge)
![Node.js CI](https://github.com/Luligu/matterbridge/actions/workflows/build.yml/badge.svg)
![CodeQL](https://github.com/Luligu/matterbridge/actions/workflows/codeql.yml/badge.svg)
[![codecov](https://codecov.io/gh/Luligu/matterbridge/branch/main/graph/badge.svg)](https://codecov.io/gh/Luligu/matterbridge)

[![power by](https://img.shields.io/badge/powered%20by-matter--history-blue)](https://www.npmjs.com/package/matter-history)
[![power by](https://img.shields.io/badge/powered%20by-node--ansi--logger-blue)](https://www.npmjs.com/package/node-ansi-logger)
[![power by](https://img.shields.io/badge/powered%20by-node--persist--manager-blue)](https://www.npmjs.com/package/node-persist-manager)

---

If you like this project and find it useful, please consider giving it a star on [GitHub](https://github.com/Luligu/matterbridge-home-assistant-addon) and sponsoring it.

<a href="https://www.buymeacoffee.com/luligugithub"><img src="https://matterbridge.io/bmc-button.svg" alt="Buy me a coffee" width="120"></a>

# Matterbridge Home Assistant Add-on

This repository contains the Matterbridge Official Home Assistant Add-on.

It allows you to run Matterbridge as a Home Assistant Add-on.

All Matterbridge features are correctly working in the official add-on (e.g. you can update Matterbridge itself or the plugins without issues).

The Matterbridge storage and the Matterbridge plugins storage persist when you update the Add-on, rebuild or restart it.

When you build/rebuild the add-on, Matterbridge will reload all plugins that were registered (it takes time so be patient).

The Add-on can run on arm64, amd64 archs (armv7 is [deprecated](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems) by Home Assistant). The image is built on Debian 12 (bookworm-slim) with Node.js 22.

# YouTube

There is this nice video on https://www.youtube.com/watch?v=06zzl7o_IqQ.

# Matterbridge Home Assistant plugin

The ideal companion of the add-on is the [Official Matterbridge Home Assistant plugin](https://github.com/Luligu/matterbridge-hass/blob/main/README.md)

## How to install the add-on

Click here

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FLuligu%2Fmatterbridge-home-assistant-addon)

or from your **Home Assistant** web page, go to **Settings**, select **Add-ons** and click on the **ADD-ON STORE** button.

In the upper right corner click on the **three dots menu**, select **Repositories** and paste this link

```
https://github.com/Luligu/matterbridge-home-assistant-addon
```

then click on **ADD**.

You should now see your Matterbridge add-on in the add-on store and be able to **INSTALL** it.

Be patient because it can take a few minutes.

Enable **Start on boot**, **Autoupdate** and **Add to sidebar**.

The Watchdog is not used because Matterbridge always restarts with docker.

Click on **Build** or **Rebuild**.

The building process on a Home Assistant Green takes around 2-3 minute.

Starting Matterbridge the first time after a rebuild takes time too because it will reload all plugins that were already registered.

To open the Matterbridge frontend click on **Open web UI**.

You may be asked to install the Home Assistant Matter Server: confirm the default installation.

This add-on has no configuration.

## Supervisor behavior

When the supervisor gets updated, or the host machine (like a Home Assistant Green) makes a full reboot, the supervisor recreates the matterbridge container with the last built image. This can lead to having a very old version of matterbridge and plugins.

To avoid this, update the add-on and rebuild the container when you are prompted to.

After updating the add-on or rebuilding it, in the log you will see messages like this:

```
[18:16:13.122] [Matterbridge] Error parsing plugin matterbridge-example-accessory-platform. Trying to reinstall it from npm...
[18:16:16.167] [Matterbridge] Plugin matterbridge-example-accessory-platform reinstalled.
[18:16:16.190] [Matterbridge] Error parsing plugin matterbridge-example-dynamic-platform. Trying to reinstall it from npm...
[18:16:18.973] [Matterbridge] Plugin matterbridge-example-dynamic-platform reinstalled.
```

This is normal in this context and means that Matterbridge detected that in the new image the plugins are not present and will install them from npm using the latest version.

If you were using a plugin installed from a tarball, you need to reinstall it manually.

If you were using a dev version of plugin, it will be reinstalled with the latest dev version.

## Home Assistant restart and reboot

A simple restart of Home Assistant doesn't change the Matterbridge version.

A restart (more correctly a recreate) of the Add-on will recreate the image with the Matterbridge version it was originally built with. So it can be an **old version**.

A full reboot (or a power outage) has the effect that the original add-on image is loaded with the Matterbridge version it was originally built with. So it can be an **old version**.

In this cases rebuild the add-on to get the latest versions of Matterbridge and plugins.

## How to configure the mdns

Since Home Assistant exposes a lot of interfaces to the containers, is mandatory to set the matter mdns interface in the Matterbridge Settings page.

![image](https://github.com/user-attachments/assets/bdaa91ea-4c87-4aeb-9cec-dd99be0ec8dc)

You can get the correct interface name from the Network page in the settings of Home Assistant.

In this case the correct name is end0.

![image](https://github.com/user-attachments/assets/1c09c1a4-41b5-41ed-924e-1f1086140b50)
