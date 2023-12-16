# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_scalar_parameters {
height_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
width_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
scale_factor_V { 
	dir I
	width 2
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict scalar_parameters $port_scalar_parameters


