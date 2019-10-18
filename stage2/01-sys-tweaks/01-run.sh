#!/bin/bash -e

on_chroot << EOF
systemctl disable hwclock.sh
systemctl enable ssh
EOF

install -v -d					"${ROOTFS_DIR}/root/.ssh"
install -v -m 600 /home/owner/.ssh/id_rsa.pub	"${ROOTFS_DIR}/root/.ssh/authorized_keys"
