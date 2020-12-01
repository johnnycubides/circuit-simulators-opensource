SUITE?=lepton#lepton, eda
PRJ?=voltage-divider
s?=
SIM?=$s

ss: schema
n: netlister
s: simulate

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

$(PRJ).op:
	touch $(PRJ).op
	@echo ".control" >> $(PRJ).op
	@echo "set hcopydevtype=postscript" >> $(PRJ).op
	@echo "set hcopypscolor=1" >> $(PRJ).op
	@echo "set color0 = rgb:0/0/0" >> $(PRJ).op
	@echo "set color1 = rgb:f/f/f" >> $(PRJ).op
	@echo "set color2 = rgb:f/0/0" >> $(PRJ).op
	@echo "set color3 = rgb:0/f/0" >> $(PRJ).op
	@echo "set color4 = rgb:0/0/f" >> $(PRJ).op
	@echo "set color5 = rgb:f/f/0" >> $(PRJ).op
	@echo "set color6 = rgb:0/f/f" >> $(PRJ).op
	@echo "set color7 = rgb:f/0/f" >> $(PRJ).op
	@echo "set color8 = rgb:6/f/6" >> $(PRJ).op
	@echo "set color9 = rgb:9/f/9" >> $(PRJ).op
	@echo "op" >> $(PRJ).op
	@echo "display" >> $(PRJ).op
	@echo ".endc" >> $(PRJ).op

simulate: $(PRJ).op
ifeq ($(SIM), )
	@echo "Se requiere especificar archivo de simulación, ejemplo: \n"
	@echo "make s s=example.sp\n"
else
	mkdir -p out
	ngspice -i $(PRJ).net $(PRJ).op $(SIM)
endif
