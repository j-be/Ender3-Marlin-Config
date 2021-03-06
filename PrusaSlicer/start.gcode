G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S[first_layer_bed_temperature] ; set bed temp
G28 ; home all
M190 S[first_layer_bed_temperature] ; wait for bed temp
G29 ; auto bed levelling
G1 Z50 F240

G1 X2 Y10 F3000

M104 S[first_layer_temperature] ; set extruder temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp

G1 X2 Y10 Z0.28 F3000
G92 E0
G1 Y190 E15 F1500 ; intro line
G1 X2.3 F5000
G92 E0
G1 Y10 E15 F1200 ; intro line
G92 E0
