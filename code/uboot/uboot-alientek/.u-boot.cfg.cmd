cmd_u-boot.cfg := arm-linux-gnueabihf-gcc -E -Wp,-MD,./.u-boot.cfg.d -D__KERNEL__ -D__UBOOT__   -D__ARM__ -marm -mno-thumb-interwork  -mabi=aapcs-linux  -mword-relocations  -fno-pic  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe  -march=armv7-a   -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h  -nostdinc -isystem /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/4.9.4/include -include ./include/u-boot/u-boot.lds.h -DCPUDIR=arch/arm/cpu/armv7  -ansi -DDO_DEPS_ONLY -D__ASSEMBLY__ -x assembler-with-cpp -P -dM -E -o u-boot.cfg include/config.h
