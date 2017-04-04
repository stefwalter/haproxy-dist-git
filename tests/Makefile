MODULE_LINT=/usr/lib/python2.7/site-packages/moduleframework/modulelint.py
CMD=python -m avocado run --filter-by-tags=-WIP $(MODULE_LINT) *.py *.sh

#
check-docker:
	MODULE=docker $(CMD)

check-rpm:
	MODULE=rpm $(CMD)

all: check-docker check-rpm
