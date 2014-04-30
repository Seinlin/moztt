
ifeq ($(strip $(MOZ_FONTS_IN_DATA)), true)
# Make a symlink from /data/fonts /system/fonts
SYMLINKS := $(TARGET_OUT)/fonts
$(SYMLINKS):
	@echo "Symlink: $@"
	@rm -rf $@
	$(hide) ln -sf /data/fonts $@

ALL_DEFAULT_INSTALLED_MODULES += $(SYMLINKS)
#$(error font=$(SYMLINKS))
endif
