API_VER_MIN=1
API_VER_MAX=30
ui_print "  The version of your API is [${API}]:"
if [[ ${API} -ge ${API_VER_MIN} && ${API} -le ${API_VER_MAX} ]]; then
  ui_print "   it's supported."
  ALLOWED=1
else
  abort "   it isn't in range [${API_VER_MIN}, ${API_VER_MAX}] or modified build.prop! Aborting."
fi
ui_print "Let's install boot animation for API version [${API}]:"
if [[ $API -ge 29 ]]; then
  mkdir -vp "${MODPATH}/system/product"
  mv -vf "${MODPATH}/system/media" "${MODPATH}/system/product/media"
  rmdir -v "${MODPATH}/system/media"
fi
