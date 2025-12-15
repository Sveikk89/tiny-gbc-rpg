PROJECT      := tiny_gbc_rpg
BUILD_DIR    := build

GBDK_BIN     := tools/gbdk/bin
LCC          := $(GBDK_BIN)/lcc

ROM_RELEASE  := $(BUILD_DIR)/$(PROJECT).gbc
ROM_DEBUG    := $(BUILD_DIR)/$(PROJECT)_debug.gbc

CFLAGS_DEBUG    := -debug -Wm-yS
CFLAGS_RELEASE  := -Wa-l -Wl-m

				
SRC          := \
				src/main.c

all: \
	clean \
	release \
	debug

debug:
	@mkdir -p $(BUILD_DIR)
	@echo "Building DEBUG ROM..."
	$(LCC) $(CFLAGS_DEBUG) $(SRC) -o $(ROM_DEBUG)

release:
	@mkdir -p $(BUILD_DIR)
	@echo "Building RELEASE ROM..."
	$(LCC) $(CFLAGS_RELEASE) $(SRC) -o $(ROM_RELEASE)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean debug release
