export PATH=/app/bin:$PATH

# LD_LIBRARY_PATH only needed if you are building without rpath
# export LD_LIBRARY_PATH=/app/lib:$LD_LIBRARY_PATH

export XDG_DATA_DIRS=/app/share:${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}
export XDG_CONFIG_DIRS=/app/etc/xdg:${XDG_CONFIG_DIRS:-/etc/xdg}

export QT_PLUGIN_PATH=/app/lib/plugins:$QT_PLUGIN_PATH
export QML2_IMPORT_PATH=/app/lib/qml:$QML2_IMPORT_PATH
