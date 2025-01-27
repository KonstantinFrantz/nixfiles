#!/usr/bin/env bash

case "$1" in
    "up")
        sudo awg-quick up ~/vpn_conf/amnezia/amnezia_for_awg.conf
        ;;
    "down")
        sudo awg-quick down ~/vpn_conf/amnezia/amnezia_for_awg.conf
        ;;
    *)
        echo "Usage: vpn [up|down]"
        exit 1
        ;;
esac
