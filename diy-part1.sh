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
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/Lienol/openwrt-package.git package/luci-app-Lienol
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
rm -rf /lede/package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

#git clone https://github.com/Mrbai98/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat

#dockerman
git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker

#smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone https://github.com/ujincn/smartdns.git package/smartdns
#git clone https://github.com/ujincn/luci-app-smartdns-compat.git package/luci-app-smartdns


#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
