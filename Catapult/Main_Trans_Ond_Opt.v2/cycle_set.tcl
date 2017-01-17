
# Loop constraints
directive set /Main_Trans_Ond_Opt/core/main CSTEPS_FROM {{. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x CSTEPS_FROM {{. == 1} {.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y CSTEPS_FROM {{. == 3} {.. == 0}}
directive set /Main_Trans_Ond_Opt/core/main/levels CSTEPS_FROM {{. == 4} {.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x CSTEPS_FROM {{. == 2} {.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y CSTEPS_FROM {{. == 9} {.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1 CSTEPS_FROM {{. == 2} {.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1 CSTEPS_FROM {{. == 9} {.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1 CSTEPS_FROM {{. == 2} {.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1 CSTEPS_FROM {{. == 3} {.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2 CSTEPS_FROM {{. == 1} {.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2 CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /Main_Trans_Ond_Opt/core/main/nbLevels:io_read(nbLevels:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:read_mem(Src:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:write_mem(Dst:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_y/copy_y:acc CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_x:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x/copy_x:acc CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels:acc#6 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#44 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#47 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#45 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#46 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:read_mem(Src:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:read_mem(Src:rsc.d)#1 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/moy:acc CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:read_mem(Src:rsc.d)#2 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:read_mem(Src:rsc.d)#3 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/moy#1:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/moy#2:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:write_mem(Dst:rsc.d) CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:write_mem(Dst:rsc.d)#1 CSTEPS_FROM {{.. == 6}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#1:if:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#1:if:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#1:else:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#2:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#2:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#2:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#1:mux CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#2:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/moy#5:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:write_mem(Dst:rsc.d)#2 CSTEPS_FROM {{.. == 7}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#3:if:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#3:else:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#3:mux CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#4:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#4:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#4:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#5:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#5:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#5:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/sub#5:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:write_mem(Dst:rsc.d)#3 CSTEPS_FROM {{.. == 8}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_y/passe_y:acc#48 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_x:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x/passe_x:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:if:equal CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#43 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#44 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#45 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#46 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:read_mem(Dst:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:read_mem(Dst:rsc.d)#1 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/moy#6:acc CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:read_mem(Dst:rsc.d)#2 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:read_mem(Dst:rsc.d)#3 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/moy#7:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/moy#8:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:write_mem(Src:rsc.d) CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#6:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#6:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#6:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#6:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:write_mem(Src:rsc.d)#1 CSTEPS_FROM {{.. == 6}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#7:if:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#7:if:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#7:else:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#8:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#8:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#8:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#7:mux CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#8:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/moy#11:acc CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:write_mem(Src:rsc.d)#2 CSTEPS_FROM {{.. == 7}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#9:if:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#9:else:acc#1 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#9:mux CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#10:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#10:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#10:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#11:if:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#11:if:acc#2 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#11:else:acc#1 CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/sub#11:mux CSTEPS_FROM {{.. == 5}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:write_mem(Src:rsc.d)#3 CSTEPS_FROM {{.. == 8}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#38 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_y#1/passe_y#1:acc#47 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_x#1:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/passe_x#1/passe_x#1:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1:acc#2 CSTEPS_FROM {{.. == 3}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:read_mem(Src:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:write_mem(Dst:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_y#1/copy_y#1:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_x#1:acc#1 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/copy_x#1/copy_x#1:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#20 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#21 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#22 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#23 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#24 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#27 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#28 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#29 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#30 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#31 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:mux#32 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:acc#5 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/levels/levels:acc#7 CSTEPS_FROM {{.. == 4}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:read_mem(Dst:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:write_mem(Vga:rsc.d) CSTEPS_FROM {{.. == 2}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_y#2/copy_y#2:acc CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_x#2:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Main_Trans_Ond_Opt/core/main/copy_x#2/copy_x#2:acc CSTEPS_FROM {{.. == 1}}
