#!/bin/bash -e

on_chroot << EOF
systemctl disable hwclock.sh
systemctl enable regenerate_ssh_host_keys
systemctl enable ssh
EOF


rm -f "${ROOTFS_DIR}/etc/ssh/"ssh_host_*_key*
