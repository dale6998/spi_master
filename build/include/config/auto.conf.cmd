deps_config := \
	/home/dale/esp/esp-idf/components/app_trace/Kconfig \
	/home/dale/esp/esp-idf/components/aws_iot/Kconfig \
	/home/dale/esp/esp-idf/components/bt/Kconfig \
	/home/dale/esp/esp-idf/components/driver/Kconfig \
	/home/dale/esp/esp-idf/components/efuse/Kconfig \
	/home/dale/esp/esp-idf/components/esp32/Kconfig \
	/home/dale/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/dale/esp/esp-idf/components/esp_event/Kconfig \
	/home/dale/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/dale/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/dale/esp/esp-idf/components/esp_https_ota/Kconfig \
	/home/dale/esp/esp-idf/components/espcoredump/Kconfig \
	/home/dale/esp/esp-idf/components/ethernet/Kconfig \
	/home/dale/esp/esp-idf/components/fatfs/Kconfig \
	/home/dale/esp/esp-idf/components/freemodbus/Kconfig \
	/home/dale/esp/esp-idf/components/freertos/Kconfig \
	/home/dale/esp/esp-idf/components/heap/Kconfig \
	/home/dale/esp/esp-idf/components/libsodium/Kconfig \
	/home/dale/esp/esp-idf/components/log/Kconfig \
	/home/dale/esp/esp-idf/components/lwip/Kconfig \
	/home/dale/esp/esp-idf/components/mbedtls/Kconfig \
	/home/dale/esp/esp-idf/components/mdns/Kconfig \
	/home/dale/esp/esp-idf/components/mqtt/Kconfig \
	/home/dale/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/dale/esp/esp-idf/components/openssl/Kconfig \
	/home/dale/esp/esp-idf/components/pthread/Kconfig \
	/home/dale/esp/esp-idf/components/spi_flash/Kconfig \
	/home/dale/esp/esp-idf/components/spiffs/Kconfig \
	/home/dale/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/dale/esp/esp-idf/components/unity/Kconfig \
	/home/dale/esp/esp-idf/components/vfs/Kconfig \
	/home/dale/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/dale/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/home/dale/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/dale/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/dale/esp/spi_master/main/Kconfig.projbuild \
	/home/dale/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/dale/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
