#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#define BLE_VND_INCLUDED TRUE

#define BTM_DEF_LOCAL_NAME   "Xiaomi Mi Pad 3"

#undef VENDOR_LIB_CONF_FILE
#define VENDOR_LIB_CONF_FILE "/vendor/etc/bluetooth/bt_vendor.conf"

#undef BLUETOOTH_UART_DEVICE_PORT
#define BLUETOOTH_UART_DEVICE_PORT "/dev/ttyMT1"

#undef FW_PATCHFILE_LOCATION
#define FW_PATCHFILE_LOCATION "/vendor/firmware/bt/"

#endif /* _BDROID_BUILDCFG_H */
