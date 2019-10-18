#!/bin/bash -e

on_chroot << EOF
systemctl disable hwclock.sh
systemctl enable ssh
EOF

mkdir "${ROOTFS_DIR}/root/.ssh/"
cp /home/owner/.ssh/id_rsa.pub "${ROOTFS_DIR}/root/.ssh/authorized_keys"

cp /home/owner/backup.sh "${ROOTFS_DIR}/root/."
