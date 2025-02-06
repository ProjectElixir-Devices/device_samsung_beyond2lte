# Common tree for exynos9820-common
rm -rf device/samsung/exynos9820-common
git clone --depth=1 https://github.com/LineageOS/android_device_samsung_exynos9820-common -b lineage-22.1 device/samsung/exynos9820-common

# Vendor blobs for beyond2lte
rm -rf vendor/samsung/
git clone --depth=1 https://github.com/TheMuppets/proprietary_vendor_samsung_beyond2lte -b lineage-22.1 vendor/samsung/beyond2lte
git clone --depth=1 https://github.com/TheMuppets/proprietary_vendor_samsung_exynos9820-common -b lineage-22.1 vendor/samsung/exynos9820-common

# Kernel for exynos9820
rm -rf kernel/samsung/exynos9820
git clone --depth=1 https://github.com/LineageOS/android_kernel_samsung_exynos9820 -b lineage-22.1 kernel/samsung/exynos9820

# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung -b lineage-22.1 hardware/samsung
mv nfc hardware/samsung

# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone --depth=1 https://github.com/LineageOS/android_device_samsung_slsi_sepolicy -b lineage-22.1 device/samsung_slsi/sepolicy

# Linaro BSP
rm -rf hardware/samsung_slsi-linaro
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_config -b lineage-22.1 hardware/samsung_slsi-linaro/config
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_exynos -b lineage-22.1 hardware/samsung_slsi-linaro/exynos
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_exynos5 -b lineage-22.1 hardware/samsung_slsi-linaro/exynos5
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_graphics -b lineage-22.1 hardware/samsung_slsi-linaro/graphics
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_interfaces -b lineage-22.1 hardware/samsung_slsi-linaro/interfaces
git clone --depth=1 https://github.com/LineageOS/android_hardware_samsung_slsi-linaro_openmax -b lineage-22.1 hardware/samsung_slsi-linaro/openmax
