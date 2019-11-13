NAME := oracledin
VERSION := dis-0.1

TITLE := ZELDA_DIN
MCODE := ZOOS
ROMVERSION := 0x30

FILLER = 0x00

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBASM := rgbasm
RGBFIX := rgbfix
RGBGFX := rgbgfx
RGBLINK := rgblink

RGBASM_FLAGS =
RGBLINK_FLAGS = -n $(BUILD_DIR)$(ROM_NAME).sym -m $(BUILD_DIR)$(ROM_NAME).map -l contents/contents.link -p $(FILLER)
RGBFIX_FLAGS = -v -p $(FILLER) #-Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -k 01 -l 0x33 -m 0x1B -r 3

#game.o: game.asm bank_*.asm
#	rgbasm  -o game.o game.asm

#game.gbc: game.o
#	rgblink -n game.sym -m game.map -l contents/contents.link -o $@ $<
#	rgbfix -v -p 255 $@

#	md5 $@

BUILD_DIR := build/

seasons_obj := \
$(BUILD_DIR)unsorted.o \
$(BUILD_DIR)home.o \
$(BUILD_DIR)ram.o \

.SUFFIXES:
.PHONY: all seasons clean compare tools
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: seasons
seasons: FILLER = 0x00
seasons: ROM_NAME = $(NAME)-$(VERSION)
seasons: $(NAME)-$(VERSION).gbc

clean:
	$(RM) $(seasons_obj) $(wildcard $(BUILD_DIR)$(NAME)-*.gbc) $(wildcard $(BUILD_DIR)$(NAME)-*.map) $(wildcard $(BUILD_DIR)$(NAME)-*.sym)
	rm -r $(BUILD_DIR)
	$(MAKE) clean -C tools/

compare: seasons
	@$(SHA1) -c roms.sha1

tools:
	$(MAKE) -C tools/

define DEP
$1: $2 $$(shell tools/scan_includes $2)
	$$(RGBASM) $$(RGBASM_FLAGS) -L -o $$@ $$<
endef

ifeq (,$(filter clean tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

$(foreach obj, $(seasons_obj), $(eval $(call DEP,$(obj),$(subst $(BUILD_DIR),,$(obj:.o=.asm)))))

endif

%.gbc: $(BUILD_DIR) $(seasons_obj)
	$(RGBLINK) $(RGBLINK_FLAGS) -o $(BUILD_DIR)$@ $(seasons_obj)
	$(RGBFIX) $(RGBFIX_FLAGS) $(BUILD_DIR)$@

$(BUILD_DIR):
	@echo "Making build directories..."
	mkdir -p $(BUILD_DIR)

%.2bpp: %.png
	rgbgfx -o $@ $<
