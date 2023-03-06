# Must be name of the .kicad_pro, .kicad_pcb and root .kicad_sch
PROJECT_NAME = spirit_logger_hardware
# Directory containing PROJECT_NAME.kicad_* files
PROJECT_ROOT = .

REVISION = 0

BOM_CMD_FLAGS = --cfg $(PROJECT_ROOT)/bom.ini

# Location of KiCad Makefile repository if not defined in environment
# KICADMK_DIR = ./kicad-makefile

include $(KICADMK_DIR)/suppliers/PCBWay.mk
include $(KICADMK_DIR)/Kicad.mk
