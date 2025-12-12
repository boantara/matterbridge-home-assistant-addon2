# Matterbridge Official Home Assistant Add-on

All notable changes to this project will be documented in this file.

If you like this project and find it useful, please consider giving it a star on GitHub at https://github.com/Luligu/matterbridge-home-assistant-addon and sponsoring it at https://buymeacoffee.com/luligugithub.

If you have problems updating the add-on after installing the new Supervisor, I suggest you uninstall the add-on, remove the add-on and install it fresh. No data will be lost.
Remeber to enable **Start on boot**, **Auto update** and **Show in sidebar**.

In the future, the add-on will be updated with each important new release of Matterbridge. This is to avoid that a full restart (like for a blackout) or a supervisor update downgrades the Matterbridge version with the latest built image of the add-on.

# Changelog

## Breaking changes

- Removed support for armv7 architecture that is [deprecated by Home Assistant](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems).

## 2.0.13 - 2025-12-09

- Updated matterbridge to [3.4.3](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#343---2025-12-12).
- Updated matterbridge-hass to [1.0.1](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#101---2025-12-12).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.12 - 2025-12-09

- Updated matterbridge to [3.4.2](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#342---2025-12-05).
- Updated matterbridge-hass to [1.0.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#100---2025-12-05).

If your system unit is FAHRENHEIT and you have any climate device, please install matterbidge-hass@dev from Install plugin.

The current dev of the plugin fixes a configuration issue for climate in FAHRENHEIT and also a possible issue with REST api connection that has been removed.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.11 - 2025-12-04

- Updated matterbridge to [3.4.1](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#341---2025-12-01).
- Reduced sleep time to 2 seconds.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.10 - 2025-11-27

- Updated matterbridge to [3.4.0](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#340---2025-11-26).
- There is this nice video on https://www.youtube.com/watch?v=06zzl7o_IqQ.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.9 - 2025-11-17

- Updated matterbridge to [3.3.8](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#338---2025-11-15).
- Updated matterbridge to [3.3.7](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#337---2025-11-08).
- Updated matterbridge-hass to [0.5.1](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#051---2025-11-14).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.8 - 2025-11-03

- Updated matterbridge to [3.3.6](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#336---2025-11-01).
- Updated matterbridge to [3.3.5](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#335---2025-10-31).
- Updated matterbridge-hass to [0.5.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#050---2025-10-31).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.7 - 2025-10-29

- Updated matterbridge to [3.3.4](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#334---2025-10-24).
- Updated matterbridge to [3.3.3](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#333---2025-10-18).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.6 - 2025-10-16

- Updated matterbridge to [3.3.2](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#332---2025-10-13).
- Updated matterbridge to [3.3.1](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#331---2025-10-12).
- Updated matterbridge to [3.3.0](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#330---2025-10-03).
- Updated matterbridge-hass to [0.4.3](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#043---2025-10-16).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.5 - 2025-09-14

- Updated matterbridge to [3.2.7](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#327---2025-09-14).
- Updated matterbridge-hass to [0.4.2](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#042---2025-09-09).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.4 - 2025-09-03

- Updated matterbridge to [3.2.5](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#325---2025-09-02).
- Updated matterbridge-hass to [0.4.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#040---2025-09-02).

**Please read the breaking changes in Hass plugin**.

A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.3 - 2025-08-29

- Updated Matterbridge to 3.2.4 and matterbridge-hass to 0.3.0. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.2 - 2025-08-20

- Updated Matterbridge to 3.2.3. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.1 - 2025-08-01

- Updated Matterbridge to 3.2.0. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.0 - 2025-07-14

- Removed configuration and unnecessary parameters in config.json.
- Removed unnecessary parameters in run.sh.
- Removed unnecessary parameters in Dockerfile.
- Added CACHEBUST to Dockerfile to force a new build.
- Updated the README.md

## 1.0.10 - 2025-07-12

- Removed useless comments from Dockerfile.

## 1.0.9 - 2025-07-12

- Fixed logo.png and added badges to README.md.

## 1.0.8 - 2025-07-12

- Fixed matterbridge.svg.

## 1.0.7 - 2025-07-12

- Added changelog.

## 1.0.6 - 2025-07-12

- Changed structure to monorepo.

## 1.0.5 - 2024-12-05

- Update README.md

## 1.0.4 - 2024-09-22

- Refactor run.sh to keep the process running in the same container.
- Fixed matterbridge routes for download (will be in matterbridge v. 1.5.9)

## 1.0.3 - 2024-09-15

- Added fixed hostname.
- Added badge in the README.md to fast add the add-on (provided by Marcel van der Veldt).

## 1.0.2 - 2024-09-13

- Added Ingress and side panel (beta).

## 1.0.1 - 2024-09-10

- Added CHANGELOG.md.
- Update README.md.

## 1.0.0 - 2024-09-09

- Initial release of the Matterbridge Official Home Assistant add-on.
