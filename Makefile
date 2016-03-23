#
# Makefile for dotfiles
#

# SHELL := /bin/bash
SHELL := $(shell echo $$SHELL)

TARGET :=  ~/

APP = stow
ARGS = -nv -t $(TARGET)
INIT_SCRIPT = configure.init


SUBDIRS = $(shell find . -maxdepth 1 -type d -not -path '*/\.*' -printf "%f " )

.PHONY: default $(SUBDIRS)

default:
	@echo "Select one of those $(SUBDIRS)"


$(SUBDIRS):
	@echo "Installing pkg $@"
	[[ -f $@/$(INIT_SCRIPT) ]] && ./$@/$(INIT_SCRIPT)
	$(APP) $(ARGS) $@




