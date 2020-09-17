#!/bin/sh
#Created by Ayrton Ilagan
echo "SSR installer for mt76x8"
sleep 1
echo "Downloading files"
sleep 1
curl -s -L -o /tmp/luci-app-shadowsocksr_1.9.1-2_all.ipk https://github.com/atong27/SSR_Openwrt/raw/master/19.07.4/mt76x8/luci-app-shadowsocksr_1.9.1-2_all.ipk
curl -s -L -o /tmp/shadowsocksr-libev_2018-03-07-d63ff863800a5645aca4309d5dd5962bd1e95543_mipsel_24kc.ipk https://github.com/atong27/SSR_Openwrt/raw/master/19.07.4/mt76x8/shadowsocksr-libev_2018-03-07-d63ff863800a5645aca4309d5dd5962bd1e95543_mipsel_24kc.ipk
echo "Updating Packages"
opkg update >/dev/null
echo "Installing SSR"
opkg install coreutils-base64
opkg install openssl-util
opkg install libustream-openssl20150806
opkg install /tmp/luci-app-shadowsocksr_1.9.1-2_all.ipk
opkg install /tmp/shadowsocksr-libev_2018-03-07-d63ff863800a5645aca4309d5dd5962bd1e95543_mipsel_24kc.ipk
echo ""
echo "DONE"
sleep 1
echo "Please Restart Router"