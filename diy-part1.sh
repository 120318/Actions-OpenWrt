#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/maxlicheng/luci-app-ssr-plus.git package/luci-app-ssr-plus
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
mkdir custom_temp
git clone https://github.com/coolsnowwolf/lede.git custom_temp/lede
cp -r custom_temp/lede/package/lean package/lean
git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git packageluci-app-v2ray



