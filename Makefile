#
# Makefile for dotfiles
#

# SHELL := /bin/bash
SHELL := $(shell echo $$SHELL)

TARGET :=  ~/
INIT_SCRIPT = configure.init


APP = stow
ARGS = -v -t $(TARGET) --ignore=.directory --ignore=$(INIT_SCRIPT)


SUBDIRS = $(shell find . -maxdepth 1 -type d -not -path '*modules' -not -path '.' -not -path '*/\.*' -printf "%f " )

.PHONY: default $(SUBDIRS) modules

default:
	@echo "Select one of those $(SUBDIRS)"


$(SUBDIRS):
	@echo "Installing pkg $@"
	@if [ -a $@/$(INIT_SCRIPT) ]; then $@/$(INIT_SCRIPT) $(TARGET); fi;
	$(APP) $(ARGS) $@



