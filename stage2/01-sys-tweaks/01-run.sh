#!/bin/bash -e

on_chroot << EOF
systemctl disable hwclock.sh
systemctl enable ssh
EOF

mkdir "${ROOTFS_DIR}/root/.ssh/"
cp "${HOME}/.ssh/id_rsa.pub" "${ROOTFS_DIR}/root/.ssh/authorized_keys"
