# Android ndk makefile for ds4droid

LOCAL_PATH := $(call my-dir)

MY_LOCAL_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)


LOCAL_MODULE    		:= 	libdesmumecompat
LOCAL_C_INCLUDES		:= 	$(LOCAL_PATH)/desmume/src \
							$(LOCAL_PATH)/desmume/src/mobile \
							$(LOCAL_PATH)/desmume/src/mobile/7z/CPP \
							$(LOCAL_PATH)/desmume/src/mobile/7z/CPP/include_windows \
							$(LOCAL_PATH)/desmume/src/utils/lightning/include
						   
LOCAL_SRC_FILES			:= 	desmume/src/addons/slot1_none.cpp \
							desmume/src/addons/slot1_r4.cpp \
							desmume/src/addons/slot1_retail.cpp \
							desmume/src/addons/slot1_retail_nand.cpp \
							desmume/src/addons/slot2_expMemory.cpp \
							desmume/src/addons/slot2_gbagame.cpp \
							desmume/src/addons/slot2_guitarGrip.cpp \
							desmume/src/addons/slot2_mpcf.cpp \
							desmume/src/addons/slot2_none.cpp \
							desmume/src/addons/slot2_paddle.cpp \
							desmume/src/addons/slot2_piano.cpp \
							desmume/src/addons/slot2_rumblepak.cpp \
							desmume/src/utils/decrypt/crc.cpp \
							desmume/src/utils/decrypt/decrypt.cpp \
							desmume/src/utils/decrypt/header.cpp \
							desmume/src/utils/libfat/cache.cpp \
							desmume/src/utils/libfat/directory.cpp \
							desmume/src/utils/libfat/disc.cpp \
							desmume/src/utils/libfat/fatfile.cpp \
							desmume/src/utils/libfat/fatdir.cpp \
							desmume/src/utils/libfat/file_allocation_table.cpp \
							desmume/src/utils/libfat/filetime.cpp \
							desmume/src/utils/libfat/libfat.cpp \
							desmume/src/utils/libfat/libfat_public_api.cpp \
							desmume/src/utils/libfat/lock.cpp \
							desmume/src/utils/libfat/partition.cpp \
							desmume/src/utils/tinyxml/tinyxml.cpp \
							desmume/src/utils/tinyxml/tinyxmlparser.cpp \
							desmume/src/utils/tinyxml/tinyxmlerror.cpp \
							desmume/src/utils/tinyxml/tinystr.cpp \
							desmume/src/utils/ConvertUTF.c \
							desmume/src/utils/datetime.cpp \
							desmume/src/utils/dlditool.cpp \
							desmume/src/utils/emufat.cpp \
							desmume/src/utils/FileMap.cpp \
							desmume/src/utils/guid.cpp \
							desmume/src/utils/md5.cpp \
							desmume/src/utils/MemBuffer.cpp \
							desmume/src/utils/task.cpp \
							desmume/src/utils/vfat.cpp \
							desmume/src/utils/xstring.cpp \
							desmume/src/metaspu/metaspu.cpp \
							desmume/src/filter/2xsai.cpp \
							desmume/src/filter/bilinear.cpp \
							desmume/src/filter/epx.cpp \
							desmume/src/filter/hq2x.cpp \
							desmume/src/filter/hq4x.cpp \
							desmume/src/filter/lq2x.cpp \
							desmume/src/filter/scanline.cpp \
							desmume/src/addons.cpp \
							desmume/src/arm_instructions.cpp \
							desmume/src/ArmAnalyze.cpp \
							desmume/src/armcpu.cpp \
							desmume/src/ArmThreadedInterpreter.cpp \
							desmume/src/ArmLJit.cpp \
							desmume/src/bios.cpp \
							desmume/src/cheatSystem.cpp \
							desmume/src/common.cpp \
							desmume/src/cp15.cpp \
							desmume/src/CpuBase.cpp \
							desmume/src/debug.cpp \
							desmume/src/Disassembler.cpp \
							desmume/src/driver.cpp \
							desmume/src/emufile.cpp \
							desmume/src/FIFO.cpp \
							desmume/src/firmware.cpp \
							desmume/src/fs-linux.cpp \
							desmume/src/gfx3d.cpp \
							desmume/src/GPU.cpp \
							desmume/src/GPU_osd_stub.cpp \
							desmume/src/JitCommon.cpp \
							desmume/src/matrix.cpp \
							desmume/src/mc.cpp \
							desmume/src/MMU.cpp \
							desmume/src/movie.cpp \
							desmume/src/NDSSystem.cpp \
							desmume/src/OGLES2Render.cpp \
							desmume/src/path.cpp \
							desmume/src/rasterize.cpp \
							desmume/src/readwrite.cpp \
							desmume/src/render3D.cpp \
							desmume/src/ROMReader.cpp \
							desmume/src/rtc.cpp \
							desmume/src/saves.cpp \
							desmume/src/slot1.cpp \
							desmume/src/SPU.cpp \
							desmume/src/texcache.cpp \
							desmume/src/thumb_instructions.cpp \
							desmume/src/version.cpp \
							desmume/src/wifi.cpp \
							desmume/src/mobile/mic.cpp \
							desmume/src/mobile/throttle.cpp \
							desmume/src/mobile/android.cpp \
							desmume/src/mobile/OpenArchive.cpp \
							desmume/src/mobile/7zip.cpp \
							desmume/src/mobile/sndopensl.cpp \
							desmume/src/mobile/draw.cpp
							
LOCAL_ARM_MODE 			:= thumb
LOCAL_ARM_NEON 			:= false
LOCAL_CFLAGS			:= -DANDROID -DHAVE_LIBZ -DNO_MEMDEBUG -DNO_GPUDEBUG -DHAVE_JIT
LOCAL_STATIC_LIBRARIES 	:= sevenzip
LOCAL_LDLIBS 			:= -llog -lz -lGLESv2 -lEGL -ljnigraphics -lOpenSLES -landroid

ifeq ($(TARGET_ARCH_ABI),armeabi)
LOCAL_CFLAGS			+= -DLIGHTNING_ARM
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS			+= -DLIGHTNING_ARM
endif

ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_CFLAGS			+= -DLIGHTNING_I386
endif

include $(BUILD_SHARED_LIBRARY)

