#!/bin/bash

GODOT_VERSION=`cat godot_version.txt`

git clone https://github.com/godotengine/godot.git --depth 1 -b "$GODOT_VERSION"-stable godot-build
pushd godot-build
scons platform=x11 production=yes tools=no target=release bits=64 lto=full disable_3d=yes module_arkit_enabled=no module_assimp_enabled=no module_bullet_enabled=no module_camera_enabled=no module_csg_enabled=no module_dds_enabled=no module_enet_enabled=no module_etc_enabled=no module_gridmap_enabled=no module_hdr_enabled=no module_jsonrpc_enabled=no module_mbedtls_enabled=no module_mobile_vr_enabled=no module_opensimplex_enabled=no module_opus_enabled=no module_pvr_enabled=no module_recast_enabled=no module_regex_enabled=no module_tga_enabled=no module_theora_enabled=no module_tinyexr_enabled=no module_upnp_enabled=no module_vhacd_enabled=no module_vorbis_enabled=no module_webm_enabled=no module_webrtc_enabled=no module_websocket_enabled=no module_xatlas_unwrap_enabled=no module_svg_enabled=no optimize=size minizip=no module_freetype_enabled=no module_gdnavigation_enabled=no module_ogg_enabled=no module_minimp3_enabled=no warnings=no builtin_libpng=no
popd

cp -rfv ./godot-build/bin/godot.x11.opt.64 ./linux_x11_64_release
