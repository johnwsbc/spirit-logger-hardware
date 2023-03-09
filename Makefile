# Must be name of the .kicad_pro, .kicad_pcb and root .kicad_sch
PROJECT_NAME = spirit_logger_hardware
# Directory containing PROJECT_NAME.kicad_* files
PROJECT_ROOT = .
# Can be a string or number indicating release revision
# REVISION = 0
# Define and set to 1 to limit info output
# KICADMK_QUIET = 1
# Define and set to 1 to append git describe tag and hash to export zips
KICADMK_APPEND_GIT ?= 1
# Define and set to 0 to not generate log of variables to include in exports
# KICADMK_INCLUDE_LOG = 1
# Define and set to 1 to print the log content at start to shell
# KICADMK_PRINT_LOG = 0
# Define the PCB copper layers
PCB_COPPER_LAYERS = "F.Cu,B.Cu,In1.Cu,In2.Cu"

BOM_CMD ?= python3 ~/KiCad/KiBoM/KiBOM_CLI.py
BOM_CMD_FLAGS = --cfg $(PROJECT_ROOT)/bom.ini

# Location of KiCad Makefile repository if not defined in environment
# KICADMK_DIR = ./kicad-makefile

include $(KICADMK_DIR)/suppliers/PCBWay.mk
include $(KICADMK_DIR)/Kicad.mk
