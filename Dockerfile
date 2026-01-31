# Base image (from node:24-trixie-small) with s6 overlay packages installed.
FROM luligu/matterbridge:s6-rc-base

# Copy s6-rc rootfs files
COPY rootfs /

# Ensure matterbridge service scripts are executable (defensive)
RUN chmod +x /etc/s6-overlay/s6-rc.d/matterbridge/run /etc/s6-overlay/s6-rc.d/matterbridge/finish
