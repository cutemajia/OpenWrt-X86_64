#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git oaf https://github.com/destan19/OpenAppFilter' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/jerrykuku/luci-theme-argon.git;18.06' feeds.conf.default
#mkdir feeds/lienol && cd feeds/lienol 
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
