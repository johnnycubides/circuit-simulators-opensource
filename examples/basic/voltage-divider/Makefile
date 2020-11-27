SUITE?=lepton#lepton, eda
PRJ?=voltage-divider

s: schema
n: netlister

schema:
ifeq ($(SUITE),lepton)
	lepton-schematic $(PRJ).sch &
else
	gschem $(PRJ).sch &
endif

netlister:
ifeq ($(SUITE), lepton)
	lepton-netlist -g spice-sdb -o $(PRJ).net $(PRJ).sch
else
	gnetlist -g spice-sdb -o $(PRJ).net $(PRJ).sch
endif
