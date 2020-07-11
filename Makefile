PROJ = ports
BUILD_DIR = ./_build
PWD = $(shell pwd)

#############################################################################
###   General Targets   #####################################################
#############################################################################

default: build

build: compile

clean:
	@rebar3 clean

clean-all: clean
	@rm -rf $(BUILD_DIR)

#############################################################################
###   Clojerl Targets   #####################################################
#############################################################################

compile:
	@rebar3 clojerl compile

repl:
	@rlwrap rebar3 clojerl repl
