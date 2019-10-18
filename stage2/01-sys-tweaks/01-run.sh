#!/bin/bash -e

on_chroot << EOF
systemctl disable hwclock.sh
systemctl enable ssh
EOF


