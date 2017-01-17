
-- 
-- Definition of  Main_Trans_Ond_Opt
-- 
--      Tue 13 Dec 2016 10:29:35 AM CET
--      
--      Precision RTL Synthesis, 2014a.1_64-bit
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity Main_Trans_Ond_Opt_core_wait_ctrl_0 is 
   port (
      p_mgc_start_sync_mgc_bsync_vld_oswt : IN std_logic ;
      p_start : IN std_logic ;
      p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42 : IN std_logic ;
      p_Src_rsc_singleport_icwt : IN std_logic ;
      p_Vga_triosy_lz : OUT std_logic ;
      px1507 : IN std_logic ;
      p_Src_rsc_singleport_tiswt0_0n0s2 : OUT std_logic ;
      p_rst : IN std_logic ;
      p_clk : IN std_logic ;
      p_mgc_start_sync_mgc_bsync_vld_icwt : OUT std_logic) ;
end Main_Trans_Ond_Opt_core_wait_ctrl_0 ;

architecture INTERFACE of Main_Trans_Ond_Opt_core_wait_ctrl_0 is 
   signal nx27670z1, Src_rsc_singleport_tiswt0_0n0s2, nx27176z1, 
      mgc_start_sync_mgc_bsync_vld_icwt, nx4, nx52: std_logic ;

begin
   p_Src_rsc_singleport_tiswt0_0n0s2 <= Src_rsc_singleport_tiswt0_0n0s2 ;
   p_mgc_start_sync_mgc_bsync_vld_icwt <= mgc_start_sync_mgc_bsync_vld_icwt
    ;
   ix27670z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx27670z1, I0=>px1507, I1=>p_rst);
   ix44945z1538 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>p_Vga_triosy_lz, I0=>p_Src_rsc_singleport_icwt, I1=>
      Src_rsc_singleport_tiswt0_0n0s2, I2=>
      p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42);
   ix27176z39282 : LUT4
      generic map (INIT => X"9450") 
       port map ( O=>nx27176z1, I0=>p_start, I1=>
      p_mgc_start_sync_mgc_bsync_vld_oswt, I2=>
      mgc_start_sync_mgc_bsync_vld_icwt, I3=>Src_rsc_singleport_tiswt0_0n0s2
   );
   reg_mgc_start_sync_mgc_bsync_vld_icwt_I22_FD_PWR : VCC port map ( P=>nx4
   );
   reg_mgc_start_sync_mgc_bsync_vld_icwt : FDRE port map ( Q=>
      mgc_start_sync_mgc_bsync_vld_icwt, C=>p_clk, CE=>nx4, D=>nx27176z1, R
      =>p_rst);
   reg_Src_rsc_singleport_tiswt0_0n0s2_I24_FD_GND : GND port map ( G=>nx52);
   reg_Src_rsc_singleport_tiswt0_0n0s2 : FDRE port map ( Q=>
      Src_rsc_singleport_tiswt0_0n0s2, C=>p_clk, CE=>nx4, D=>nx27670z1, R=>
      nx52);
end INTERFACE ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity Main_Trans_Ond_Opt_core_fsm_0 is 
   port (
      px1785 : OUT std_logic ;
      px1780 : OUT std_logic ;
      px1779 : OUT std_logic ;
      px1778 : OUT std_logic ;
      px1773 : OUT std_logic ;
      px1772 : OUT std_logic ;
      px3155 : IN std_logic ;
      px3153 : IN std_logic ;
      px1761 : OUT std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9 : IN std_logic_vector
       (8 DOWNTO 1) ;
      px3310 : IN std_logic ;
      px3287 : IN std_logic ;
      px3247 : IN std_logic ;
      px3217 : IN std_logic ;
      px3246 : IN std_logic ;
      px3216 : IN std_logic ;
      px3308 : IN std_logic ;
      px3245 : IN std_logic ;
      px3215 : IN std_logic ;
      px3307 : IN std_logic ;
      px3284 : IN std_logic ;
      px3306 : IN std_logic ;
      px3283 : IN std_logic ;
      px3243 : IN std_logic ;
      px3213 : IN std_logic ;
      px3194 : IN std_logic ;
      px3242 : IN std_logic ;
      px3212 : IN std_logic ;
      px3193 : IN std_logic ;
      px3241 : IN std_logic ;
      px3211 : IN std_logic ;
      px3303 : IN std_logic ;
      px3257 : IN std_logic ;
      px1629 : OUT std_logic ;
      px1627 : OUT std_logic ;
      px1625 : OUT std_logic ;
      px1622 : OUT std_logic ;
      px1619 : OUT std_logic ;
      px1617 : OUT std_logic ;
      px1614 : OUT std_logic ;
      px3140 : IN std_logic ;
      px3207 : IN std_logic ;
      px1611 : OUT std_logic ;
      px1610 : OUT std_logic ;
      px1609 : OUT std_logic ;
      p_rtlcn19652 : IN std_logic ;
      p_rtlcn19651 : IN std_logic ;
      p_rtlcn19650 : IN std_logic ;
      p_rtlcn19649 : IN std_logic ;
      p_nbus_Vga_rsc_singleport_data_in : IN std_logic_vector (7 DOWNTO 0) ;
      
      px3336 : IN std_logic ;
      p_nbus_Src_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0)
       ;
      px1601 : OUT std_logic ;
      px3335 : IN std_logic ;
      px1600 : OUT std_logic ;
      px3334 : IN std_logic ;
      px1599 : OUT std_logic ;
      px3333 : IN std_logic ;
      px1598 : OUT std_logic ;
      px3332 : IN std_logic ;
      px1597 : OUT std_logic ;
      px3331 : IN std_logic ;
      px1596 : OUT std_logic ;
      px3330 : IN std_logic ;
      px1595 : OUT std_logic ;
      px3329 : IN std_logic ;
      px1594 : OUT std_logic ;
      px1557 : OUT std_logic ;
      px3248 : IN std_logic ;
      px3244 : IN std_logic ;
      px3214 : IN std_logic ;
      px1551 : OUT std_logic ;
      px1549 : IN std_logic ;
      px1550 : OUT std_logic ;
      px1541 : OUT std_logic ;
      px1540 : OUT std_logic ;
      px1536 : OUT std_logic ;
      px1533 : OUT std_logic ;
      px1509 : OUT std_logic ;
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
       : IN std_logic ;
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
       : IN std_logic ;
      p_mgc_start_sync_mgc_bsync_vld_oswt : IN std_logic ;
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt : IN 
      std_logic ;
      p_start : IN std_logic ;
      p_Dst_rsc_singleport_oswt : IN std_logic ;
      p_Src_rsc_singleport_oswt : IN std_logic ;
      px3222 : IN std_logic ;
      px3209 : IN std_logic ;
      px1783 : IN std_logic ;
      px3221 : IN std_logic ;
      px3208 : IN std_logic ;
      px1481 : OUT std_logic ;
      px1480 : OUT std_logic ;
      px1479 : OUT std_logic ;
      px1478 : OUT std_logic ;
      px1477 : OUT std_logic ;
      px3249 : IN std_logic ;
      px1476 : OUT std_logic ;
      px1482 : OUT std_logic ;
      px1483 : OUT std_logic ;
      px1466 : OUT std_logic ;
      px1465 : OUT std_logic ;
      px3108 : IN std_logic ;
      px1464 : OUT std_logic ;
      px3109 : IN std_logic ;
      px1679 : IN std_logic ;
      px1463 : OUT std_logic ;
      px1681 : IN std_logic ;
      px1462 : OUT std_logic ;
      px1461 : OUT std_logic ;
      px1460 : OUT std_logic ;
      px1459 : OUT std_logic ;
      px1458 : OUT std_logic ;
      px1457 : OUT std_logic ;
      px3132 : IN std_logic ;
      px1448 : OUT std_logic ;
      px3133 : IN std_logic ;
      px1447 : OUT std_logic ;
      px3134 : IN std_logic ;
      px1446 : OUT std_logic ;
      px3135 : IN std_logic ;
      px1445 : OUT std_logic ;
      px3136 : IN std_logic ;
      px1444 : OUT std_logic ;
      px3137 : IN std_logic ;
      px1443 : OUT std_logic ;
      px3138 : IN std_logic ;
      px1442 : OUT std_logic ;
      px3139 : IN std_logic ;
      px1441 : OUT std_logic ;
      px1440 : OUT std_logic ;
      px1437 : OUT std_logic ;
      px1436 : OUT std_logic ;
      px1435 : OUT std_logic ;
      px1434 : OUT std_logic ;
      px1433 : OUT std_logic ;
      px1432 : OUT std_logic ;
      px1431 : OUT std_logic ;
      px1430 : OUT std_logic ;
      px1429 : OUT std_logic ;
      px1428 : OUT std_logic ;
      px1427 : OUT std_logic ;
      px1426 : OUT std_logic ;
      px1425 : OUT std_logic ;
      px1424 : OUT std_logic ;
      px1423 : OUT std_logic ;
      px1422 : OUT std_logic ;
      px3154 : IN std_logic ;
      px1667 : IN std_logic ;
      px1421 : OUT std_logic ;
      px1669 : IN std_logic ;
      px1420 : OUT std_logic ;
      px3156 : IN std_logic ;
      px1419 : OUT std_logic ;
      px3157 : IN std_logic ;
      px1418 : OUT std_logic ;
      px3158 : IN std_logic ;
      px1417 : OUT std_logic ;
      px3159 : IN std_logic ;
      px1416 : OUT std_logic ;
      px1415 : OUT std_logic ;
      px3177 : IN std_logic ;
      p_z_out_14_8 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3 : IN std_logic_vector
       (8 DOWNTO 1) ;
      px1406 : OUT std_logic ;
      px3178 : IN std_logic ;
      p_z_out_14_7 : IN std_logic ;
      px1405 : OUT std_logic ;
      px3179 : IN std_logic ;
      p_z_out_14_6 : IN std_logic ;
      px1404 : OUT std_logic ;
      px3180 : IN std_logic ;
      p_z_out_14_5 : IN std_logic ;
      px1403 : OUT std_logic ;
      px3181 : IN std_logic ;
      p_z_out_14_4 : IN std_logic ;
      px1402 : OUT std_logic ;
      px3182 : IN std_logic ;
      p_z_out_14_3 : IN std_logic ;
      px1401 : OUT std_logic ;
      px3183 : IN std_logic ;
      p_z_out_14_2 : IN std_logic ;
      px1400 : OUT std_logic ;
      px3184 : IN std_logic ;
      p_rtlcn30427 : IN std_logic ;
      p_z_out_14_1 : IN std_logic ;
      px1399 : OUT std_logic ;
      px1398 : OUT std_logic ;
      px1395 : OUT std_logic ;
      px1394 : OUT std_logic ;
      px1393 : OUT std_logic ;
      px1392 : OUT std_logic ;
      px1391 : OUT std_logic ;
      px1390 : OUT std_logic ;
      px1389 : OUT std_logic ;
      px1388 : OUT std_logic ;
      px1387 : OUT std_logic ;
      px1386 : OUT std_logic ;
      px1385 : OUT std_logic ;
      px1384 : OUT std_logic ;
      px1383 : OUT std_logic ;
      px1382 : OUT std_logic ;
      px1381 : OUT std_logic ;
      px1380 : OUT std_logic ;
      px1379 : OUT std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1 : IN 
      std_logic_vector (8 DOWNTO 0) ;
      px1377 : OUT std_logic ;
      px1376 : OUT std_logic ;
      px1375 : OUT std_logic ;
      px1374 : OUT std_logic ;
      px1373 : OUT std_logic ;
      px1372 : OUT std_logic ;
      px1371 : OUT std_logic ;
      px1370 : OUT std_logic ;
      px1369 : OUT std_logic ;
      px1368 : OUT std_logic ;
      px1367 : OUT std_logic ;
      px1366 : OUT std_logic ;
      px1365 : OUT std_logic ;
      px1364 : OUT std_logic ;
      px1363 : OUT std_logic ;
      px1362 : OUT std_logic ;
      px1361 : OUT std_logic ;
      px1360 : OUT std_logic ;
      px1359 : OUT std_logic ;
      px1358 : OUT std_logic ;
      px1357 : OUT std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1 : IN 
      std_logic_vector (8 DOWNTO 0) ;
      px1356 : OUT std_logic ;
      px1355 : OUT std_logic ;
      px1354 : OUT std_logic ;
      px1353 : OUT std_logic ;
      px1352 : OUT std_logic ;
      px1351 : OUT std_logic ;
      px1350 : OUT std_logic ;
      px1349 : OUT std_logic ;
      px1348 : OUT std_logic ;
      px1345 : OUT std_logic ;
      px1336 : OUT std_logic ;
      px1335 : OUT std_logic ;
      px1334 : OUT std_logic ;
      px1333 : OUT std_logic ;
      px1332 : OUT std_logic ;
      px1331 : OUT std_logic ;
      px1330 : OUT std_logic ;
      px1329 : OUT std_logic ;
      px3218 : IN std_logic ;
      px1328 : OUT std_logic ;
      px1327 : OUT std_logic ;
      px3250 : IN std_logic ;
      px1326 : OUT std_logic ;
      px3251 : IN std_logic ;
      px1325 : OUT std_logic ;
      px3252 : IN std_logic ;
      px1324 : OUT std_logic ;
      px3253 : IN std_logic ;
      px1323 : OUT std_logic ;
      px1322 : OUT std_logic ;
      px3254 : IN std_logic ;
      px3107 : IN std_logic ;
      px1321 : OUT std_logic ;
      px3255 : IN std_logic ;
      px1320 : OUT std_logic ;
      px1318 : OUT std_logic ;
      px1317 : OUT std_logic ;
      px1316 : OUT std_logic ;
      px3104 : IN std_logic ;
      px1315 : OUT std_logic ;
      px1314 : OUT std_logic ;
      px1313 : OUT std_logic ;
      px1312 : OUT std_logic ;
      px1311 : OUT std_logic ;
      px1310 : OUT std_logic ;
      px1309 : OUT std_logic ;
      px1308 : OUT std_logic ;
      px1303 : OUT std_logic ;
      px1302 : OUT std_logic ;
      px1301 : OUT std_logic ;
      px1300 : OUT std_logic ;
      px1299 : OUT std_logic ;
      px1298 : OUT std_logic ;
      px1297 : OUT std_logic ;
      px1293 : OUT std_logic ;
      px1291 : OUT std_logic ;
      px1290 : OUT std_logic ;
      px1289 : OUT std_logic ;
      px1288 : OUT std_logic ;
      px1287 : OUT std_logic ;
      px1286 : OUT std_logic ;
      px1281 : OUT std_logic ;
      px3320 : IN std_logic ;
      px3319 : IN std_logic ;
      px3318 : IN std_logic ;
      px3220 : IN std_logic ;
      px3219 : IN std_logic ;
      px3124 : IN std_logic ;
      px3116 : IN std_logic ;
      px3273 : IN std_logic ;
      px3125 : IN std_logic ;
      px3274 : IN std_logic ;
      px3126 : IN std_logic ;
      px3275 : IN std_logic ;
      px3127 : IN std_logic ;
      px3128 : IN std_logic ;
      px3120 : IN std_logic ;
      px3129 : IN std_logic ;
      px3121 : IN std_logic ;
      px3278 : IN std_logic ;
      px3130 : IN std_logic ;
      px3279 : IN std_logic ;
      px3131 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp : IN 
      std_logic_vector (8 DOWNTO 0) ;
      p_nbus_Src_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15 : IN std_logic_vector
       (7 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp : IN 
      std_logic_vector (7 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1 : IN 
      std_logic_vector (7 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm : IN 
      std_logic_vector (15 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp : IN 
      std_logic_vector (7 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm : IN 
      std_logic_vector (14 DOWNTO 6) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6 : IN 
      std_logic_vector (1 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7 : IN 
      std_logic_vector (1 DOWNTO 0) ;
      px1500 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5 : IN 
      std_logic_vector (1 DOWNTO 0) ;
      px3195 : IN std_logic ;
      px3196 : IN std_logic ;
      px3110 : IN std_logic ;
      px3197 : IN std_logic ;
      px3111 : IN std_logic ;
      px3198 : IN std_logic ;
      px3112 : IN std_logic ;
      px3199 : IN std_logic ;
      px3113 : IN std_logic ;
      px3200 : IN std_logic ;
      px3114 : IN std_logic ;
      px3115 : IN std_logic ;
      px3295 : IN std_logic ;
      px3161 : IN std_logic ;
      px3296 : IN std_logic ;
      px3162 : IN std_logic ;
      px3297 : IN std_logic ;
      px3163 : IN std_logic ;
      px3298 : IN std_logic ;
      px3164 : IN std_logic ;
      px3299 : IN std_logic ;
      px3165 : IN std_logic ;
      px3300 : IN std_logic ;
      px3166 : IN std_logic ;
      px3301 : IN std_logic ;
      px3167 : IN std_logic ;
      px3302 : IN std_logic ;
      px3168 : IN std_logic ;
      p_nbus_Dst_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17 : IN std_logic_vector
       (8 DOWNTO 0) ;
      p_nbus_Vga_rsc_singleport_addr : IN std_logic_vector (16 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp : IN 
      std_logic_vector (8 DOWNTO 8) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm : IN 
      std_logic_vector (16 DOWNTO 1) ;
      px1208 : OUT std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm : IN 
      std_logic_vector (15 DOWNTO 0) ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva : IN 
      std_logic_vector (8 DOWNTO 0) ;
      px3096 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm : IN 
      std_logic_vector (9 DOWNTO 1) ;
      px3097 : IN std_logic ;
      px3098 : IN std_logic ;
      px3099 : IN std_logic ;
      px3100 : IN std_logic ;
      px3101 : IN std_logic ;
      px3102 : IN std_logic ;
      px3103 : IN std_logic ;
      p_reg_passe_y_1_acc_44_sdt_tmp_6_1 : IN std_logic ;
      px3264 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7 : IN 
      std_logic_vector (1 DOWNTO 1) ;
      px3141 : IN std_logic ;
      px3224 : IN std_logic ;
      px3316 : IN std_logic ;
      px3265 : IN std_logic ;
      px3142 : IN std_logic ;
      px3225 : IN std_logic ;
      px3266 : IN std_logic ;
      px3143 : IN std_logic ;
      px3226 : IN std_logic ;
      px3267 : IN std_logic ;
      px3144 : IN std_logic ;
      px3227 : IN std_logic ;
      px3268 : IN std_logic ;
      px3145 : IN std_logic ;
      px3228 : IN std_logic ;
      px3269 : IN std_logic ;
      px3146 : IN std_logic ;
      px3270 : IN std_logic ;
      px3229 : IN std_logic ;
      px3160 : IN std_logic ;
      px1159 : OUT std_logic ;
      px1664 : OUT std_logic ;
      px1068 : OUT std_logic ;
      px3309 : IN std_logic ;
      px3286 : IN std_logic ;
      px1660 : OUT std_logic ;
      px1067 : OUT std_logic ;
      px3285 : IN std_logic ;
      px1656 : OUT std_logic ;
      px1066 : OUT std_logic ;
      px1651 : OUT std_logic ;
      px1065 : OUT std_logic ;
      px1646 : OUT std_logic ;
      px1064 : OUT std_logic ;
      px3305 : IN std_logic ;
      px3282 : IN std_logic ;
      px1642 : OUT std_logic ;
      px1063 : OUT std_logic ;
      px3304 : IN std_logic ;
      px3281 : IN std_logic ;
      px1638 : OUT std_logic ;
      px1062 : OUT std_logic ;
      px3280 : IN std_logic ;
      px1634 : OUT std_logic ;
      px1061 : OUT std_logic ;
      p_rtlcn19655 : IN std_logic ;
      px1051 : OUT std_logic ;
      px3258 : IN std_logic ;
      px3206 : IN std_logic ;
      p_rtlcn19654 : IN std_logic ;
      px1050 : OUT std_logic ;
      px3205 : IN std_logic ;
      p_rtlcn19653 : IN std_logic ;
      px1049 : OUT std_logic ;
      px1607 : OUT std_logic ;
      px3204 : IN std_logic ;
      px3152 : IN std_logic ;
      px1048 : OUT std_logic ;
      px3150 : IN std_logic ;
      px3149 : IN std_logic ;
      px1606 : OUT std_logic ;
      px1047 : OUT std_logic ;
      px3202 : IN std_logic ;
      px3148 : IN std_logic ;
      px1604 : IN std_logic ;
      px1605 : OUT std_logic ;
      px1046 : OUT std_logic ;
      px3201 : IN std_logic ;
      px3147 : IN std_logic ;
      px1602 : IN std_logic ;
      px1603 : OUT std_logic ;
      px1608 : IN std_logic ;
      px1045 : OUT std_logic ;
      px3203 : IN std_logic ;
      px1763 : OUT std_logic ;
      px1766 : OUT std_logic ;
      px1770 : OUT std_logic ;
      px1774 : IN std_logic ;
      px1775 : IN std_logic ;
      px1009 : OUT std_logic ;
      px1006 : OUT std_logic ;
      px1544 : IN std_logic ;
      px1545 : IN std_logic ;
      px1548 : IN std_logic ;
      px3259 : IN std_logic ;
      px3151 : IN std_logic ;
      px1004 : OUT std_logic ;
      px1781 : IN std_logic ;
      px1790 : OUT std_logic ;
      px1003 : OUT std_logic ;
      px986 : OUT std_logic ;
      px985 : OUT std_logic ;
      px984 : OUT std_logic ;
      px3261 : IN std_logic ;
      px3260 : IN std_logic ;
      px3105 : IN std_logic ;
      px983 : OUT std_logic ;
      px3262 : IN std_logic ;
      px3256 : IN std_logic ;
      px982 : OUT std_logic ;
      px981 : OUT std_logic ;
      px980 : OUT std_logic ;
      p_st_copy_y_2_2_tr0 : IN std_logic ;
      p_st_copy_y_1_2_tr0 : IN std_logic ;
      px3317 : IN std_logic ;
      px3294 : IN std_logic ;
      p_rtlcn30054 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2 : IN std_logic_vector
       (8 DOWNTO 8) ;
      p_exit_passe_y_1_sva : IN std_logic ;
      p_exit_passe_y_sva : IN std_logic ;
      p_rtlcn30248 : IN std_logic ;
      p_st_copy_y_2_tr0 : IN std_logic ;
      px3272 : IN std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11 : IN std_logic_vector
       (8 DOWNTO 1) ;
      p_nbus_Src_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0)
       ;
      px3117 : IN std_logic ;
      px3118 : IN std_logic ;
      px3119 : IN std_logic ;
      px3276 : IN std_logic ;
      px3277 : IN std_logic ;
      px3122 : IN std_logic ;
      px3123 : IN std_logic ;
      px1501 : IN std_logic ;
      px1784 : OUT std_logic ;
      px1786 : IN std_logic ;
      px1788 : OUT std_logic ;
      px3311 : IN std_logic ;
      px3312 : IN std_logic ;
      px3313 : IN std_logic ;
      px3314 : IN std_logic ;
      px3315 : IN std_logic ;
      p_Src_rsc_singleport_re : OUT std_logic ;
      p_Src_rsc_singleport_we : OUT std_logic ;
      px1719 : IN std_logic ;
      px3169 : IN std_logic ;
      p_nbus_Dst_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0)
       ;
      px1722 : IN std_logic ;
      px3170 : IN std_logic ;
      px1725 : IN std_logic ;
      px3171 : IN std_logic ;
      px1728 : IN std_logic ;
      px3172 : IN std_logic ;
      px1731 : IN std_logic ;
      px3173 : IN std_logic ;
      px1734 : IN std_logic ;
      px3174 : IN std_logic ;
      px1737 : IN std_logic ;
      px3175 : IN std_logic ;
      px1740 : IN std_logic ;
      px3176 : IN std_logic ;
      px1209 : IN std_logic ;
      px1205 : IN std_logic ;
      px1202 : IN std_logic ;
      px1199 : IN std_logic ;
      px1196 : IN std_logic ;
      px1193 : IN std_logic ;
      px1190 : IN std_logic ;
      px1187 : IN std_logic ;
      px1183 : IN std_logic ;
      px1503 : IN std_logic ;
      px3288 : IN std_logic ;
      px1502 : OUT std_logic ;
      px3289 : IN std_logic ;
      px3290 : IN std_logic ;
      px3291 : IN std_logic ;
      px3292 : IN std_logic ;
      px3293 : IN std_logic ;
      p_Dst_rsc_singleport_re : OUT std_logic ;
      p_Dst_rsc_singleport_we : OUT std_logic ;
      p_Vga_rsc_singleport_we : OUT std_logic ;
      p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output : OUT std_logic_vector
       (41 DOWNTO 41) ;
      p_fsm_output_9 : OUT std_logic ;
      p_fsm_output_11 : OUT std_logic ;
      p_fsm_output_13 : OUT std_logic ;
      p_fsm_output_15 : OUT std_logic ;
      p_fsm_output_16 : OUT std_logic ;
      p_fsm_output_21 : OUT std_logic ;
      p_fsm_output_23 : OUT std_logic ;
      p_fsm_output_25 : OUT std_logic ;
      p_fsm_output_30 : OUT std_logic ;
      p_fsm_output_33 : OUT std_logic ;
      p_fsm_output_38 : OUT std_logic ;
      p_rst : IN std_logic ;
      px1507 : OUT std_logic ;
      p_clk : IN std_logic ;
      p_fsm_output_1_0_42 : OUT std_logic) ;
end Main_Trans_Ond_Opt_core_fsm_0 ;

architecture INTERFACE of Main_Trans_Ond_Opt_core_fsm_0 is 
   signal nx62052z3, nx62052z6, nx63040z2, nx63040z3, nx63046z1, nx64045z4, 
      nx64045z7, nx64045z10, nx48054z18, nx48054z17, nx466z4, nx466z11, 
      nx466z18, nx466z25, nx466z31, nx13465z2, nx14455z2, nx55033z21, 
      nx55033z3, nx21438z2, nx48054z2, nx62052z10, nx13604z4, nx13604z3, 
      nx13604z7, nx13604z9, nx13604z11, nx13604z16, nx13604z13, nx13604z19, 
      nx13604z27, nx13604z23, nx29421z1, nx29420z1, nx39387z2, nx14457z2, 
      nx55033z18, nx55033z15, nx55033z12, nx55033z8, nx55033z4, nx44375z2, 
      nx44375z4, nx44375z5, nx44375z6, nx44375z7, nx48054z15, nx48054z12, 
      nx13217z4, nx13217z5, nx44375z8, nx51360z2, nx51360z4, nx51360z6, 
      nx466z30, nx466z24, nx466z17, nx40014z1, nx41011z1, nx41011z3, 
      nx41011z4, nx18955z2, nx17958z3, nx17958z4, nx16961z3, nx43439z1, 
      nx43439z2, nx64935z3, nx396z3, nx6378z2, nx6378z3, nx48054z9, 
      nx48054z6, nx9749z2, nx9475z1, nx9479z1, nx9750z2, nx9751z2, nx10470z1, 
      nx39395z2, nx9752z2, nx10475z1, nx9753z2, nx11467z1, nx466z10, nx466z3, 
      nx48054z5, nx11471z1, nx9754z2, nx12462z1, nx9755z2, nx9756z2, 
      nx12466z1, nx15454z1, nx15455z1, nx15456z1, nx15458z1, nx64045z9, 
      nx64045z6, nx64045z3, nx31411z2, nx62052z2, nx33411z2, nx46374z2, 
      nx51360z3, nx44375z3, nx13217z2, nx15598z2, nx48054z23, nx1463z2, 
      nx55033z2, nx13604z2, nx466z2, nx48054z4, nx7323z1, nx6326z1, nx5329z1, 
      nx4332z1, nx3335z1, nx2338z1, nx1341z1, nx344z1, nx42008z3, nx42008z2, 
      nx42008z1, nx43005z3, nx43005z2, nx43005z1, nx44002z3, nx44002z2, 
      nx44002z1, nx44999z3, nx44999z2, nx44999z1, nx45996z3, nx45996z2, 
      nx45996z1, nx19952z3, nx19952z2, nx19952z1, nx18955z4, nx18955z1, 
      nx17958z1, nx62052z9, nx62052z5, nx16961z5, nx16961z2, nx15964z3, 
      nx15964z2, nx14967z2, nx14967z1, nx13217z3, nx13970z3, nx13970z2, 
      nx13604z17, nx12973z1, nx15964z1, nx13970z1, nx13604z25, nx11976z1, 
      nx13604z21, nx10979z1, nx41011z2, nx9374z3, nx10371z3, nx11368z3, 
      nx12365z3, nx13362z3, nx14359z3, nx15356z3, nx16353z3, nx44436z3, 
      nx44436z2, nx45433z3, nx45433z2, nx46430z3, nx46430z2, nx47427z3, 
      nx47427z2, nx48424z3, nx48424z2, nx49421z3, nx49421z2, nx62941z3, 
      nx62941z2, nx63938z3, nx63938z2, nx64935z5, nx64935z2, nx396z4, 
      nx396z1, nx16961z1, nx1393z3, nx1393z2, nx1393z1, nx2390z3, nx2390z2, 
      nx2390z1, nx3387z3, nx3387z2, nx3387z1, nx4384z3, nx4384z2, nx4384z1, 
      nx5381z3, nx5381z2, nx5381z1, nx33411z3, nx6378z1, nx51360z5, 
      nx21580z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_fsm_output: std_logic_vector
    (41 DOWNTO 39) ;
   
   signal nx20583z1, fsm_output_4, nx17592z1, fsm_output_5, nx16595z1, 
      fsm_output_6, nx15598z1, fsm_output_7, nx14601z1, fsm_output_8, 
      nx13604z1, fsm_output_9, fsm_output_10, fsm_output_11, fsm_output_12, 
      fsm_output_13, fsm_output_14, fsm_output_15, fsm_output_16, 
      fsm_output_17, nx4456z1, fsm_output_18, nx3459z1, fsm_output_19, 
      nx1463z1, fsm_output_20, nx466z1, fsm_output_21, fsm_output_22, 
      fsm_output_23, fsm_output_24, fsm_output_25, fsm_output_26, 
      fsm_output_27, fsm_output_28, fsm_output_29, nx56030z1, fsm_output_30, 
      nx55033z1, fsm_output_31, nx54036z1, fsm_output_32, nx53039z1, 
      fsm_output_33, fsm_output_34, fsm_output_35, nx50048z1, fsm_output_36, 
      nx49051z1, fsm_output_37, nx48054z22, fsm_output_38, fsm_output_39, 
      fsm_output_40, nx44064z1, fsm_output_41, nx48054z3, nx48054z1, 
      fsm_output_1_0_42: std_logic ;

begin
   px1778 <= nx63040z2 ;
   px1773 <= nx63046z1 ;
   px1482 <= nx29421z1 ;
   px1483 <= nx29420z1 ;
   px1664 <= nx9475z1 ;
   px1660 <= nx9479z1 ;
   px1656 <= nx10470z1 ;
   px1651 <= nx10475z1 ;
   px1646 <= nx11467z1 ;
   px1642 <= nx11471z1 ;
   px1638 <= nx12462z1 ;
   px1634 <= nx12466z1 ;
   px1607 <= nx15454z1 ;
   px1606 <= nx15455z1 ;
   px1605 <= nx15456z1 ;
   px1603 <= nx15458z1 ;
   px1763 <= nx64045z9 ;
   px1766 <= nx64045z6 ;
   px1770 <= nx64045z3 ;
   px1790 <= nx62052z2 ;
   px1784 <= nx62052z9 ;
   px1788 <= nx62052z5 ;
   px1502 <= nx16961z1 ;
   p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output(41) <= 
   Main_Trans_Ond_Opt_core_inst_fsm_output(40) ;
   p_fsm_output_9 <= fsm_output_9 ;
   p_fsm_output_11 <= fsm_output_11 ;
   p_fsm_output_13 <= fsm_output_13 ;
   p_fsm_output_15 <= fsm_output_15 ;
   p_fsm_output_16 <= fsm_output_16 ;
   p_fsm_output_21 <= fsm_output_21 ;
   p_fsm_output_23 <= fsm_output_23 ;
   p_fsm_output_25 <= fsm_output_25 ;
   p_fsm_output_30 <= fsm_output_30 ;
   p_fsm_output_33 <= fsm_output_33 ;
   p_fsm_output_38 <= fsm_output_38 ;
   px1507 <= nx48054z1 ;
   p_fsm_output_1_0_42 <= fsm_output_1_0_42 ;
   ix48054z41780 : FDRE port map ( Q=>fsm_output_1_0_42, C=>p_clk, CE=>
      nx48054z1, D=>nx48054z3, R=>p_rst);
   reg_state_var_41 : FDRE port map ( Q=>fsm_output_41, C=>p_clk, CE=>
      nx48054z1, D=>nx44064z1, R=>p_rst);
   reg_state_var_40 : FDRE port map ( Q=>fsm_output_40, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_39, R=>p_rst);
   reg_state_var_39 : FDRE port map ( Q=>fsm_output_39, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_38, R=>p_rst);
   reg_state_var_38 : FDRE port map ( Q=>fsm_output_38, C=>p_clk, CE=>
      nx48054z1, D=>nx48054z22, R=>p_rst);
   reg_state_var_37 : FDRE port map ( Q=>fsm_output_37, C=>p_clk, CE=>
      nx48054z1, D=>nx49051z1, R=>p_rst);
   reg_state_var_36 : FDRE port map ( Q=>fsm_output_36, C=>p_clk, CE=>
      nx48054z1, D=>nx50048z1, R=>p_rst);
   reg_state_var_35 : FDRE port map ( Q=>fsm_output_35, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_34, R=>p_rst);
   reg_state_var_34 : FDRE port map ( Q=>fsm_output_34, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_33, R=>p_rst);
   reg_state_var_33 : FDRE port map ( Q=>fsm_output_33, C=>p_clk, CE=>
      nx48054z1, D=>nx53039z1, R=>p_rst);
   reg_state_var_32 : FDRE port map ( Q=>fsm_output_32, C=>p_clk, CE=>
      nx48054z1, D=>nx54036z1, R=>p_rst);
   reg_state_var_31 : FDRE port map ( Q=>fsm_output_31, C=>p_clk, CE=>
      nx48054z1, D=>nx55033z1, R=>p_rst);
   reg_state_var_30 : FDRE port map ( Q=>fsm_output_30, C=>p_clk, CE=>
      nx48054z1, D=>nx56030z1, R=>p_rst);
   reg_state_var_29 : FDRE port map ( Q=>fsm_output_29, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_28, R=>p_rst);
   reg_state_var_28 : FDRE port map ( Q=>fsm_output_28, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_27, R=>p_rst);
   reg_state_var_27 : FDRE port map ( Q=>fsm_output_27, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_26, R=>p_rst);
   reg_state_var_26 : FDRE port map ( Q=>fsm_output_26, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_25, R=>p_rst);
   reg_state_var_25 : FDRE port map ( Q=>fsm_output_25, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_24, R=>p_rst);
   reg_state_var_24 : FDRE port map ( Q=>fsm_output_24, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_23, R=>p_rst);
   reg_state_var_23 : FDRE port map ( Q=>fsm_output_23, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_22, R=>p_rst);
   reg_state_var_22 : FDRE port map ( Q=>fsm_output_22, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_21, R=>p_rst);
   reg_state_var_21 : FDRE port map ( Q=>fsm_output_21, C=>p_clk, CE=>
      nx48054z1, D=>nx466z1, R=>p_rst);
   reg_state_var_20 : FDRE port map ( Q=>fsm_output_20, C=>p_clk, CE=>
      nx48054z1, D=>nx1463z1, R=>p_rst);
   reg_state_var_19 : FDRE port map ( Q=>fsm_output_19, C=>p_clk, CE=>
      nx48054z1, D=>nx3459z1, R=>p_rst);
   reg_state_var_18 : FDRE port map ( Q=>fsm_output_18, C=>p_clk, CE=>
      nx48054z1, D=>nx4456z1, R=>p_rst);
   reg_state_var_17 : FDRE port map ( Q=>fsm_output_17, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_16, R=>p_rst);
   reg_state_var_16 : FDRE port map ( Q=>fsm_output_16, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_15, R=>p_rst);
   reg_state_var_15 : FDRE port map ( Q=>fsm_output_15, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_14, R=>p_rst);
   reg_state_var_14 : FDRE port map ( Q=>fsm_output_14, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_13, R=>p_rst);
   reg_state_var_13 : FDRE port map ( Q=>fsm_output_13, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_12, R=>p_rst);
   reg_state_var_12 : FDRE port map ( Q=>fsm_output_12, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_11, R=>p_rst);
   reg_state_var_11 : FDRE port map ( Q=>fsm_output_11, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_10, R=>p_rst);
   reg_state_var_10 : FDRE port map ( Q=>fsm_output_10, C=>p_clk, CE=>
      nx48054z1, D=>fsm_output_9, R=>p_rst);
   reg_state_var_9 : FDRE port map ( Q=>fsm_output_9, C=>p_clk, CE=>
      nx48054z1, D=>nx13604z1, R=>p_rst);
   reg_state_var_8 : FDRE port map ( Q=>fsm_output_8, C=>p_clk, CE=>
      nx48054z1, D=>nx14601z1, R=>p_rst);
   reg_state_var_7 : FDRE port map ( Q=>fsm_output_7, C=>p_clk, CE=>
      nx48054z1, D=>nx15598z1, R=>p_rst);
   reg_state_var_6 : FDRE port map ( Q=>fsm_output_6, C=>p_clk, CE=>
      nx48054z1, D=>nx16595z1, R=>p_rst);
   reg_state_var_5 : FDRE port map ( Q=>fsm_output_5, C=>p_clk, CE=>
      nx48054z1, D=>nx17592z1, R=>p_rst);
   reg_state_var_4 : FDRE port map ( Q=>fsm_output_4, C=>p_clk, CE=>
      nx48054z1, D=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), R=>p_rst);
   reg_state_var_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), C=>p_clk, CE=>nx48054z1, 
      D=>Main_Trans_Ond_Opt_core_inst_fsm_output(40), R=>p_rst);
   reg_state_var_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), C=>p_clk, CE=>nx48054z1, 
      D=>nx20583z1, R=>p_rst);
   reg_state_var_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), C=>p_clk, CE=>nx48054z1, 
      D=>nx21580z1, R=>p_rst);
   reg_state_var_0 : FDSE port map ( Q=>nx21580z1, C=>p_clk, CE=>nx48054z1, 
      D=>fsm_output_1_0_42, S=>p_rst);
   ix22123z1321 : LUT2
      generic map (INIT => X"7") 
       port map ( O=>p_Vga_rsc_singleport_we, I0=>nx48054z1, I1=>
      fsm_output_39);
   ix58074z1327 : LUT2
      generic map (INIT => X"D") 
       port map ( O=>p_Dst_rsc_singleport_we, I0=>nx48054z1, I1=>nx51360z5);
   ix53089z1313 : LUT6
      generic map (INIT => X"00000001FFFFFFFF") 
       port map ( O=>p_Dst_rsc_singleport_re, I0=>fsm_output_38, I1=>
      fsm_output_24, I2=>fsm_output_23, I3=>fsm_output_22, I4=>fsm_output_21, 
      I5=>nx48054z1);
   ix6378z1263 : LUT5
      generic map (INIT => X"FFCCFFCD") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(0), I0=>nx6378z1, I1=>
      fsm_output_24, I2=>fsm_output_23, I3=>fsm_output_22, I4=>fsm_output_21
   );
   ix5381z17697 : LUT5
      generic map (INIT => X"7FFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(1), I0=>nx33411z3, I1=>
      nx5381z1, I2=>nx5381z2, I3=>nx5381z3, I4=>px3293);
   ix4384z17697 : LUT5
      generic map (INIT => X"7FFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(2), I0=>nx33411z3, I1=>
      nx4384z1, I2=>nx4384z2, I3=>nx4384z3, I4=>px3292);
   ix3387z17697 : LUT5
      generic map (INIT => X"7FFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(3), I0=>nx33411z3, I1=>
      nx3387z1, I2=>nx3387z2, I3=>nx3387z3, I4=>px3291);
   ix2390z17697 : LUT5
      generic map (INIT => X"7FFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(4), I0=>nx33411z3, I1=>
      nx2390z1, I2=>nx2390z2, I3=>nx2390z3, I4=>px3290);
   ix1393z17697 : LUT5
      generic map (INIT => X"7FFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(5), I0=>nx33411z3, I1=>
      nx1393z1, I2=>nx1393z2, I3=>nx1393z3, I4=>px3289);
   ix396z50273 : LUT6
      generic map (INIT => X"FFFFBF3FBF3FBF3F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(6), I0=>nx16961z1, I1=>
      nx396z1, I2=>nx396z4, I3=>fsm_output_38, I4=>fsm_output_22, I5=>px3288
   );
   ix64935z17697 : LUT5
      generic map (INIT => X"BFFF3FFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(7), I0=>px1503, I1=>
      nx64935z2, I2=>px1183, I3=>nx64935z5, I4=>fsm_output_38);
   ix63938z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(8), I0=>px1187, I1=>
      nx63938z2, I2=>nx63938z3, I3=>p_nbus_Vga_rsc_singleport_addr(0), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix62941z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(9), I0=>px1190, I1=>
      nx62941z2, I2=>nx62941z3, I3=>p_nbus_Vga_rsc_singleport_addr(1), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix49421z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(10), I0=>px1193, I1=>
      nx49421z2, I2=>nx49421z3, I3=>p_nbus_Vga_rsc_singleport_addr(2), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix48424z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(11), I0=>px1196, I1=>
      nx48424z2, I2=>nx48424z3, I3=>p_nbus_Vga_rsc_singleport_addr(3), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix47427z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(12), I0=>px1199, I1=>
      nx47427z2, I2=>nx47427z3, I3=>p_nbus_Vga_rsc_singleport_addr(4), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix46430z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(13), I0=>px1202, I1=>
      nx46430z2, I2=>nx46430z3, I3=>p_nbus_Vga_rsc_singleport_addr(5), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix45433z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(14), I0=>px1205, I1=>
      nx45433z2, I2=>nx45433z3, I3=>p_nbus_Vga_rsc_singleport_addr(6), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix44436z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(15), I0=>px1209, I1=>
      nx44436z2, I2=>nx44436z3, I3=>p_nbus_Vga_rsc_singleport_addr(7), I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix16353z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(0), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3176, I4=>px1740, I5=>nx16353z3);
   ix15356z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(1), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3175, I4=>px1737, I5=>nx15356z3);
   ix14359z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(2), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3174, I4=>px1734, I5=>nx14359z3);
   ix13362z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(3), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3173, I4=>px1731, I5=>nx13362z3);
   ix12365z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(4), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3172, I4=>px1728, I5=>nx12365z3);
   ix11368z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(5), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3171, I4=>px1725, I5=>nx11368z3);
   ix10371z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(6), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3170, I4=>px1722, I5=>nx10371z3);
   ix9374z1313 : LUT6
      generic map (INIT => X"FEFACC00FFFFFFFF") 
       port map ( O=>p_nbus_Dst_rsc_singleport_data_in(7), I0=>fsm_output_34, 
      I1=>fsm_output_14, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3
      =>px3169, I4=>px1719, I5=>nx9374z3);
   ix40499z1313 : LUT5
      generic map (INIT => X"0001FFFF") 
       port map ( O=>p_Src_rsc_singleport_we, I0=>fsm_output_28, I1=>
      fsm_output_27, I2=>fsm_output_26, I3=>fsm_output_25, I4=>nx48054z1);
   ix35514z23167 : LUT6
      generic map (INIT => X"555555555555555D") 
       port map ( O=>p_Src_rsc_singleport_re, I0=>nx48054z1, I1=>nx41011z2, 
      I2=>fsm_output_33, I3=>fsm_output_10, I4=>fsm_output_9, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix10979z63007 : LUT6
      generic map (INIT => X"FFFFF0F0FFFFF0FD") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(0), I0=>nx10979z1, I1=>
      nx13604z21, I2=>fsm_output_12, I3=>fsm_output_11, I4=>fsm_output_10, 
      I5=>fsm_output_9);
   ix11976z58111 : LUT6
      generic map (INIT => X"DFFFDDFFDFDFDDDD") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(1), I0=>nx11976z1, I1=>
      nx13604z25, I2=>nx13970z1, I3=>nx15964z1, I4=>px3292, I5=>px3315);
   ix12973z58111 : LUT6
      generic map (INIT => X"DFFFDDFFDFDFDDDD") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(2), I0=>nx12973z1, I1=>
      nx13604z17, I2=>nx13970z1, I3=>nx15964z1, I4=>px3291, I5=>px3314);
   ix13970z1073 : LUT6
      generic map (INIT => X"FF7FFF3FFF5FFF0F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(3), I0=>nx13970z1, I1=>
      nx15964z1, I2=>nx13970z2, I3=>nx13970z3, I4=>px3290, I5=>px3313);
   ix14967z1073 : LUT6
      generic map (INIT => X"FF7FFF3FFF5FFF0F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(4), I0=>nx13217z3, I1=>
      nx15964z1, I2=>nx14967z1, I3=>nx14967z2, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(0), I5=>
      px3312);
   ix15964z1073 : LUT6
      generic map (INIT => X"FF7FFF3FFF5FFF0F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(5), I0=>nx13217z3, I1=>
      nx15964z1, I2=>nx15964z2, I3=>nx15964z3, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(1), I5=>
      px3311);
   ix16961z50273 : LUT5
      generic map (INIT => X"BFBFBF3F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(6), I0=>nx16961z1, I1=>
      nx16961z2, I2=>nx16961z5, I3=>fsm_output_33, I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix17958z1569 : LUT6
      generic map (INIT => X"96FF96FF96FF00FF") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(7), I0=>nx62052z5, I1=>
      px1786, I2=>nx62052z9, I3=>nx17958z1, I4=>fsm_output_33, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix18955z23329 : LUT6
      generic map (INIT => X"7FFF5FFF77FF55FF") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(8), I0=>nx18955z1, I1=>
      px1501, I2=>nx41011z2, I3=>nx18955z4, I4=>fsm_output_9, I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(0));
   ix19952z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(9), I0=>nx19952z1, I1=>
      nx19952z2, I2=>nx19952z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(0));
   ix45996z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(10), I0=>nx45996z1, I1=>
      nx45996z2, I2=>nx45996z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(1));
   ix44999z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(11), I0=>nx44999z1, I1=>
      nx44999z2, I2=>nx44999z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(2));
   ix44002z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(12), I0=>nx44002z1, I1=>
      nx44002z2, I2=>nx44002z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(3));
   ix43005z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(13), I0=>nx43005z1, I1=>
      nx43005z2, I2=>nx43005z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(4));
   ix42008z33953 : LUT5
      generic map (INIT => X"FF7F7F7F") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(14), I0=>nx42008z1, I1=>
      nx42008z2, I2=>nx42008z3, I3=>fsm_output_27, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(5));
   ix344z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(0), I0=>nx344z1, I1=>
      fsm_output_28, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(1), I4=>px3123);
   ix1341z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(1), I0=>nx1341z1, I1
      =>fsm_output_28, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(2), I4=>px3122);
   ix2338z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(2), I0=>nx2338z1, I1
      =>fsm_output_27, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(3), I4=>px3277);
   ix3335z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(3), I0=>nx3335z1, I1
      =>fsm_output_27, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(4), I4=>px3276);
   ix4332z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(4), I0=>nx4332z1, I1
      =>fsm_output_28, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(5), I4=>px3119);
   ix5329z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(5), I0=>nx5329z1, I1
      =>fsm_output_28, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(6), I4=>px3118);
   ix6326z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(6), I0=>nx6326z1, I1
      =>fsm_output_28, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(7), I4=>px3117);
   ix7323z64119 : LUT5
      generic map (INIT => X"FDDDF555") 
       port map ( O=>p_nbus_Src_rsc_singleport_data_in(7), I0=>nx7323z1, I1
      =>fsm_output_27, I2=>fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(8), I4=>px3272);
   ix20583z1302 : LUT5
      generic map (INIT => X"FF44FFF4") 
       port map ( O=>nx20583z1, I0=>nx48054z4, I1=>fsm_output_5, I2=>
      fsm_output_4, I3=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), I4=>
      p_st_copy_y_2_tr0);
   ix14601z42510 : LUT4
      generic map (INIT => X"A0EC") 
       port map ( O=>nx14601z1, I0=>nx466z2, I1=>fsm_output_18, I2=>
      fsm_output_7, I3=>p_rtlcn30248);
   ix13604z22014 : LUT4
      generic map (INIT => X"50DC") 
       port map ( O=>nx13604z1, I0=>nx13604z2, I1=>fsm_output_17, I2=>
      fsm_output_8, I3=>p_exit_passe_y_sva);
   ix4456z61890 : LUT4
      generic map (INIT => X"ECA0") 
       port map ( O=>nx4456z1, I0=>nx13604z2, I1=>fsm_output_17, I2=>
      fsm_output_8, I3=>p_exit_passe_y_sva);
   ix3459z57714 : LUT4
      generic map (INIT => X"DC50") 
       port map ( O=>nx3459z1, I0=>nx466z2, I1=>fsm_output_18, I2=>
      fsm_output_7, I3=>p_rtlcn30248);
   ix466z42510 : LUT4
      generic map (INIT => X"A0EC") 
       port map ( O=>nx466z1, I0=>nx466z2, I1=>fsm_output_29, I2=>
      fsm_output_20, I3=>p_exit_passe_y_1_sva);
   ix56030z57714 : LUT4
      generic map (INIT => X"DC50") 
       port map ( O=>nx56030z1, I0=>nx466z2, I1=>fsm_output_29, I2=>
      fsm_output_20, I3=>p_exit_passe_y_1_sva);
   ix55033z786 : LUT5
      generic map (INIT => X"CD00FDF0") 
       port map ( O=>nx55033z1, I0=>nx55033z2, I1=>nx1463z2, I2=>
      fsm_output_30, I3=>fsm_output_19, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2(8));
   ix54036z3884 : LUT5
      generic map (INIT => X"CE0A0A0A") 
       port map ( O=>nx54036z1, I0=>fsm_output_36, I1=>fsm_output_31, I2=>
      p_rtlcn30054, I3=>px3294, I4=>px3317);
   ix53039z22014 : LUT4
      generic map (INIT => X"50DC") 
       port map ( O=>nx53039z1, I0=>nx13604z2, I1=>fsm_output_35, I2=>
      fsm_output_32, I3=>p_st_copy_y_1_2_tr0);
   ix50048z61890 : LUT4
      generic map (INIT => X"ECA0") 
       port map ( O=>nx50048z1, I0=>nx13604z2, I1=>fsm_output_35, I2=>
      fsm_output_32, I3=>p_st_copy_y_1_2_tr0);
   ix49051z61966 : LUT5
      generic map (INIT => X"A0ECECEC") 
       port map ( O=>nx49051z1, I0=>fsm_output_36, I1=>fsm_output_31, I2=>
      p_rtlcn30054, I3=>px3294, I4=>px3317);
   ix48054z23601 : LUT6
      generic map (INIT => X"57035703FFFF5703") 
       port map ( O=>nx48054z22, I0=>nx48054z4, I1=>nx48054z23, I2=>
      nx15598z2, I3=>fsm_output_41, I4=>fsm_output_40, I5=>
      p_st_copy_y_2_2_tr0);
   ix13217z1314 : LUT6
      generic map (INIT => X"BFFFFFFF80000000") 
       port map ( O=>px980, I0=>nx466z2, I1=>nx48054z1, I2=>nx13217z2, I3=>
      nx44375z3, I4=>nx51360z3, I5=>px3317);
   ix13218z33858 : LUT4
      generic map (INIT => X"7F20") 
       port map ( O=>px981, I0=>nx48054z1, I1=>nx1463z2, I2=>fsm_output_19, 
      I3=>px3294);
   ix13219z1022 : LUT5
      generic map (INIT => X"EECCFEDC") 
       port map ( O=>px982, I0=>nx46374z2, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3256, I3=>px3262, 
      I4=>px3294);
   ix13220z58094 : LUT6
      generic map (INIT => X"FDECFDECFFEEDDCC") 
       port map ( O=>px983, I0=>fsm_output_37, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3105, I3=>px3260, 
      I4=>px3261, I5=>px3294);
   ix13221z1534 : LUT3
      generic map (INIT => X"DC") 
       port map ( O=>px984, I0=>fsm_output_37, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3256);
   ix13222z1313 : LUT6
      generic map (INIT => X"FFFFFFFEFFFFFFFF") 
       port map ( O=>px985, I0=>fsm_output_38, I1=>fsm_output_24, I2=>
      fsm_output_23, I3=>fsm_output_22, I4=>fsm_output_21, I5=>nx51360z5);
   ix13223z1305 : LUT6
      generic map (INIT => X"FFFFFFFFFFFFFFF7") 
       port map ( O=>px986, I0=>nx33411z2, I1=>nx41011z2, I2=>fsm_output_33, 
      I3=>fsm_output_10, I4=>fsm_output_9, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix15736z28536 : LUT5
      generic map (INIT => X"95A96A56") 
       port map ( O=>px1003, I0=>nx62052z2, I1=>nx62052z5, I2=>px1786, I3=>
      nx62052z9, I4=>px1781);
   ix15735z56826 : LUT6
      generic map (INIT => X"2727D8D827D8D8D8") 
       port map ( O=>px1004, I0=>fsm_output_21, I1=>px3151, I2=>px3259, I3=>
      px1548, I4=>px1545, I5=>px1544);
   ix15733z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>px1006, I0=>nx13604z2, I1=>nx31411z2);
   ix15730z1311 : LUT6
      generic map (INIT => X"FFFD00020002FFFD") 
       port map ( O=>px1009, I0=>px1775, I1=>px1774, I2=>nx64045z3, I3=>
      nx64045z6, I4=>nx64045z9, I5=>px3203);
   ix11746z29166 : LUT6
      generic map (INIT => X"93336C3393CC6CCC") 
       port map ( O=>px1045, I0=>px1608, I1=>nx15458z1, I2=>px1602, I3=>
      fsm_output_30, I4=>px3147, I5=>px3201);
   ix11745z29166 : LUT6
      generic map (INIT => X"93336C3393CC6CCC") 
       port map ( O=>px1046, I0=>px1608, I1=>nx15456z1, I2=>px1604, I3=>
      fsm_output_30, I4=>px3148, I5=>px3202);
   ix11744z16878 : LUT6
      generic map (INIT => X"936333C39C6C3CCC") 
       port map ( O=>px1047, I0=>px1608, I1=>nx15455z1, I2=>fsm_output_30, 
      I3=>px3149, I4=>px3150, I5=>px3203);
   ix11743z11690 : LUT6
      generic map (INIT => X"8222D7777DDD2888") 
       port map ( O=>px1048, I0=>fsm_output_30, I1=>px3150, I2=>px3151, I3=>
      px3152, I4=>px3204, I5=>nx15454z1);
   ix11742z59760 : LUT6
      generic map (INIT => X"1BB14EE4B11BE44E") 
       port map ( O=>px1049, I0=>fsm_output_30, I1=>p_rtlcn19653, I2=>px3151, 
      I3=>px3152, I4=>px3205, I5=>px3259);
   ix10754z46854 : LUT5
      generic map (INIT => X"1B4EB1E4") 
       port map ( O=>px1050, I0=>fsm_output_30, I1=>p_rtlcn19654, I2=>px3152, 
      I3=>px3206, I4=>px3258);
   ix10753z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>px1051, I0=>fsm_output_30, I1=>p_rtlcn19655);
   ix9756z14430 : LUT6
      generic map (INIT => X"36363C3C3336333C") 
       port map ( O=>px1061, I0=>nx466z2, I1=>nx12466z1, I2=>nx9756z2, I3=>
      fsm_output_25, I4=>fsm_output_9, I5=>px3280);
   ix9755z14424 : LUT6
      generic map (INIT => X"6666363633663336") 
       port map ( O=>px1062, I0=>nx9755z2, I1=>nx12462z1, I2=>fsm_output_25, 
      I3=>fsm_output_13, I4=>px3281, I5=>px3304);
   ix9754z14424 : LUT6
      generic map (INIT => X"6666363633663336") 
       port map ( O=>px1063, I0=>nx9754z2, I1=>nx11471z1, I2=>fsm_output_25, 
      I3=>fsm_output_13, I4=>px3282, I5=>px3305);
   ix9753z1569 : LUT6
      generic map (INIT => X"D22D00FFFF0000FF") 
       port map ( O=>px1064, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx11467z1, I4=>nx9753z2, I5=>fsm_output_9);
   ix9752z62769 : LUT5
      generic map (INIT => X"690FF00F") 
       port map ( O=>px1065, I0=>nx48054z5, I1=>nx466z3, I2=>nx10475z1, I3=>
      nx9752z2, I4=>fsm_output_9);
   ix9751z14430 : LUT6
      generic map (INIT => X"36363C3C3336333C") 
       port map ( O=>px1066, I0=>nx39395z2, I1=>nx10470z1, I2=>nx9751z2, I3
      =>fsm_output_25, I4=>fsm_output_9, I5=>px3285);
   ix9750z14424 : LUT6
      generic map (INIT => X"6666363633663336") 
       port map ( O=>px1067, I0=>nx9750z2, I1=>nx9479z1, I2=>fsm_output_25, 
      I3=>fsm_output_13, I4=>px3286, I5=>px3309);
   ix9749z40635 : LUT5
      generic map (INIT => X"59999999") 
       port map ( O=>px1068, I0=>nx9475z1, I1=>nx9749z2, I2=>nx48054z6, I3=>
      nx48054z9, I4=>fsm_output_9);
   ix65312z39627 : LUT6
      generic map (INIT => X"95A96A566A5695A9") 
       port map ( O=>px1159, I0=>nx62052z2, I1=>nx62052z5, I2=>px1786, I3=>
      nx62052z9, I4=>px1781, I5=>px3160);
   ix6378z23332 : LUT5
      generic map (INIT => X"010355FF") 
       port map ( O=>nx6378z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(1), I4=>px3315
   );
   ix6378z3227 : LUT4
      generic map (INIT => X"0777") 
       port map ( O=>nx6378z2, I0=>p_nbus_Vga_rsc_singleport_addr(8), I1=>
      fsm_output_38, I2=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I3=>
      px3229);
   ix6378z36267 : LUT6
      generic map (INIT => X"0008080800888888") 
       port map ( O=>nx6378z1, I0=>nx6378z2, I1=>nx6378z3, I2=>fsm_output_34, 
      I3=>fsm_output_14, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(0), I5=>px3270);
   ix5381z6756 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx5381z3, I0=>fsm_output_34, I1=>fsm_output_21, I2=>
      px3146, I3=>px3269);
   ix5381z14627 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx5381z2, I0=>fsm_output_16, I1=>fsm_output_14, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(1), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(2), I5=>px3314
   );
   ix5381z31898 : LUT6
      generic map (INIT => X"0007070700777777") 
       port map ( O=>nx5381z1, I0=>p_nbus_Vga_rsc_singleport_addr(9), I1=>
      fsm_output_38, I2=>fsm_output_15, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3228, I5=>px3314);
   ix4384z6756 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx4384z3, I0=>fsm_output_34, I1=>fsm_output_21, I2=>
      px3145, I3=>px3268);
   ix4384z14627 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx4384z2, I0=>fsm_output_16, I1=>fsm_output_14, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(3), I5=>px3313
   );
   ix4384z31898 : LUT6
      generic map (INIT => X"0007070700777777") 
       port map ( O=>nx4384z1, I0=>p_nbus_Vga_rsc_singleport_addr(10), I1=>
      fsm_output_38, I2=>fsm_output_15, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3227, I5=>px3313);
   ix3387z6756 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx3387z3, I0=>fsm_output_34, I1=>fsm_output_21, I2=>
      px3144, I3=>px3267);
   ix3387z14627 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx3387z2, I0=>fsm_output_16, I1=>fsm_output_14, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(4), I5=>px3312
   );
   ix3387z31898 : LUT6
      generic map (INIT => X"0007070700777777") 
       port map ( O=>nx3387z1, I0=>p_nbus_Vga_rsc_singleport_addr(11), I1=>
      fsm_output_38, I2=>fsm_output_15, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3226, I5=>px3312);
   ix2390z6756 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx2390z3, I0=>fsm_output_34, I1=>fsm_output_21, I2=>
      px3143, I3=>px3266);
   ix2390z14627 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx2390z2, I0=>fsm_output_16, I1=>fsm_output_14, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(5), I5=>px3311
   );
   ix2390z31898 : LUT6
      generic map (INIT => X"0007070700777777") 
       port map ( O=>nx2390z1, I0=>p_nbus_Vga_rsc_singleport_addr(12), I1=>
      fsm_output_38, I2=>fsm_output_15, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3225, I5=>px3311);
   ix1393z6756 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx1393z3, I0=>fsm_output_34, I1=>fsm_output_21, I2=>
      px3142, I3=>px3265);
   ix1393z14627 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx1393z2, I0=>fsm_output_16, I1=>fsm_output_14, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(6), I5=>px3316
   );
   ix1393z31898 : LUT6
      generic map (INIT => X"0007070700777777") 
       port map ( O=>nx1393z1, I0=>p_nbus_Vga_rsc_singleport_addr(13), I1=>
      fsm_output_38, I2=>fsm_output_15, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3224, I5=>px3316);
   ix396z23196 : LUT5
      generic map (INIT => X"05075577") 
       port map ( O=>nx396z4, I0=>p_nbus_Vga_rsc_singleport_addr(14), I1=>
      fsm_output_34, I2=>fsm_output_21, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>px3141);
   ix396z23331 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx396z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(7), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(1), 
      I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0));
   ix396z1315 : LUT6
      generic map (INIT => X"01110FFF00000000") 
       port map ( O=>nx396z1, I0=>fsm_output_24, I1=>fsm_output_23, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(6), I4=>px3264, 
      I5=>nx396z3);
   ix64935z5924 : LUT5
      generic map (INIT => X"010F11FF") 
       port map ( O=>nx64935z5, I0=>fsm_output_24, I1=>fsm_output_23, I2=>
      fsm_output_21, I3=>p_reg_passe_y_1_acc_44_sdt_tmp_6_1, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1));
   ix64935z49374 : LUT6
      generic map (INIT => X"000B00BB0B0BBBBB") 
       port map ( O=>nx64935z2, I0=>nx64935z3, I1=>
      p_nbus_Vga_rsc_singleport_addr(15), I2=>fsm_output_22, I3=>
      fsm_output_14, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(0), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(7));
   ix63938z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx63938z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(0), I5=>px3103);
   ix63938z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx63938z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(1), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(8), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(8));
   ix62941z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx62941z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(1), I5=>px3102);
   ix62941z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx62941z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(9), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(9));
   ix49421z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx49421z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(2), I5=>px3101);
   ix49421z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx49421z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(10), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(10));
   ix48424z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx48424z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(3), I5=>px3100);
   ix48424z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx48424z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(11), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(11));
   ix47427z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx47427z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(4), I5=>px3099);
   ix47427z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx47427z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(12), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(12));
   ix46430z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx46430z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(5), I5=>px3098);
   ix46430z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx46430z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(6), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(13), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(13));
   ix45433z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx45433z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(6), I5=>px3097);
   ix45433z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx45433z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(7), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(14), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(14));
   ix44436z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx44436z3, I0=>fsm_output_38, I1=>fsm_output_34, I2=>
      fsm_output_21, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(7), I5=>px3096);
   ix44436z23330 : LUT6
      generic map (INIT => X"01031133050F55FF") 
       port map ( O=>nx44436z2, I0=>fsm_output_22, I1=>fsm_output_16, I2=>
      fsm_output_14, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(8), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(15), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(15));
   ix59329z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>px1208, I0=>fsm_output_24, I1=>fsm_output_23);
   ix43439z6275 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx43439z2, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(16), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(8));
   ix43439z10053 : LUT6
      generic map (INIT => X"AAA2AA22A2A22222") 
       port map ( O=>nx43439z1, I0=>nx33411z3, I1=>nx43439z2, I2=>
      p_nbus_Vga_rsc_singleport_addr(16), I3=>fsm_output_38, I4=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(8));
   ix43439z1316 : LUT5
      generic map (INIT => X"00000002") 
       port map ( O=>p_nbus_Dst_rsc_singleport_addr(16), I0=>nx43439z1, I1=>
      fsm_output_34, I2=>fsm_output_21, I3=>fsm_output_14, I4=>fsm_output_13
   );
   ix16353z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx16353z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(1), I4
      =>px3168, I5=>px3302);
   ix15356z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx15356z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(2), I4
      =>px3167, I5=>px3301);
   ix14359z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx14359z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(3), I4
      =>px3166, I5=>px3300);
   ix13362z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx13362z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(4), I4
      =>px3165, I5=>px3299);
   ix12365z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx12365z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(5), I4
      =>px3164, I5=>px3298);
   ix11368z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx11368z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(6), I4
      =>px3163, I5=>px3297);
   ix10371z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx10371z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(7), I4
      =>px3162, I5=>px3296);
   ix9374z5410 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx9374z3, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(8), I4
      =>px3161, I5=>px3295);
   ix10979z45090 : LUT6
      generic map (INIT => X"080C88CC0A0FAAFF") 
       port map ( O=>nx10979z1, I0=>nx13217z3, I1=>nx13970z1, I2=>
      fsm_output_33, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(2), I4=>
      px3115, I5=>px3293);
   ix11976z45090 : LUT6
      generic map (INIT => X"02030A0F2233AAFF") 
       port map ( O=>nx11976z1, I0=>nx13217z3, I1=>fsm_output_33, I2=>
      fsm_output_9, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(3), I4=>
      px3114, I5=>px3200);
   ix12973z45090 : LUT6
      generic map (INIT => X"02030A0F2233AAFF") 
       port map ( O=>nx12973z1, I0=>nx13217z3, I1=>fsm_output_33, I2=>
      fsm_output_9, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(4), I4=>
      px3113, I5=>px3199);
   ix13970z1541 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>nx13970z3, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(5));
   ix13970z23331 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx13970z2, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3112, I4=>px3198, 
      I5=>px3226);
   ix13970z1316 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx13970z1, I0=>fsm_output_27, I1=>fsm_output_25);
   ix14967z1540 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>nx14967z2, I0=>fsm_output_27, I1=>fsm_output_25, I2=>
      px3289);
   ix14967z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx14967z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3111, I4=>px3197, 
      I5=>px3225);
   ix15964z1541 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>nx15964z3, I0=>fsm_output_27, I1=>fsm_output_25, I2=>
      px3288);
   ix15964z23331 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx15964z2, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3110, I4=>px3196, 
      I5=>px3224);
   ix16961z5413 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx16961z5, I0=>nx41011z2, I1=>fsm_output_28, I2=>
      fsm_output_26, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(6), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(6), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(0));
   ix16961z6276 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx16961z3, I0=>fsm_output_27, I1=>fsm_output_10, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(0), I3=>px3316);
   ix16961z10190 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx16961z2, I0=>nx16961z3, I1=>fsm_output_25, I2=>
      fsm_output_9, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(0), I4=>
      px3195);
   ix17958z6276 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx17958z4, I0=>fsm_output_26, I1=>fsm_output_10, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(7), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0));
   ix17958z5411 : LUT6
      generic map (INIT => X"0111033305550FFF") 
       port map ( O=>nx17958z3, I0=>fsm_output_28, I1=>fsm_output_27, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(1), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(7), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(1));
   ix17958z62755 : LUT6
      generic map (INIT => X"4000C0005000F000") 
       port map ( O=>nx17958z1, I0=>px1500, I1=>nx41011z2, I2=>nx17958z3, I3
      =>nx17958z4, I4=>fsm_output_9, I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(1));
   ix18955z23332 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx18955z4, I0=>fsm_output_28, I1=>fsm_output_27, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(8), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(6), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(0));
   ix18955z6755 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx18955z2, I0=>fsm_output_33, I1=>fsm_output_26, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(8), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(0));
   ix18955z10189 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx18955z1, I0=>nx18955z2, I1=>fsm_output_25, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(1));
   ix19952z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx19952z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(0), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(1));
   ix19952z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx19952z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(9), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(9));
   ix19952z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx19952z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(1), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(0), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(1));
   ix45996z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx45996z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(1), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(2));
   ix45996z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx45996z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(10), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(10));
   ix45996z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx45996z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(1), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(2));
   ix44999z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx44999z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(2), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(3));
   ix44999z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx44999z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(11), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(11));
   ix44999z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx44999z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(2), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(3));
   ix44002z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx44002z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(3), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(4));
   ix44002z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx44002z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(6), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(12), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(12));
   ix44002z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx44002z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(3), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(4));
   ix43005z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx43005z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(4), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(5));
   ix43005z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx43005z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(7), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(13), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(13));
   ix43005z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx43005z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(4), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(5));
   ix42008z5412 : LUT5
      generic map (INIT => X"01110FFF") 
       port map ( O=>nx42008z3, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(5), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(6));
   ix42008z5411 : LUT6
      generic map (INIT => X"0111055503330FFF") 
       port map ( O=>nx42008z2, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      fsm_output_25, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(8), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(14), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(14));
   ix42008z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx42008z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(6), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(5), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(6));
   ix41011z6277 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx41011z4, I0=>fsm_output_10, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(6), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(7));
   ix41011z6276 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx41011z3, I0=>fsm_output_27, I1=>fsm_output_9, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(7), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(6));
   ix41011z50659 : LUT6
      generic map (INIT => X"0080808000C0C0C0") 
       port map ( O=>nx41011z1, I0=>nx41011z2, I1=>nx41011z3, I2=>nx41011z4, 
      I3=>fsm_output_28, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(15), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(7));
   ix41011z1319 : LUT5
      generic map (INIT => X"000D0005") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(15), I0=>nx41011z1, I1=>
      fsm_output_33, I2=>fsm_output_26, I3=>fsm_output_25, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(7));
   ix40014z23330 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx40014z1, I0=>fsm_output_10, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(7), I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(7), I5=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(8));
   ix40014z1314 : LUT6
      generic map (INIT => X"5400000055550000") 
       port map ( O=>p_nbus_Src_rsc_singleport_addr(16), I0=>fsm_output_33, 
      I1=>fsm_output_12, I2=>fsm_output_11, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(8), I4=>
      nx33411z2, I5=>nx40014z1);
   ix344z6754 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx344z1, I0=>fsm_output_27, I1=>fsm_output_26, I2=>
      px3131, I3=>px3279);
   ix1341z6754 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx1341z1, I0=>fsm_output_27, I1=>fsm_output_26, I2=>
      px3130, I3=>px3278);
   ix2338z6274 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx2338z1, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      px3121, I3=>px3129);
   ix3335z6274 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx3335z1, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      px3120, I3=>px3128);
   ix4332z6754 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx4332z1, I0=>fsm_output_27, I1=>fsm_output_26, I2=>
      px3127, I3=>px3275);
   ix5329z6754 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx5329z1, I0=>fsm_output_27, I1=>fsm_output_26, I2=>
      px3126, I3=>px3274);
   ix6326z6754 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx6326z1, I0=>fsm_output_27, I1=>fsm_output_26, I2=>
      px3125, I3=>px3273);
   ix7323z6274 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx7323z1, I0=>fsm_output_28, I1=>fsm_output_26, I2=>
      px3116, I3=>px3124);
   ix17592z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx17592z1, I0=>fsm_output_4, I1=>p_st_copy_y_2_tr0);
   ix16595z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx16595z1, I0=>nx48054z4, I1=>fsm_output_5);
   ix15598z1538 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>nx15598z1, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx15598z2);
   ix1463z1826 : LUT5
      generic map (INIT => X"F2F00200") 
       port map ( O=>nx1463z1, I0=>nx55033z2, I1=>nx1463z2, I2=>
      fsm_output_30, I3=>fsm_output_19, I4=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2(8));
   ix15598z23587 : LUT6
      generic map (INIT => X"7F57775577555700") 
       port map ( O=>nx15598z2, I0=>fsm_output_37, I1=>px3219, I2=>px3220, 
      I3=>px3318, I4=>px3319, I5=>px3320);
   ix44064z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx44064z1, I0=>fsm_output_40, I1=>p_st_copy_y_2_2_tr0);
   ix48054z1363 : LUT6
      generic map (INIT => X"000000000000002D") 
       port map ( O=>nx48054z4, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3
      =>nx466z17, I4=>nx466z24, I5=>nx466z30);
   ix48054z1325 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx48054z3, I0=>nx48054z4, I1=>fsm_output_41);
   ix51360z1320 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx51360z6, I0=>fsm_output_36, I1=>fsm_output_30, I2=>
      fsm_output_29, I3=>fsm_output_21, I4=>fsm_output_19, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix51360z1318 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx51360z4, I0=>fsm_output_33, I1=>fsm_output_18, I2=>
      fsm_output_10, I3=>fsm_output_7);
   ix51360z1315 : LUT6
      generic map (INIT => X"0001000000000000") 
       port map ( O=>nx51360z2, I0=>fsm_output_37, I1=>fsm_output_31, I2=>
      fsm_output_20, I3=>fsm_output_6, I4=>nx51360z3, I5=>nx51360z4);
   ix51360z1314 : LUT6
      generic map (INIT => X"8000000000000000") 
       port map ( O=>px1281, I0=>nx48054z1, I1=>nx51360z2, I2=>nx33411z2, I3
      =>nx51360z5, I4=>nx44375z8, I5=>nx51360z6);
   ix51360z1317 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx51360z3, I0=>fsm_output_24, I1=>fsm_output_23, I2=>
      fsm_output_22, I3=>fsm_output_12, I4=>fsm_output_11, I5=>fsm_output_9
   );
   ix13217z1319 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx13217z5, I0=>fsm_output_25, I1=>fsm_output_15, I2=>
      fsm_output_14, I3=>fsm_output_13);
   ix13217z1317 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx13217z3, I0=>fsm_output_28, I1=>fsm_output_26);
   ix13217z1443 : LUT6
      generic map (INIT => X"0000000000000080") 
       port map ( O=>nx13217z2, I0=>nx13217z3, I1=>nx13217z4, I2=>nx13217z5, 
      I3=>fsm_output_30, I4=>fsm_output_27, I5=>fsm_output_10);
   ix51355z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1286, I0=>fsm_output_8, I1=>px3195);
   ix51354z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1287, I0=>fsm_output_8, I1=>px3200);
   ix51353z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1288, I0=>fsm_output_8, I1=>px3199);
   ix51352z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1289, I0=>fsm_output_8, I1=>px3198);
   ix50364z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1290, I0=>fsm_output_8, I1=>px3197);
   ix50363z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1291, I0=>fsm_output_8, I1=>px3196);
   ix13217z1318 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx13217z4, I0=>fsm_output_17, I1=>fsm_output_8);
   ix50361z1538 : LUT3
      generic map (INIT => X"E0") 
       port map ( O=>px1293, I0=>fsm_output_17, I1=>fsm_output_8, I2=>
      nx48054z1);
   ix1463z1315 : LUT5
      generic map (INIT => X"84210000") 
       port map ( O=>nx1463z2, I0=>px3219, I1=>px3220, I2=>px3318, I3=>
      px3319, I4=>px3320);
   ix50357z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1297, I0=>fsm_output_20, I1=>px3146);
   ix50356z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1298, I0=>fsm_output_20, I1=>px3145);
   ix50355z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1299, I0=>fsm_output_20, I1=>px3144);
   ix48368z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1300, I0=>fsm_output_20, I1=>px3143);
   ix48367z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1301, I0=>fsm_output_20, I1=>px3142);
   ix48366z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1302, I0=>fsm_output_20, I1=>px3141);
   ix48365z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1303, I0=>nx48054z1, I1=>fsm_output_29, I2=>
      fsm_output_20);
   ix48360z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1308, I0=>fsm_output_32, I1=>px3115);
   ix48359z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1309, I0=>fsm_output_32, I1=>px3114);
   ix47371z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1310, I0=>fsm_output_32, I1=>px3113);
   ix47370z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1311, I0=>fsm_output_32, I1=>px3112);
   ix47369z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1312, I0=>fsm_output_32, I1=>px3111);
   ix47368z1318 : LUT2
      generic map (INIT => X"4") 
       port map ( O=>px1313, I0=>fsm_output_32, I1=>px3110);
   ix47367z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1314, I0=>nx48054z1, I1=>fsm_output_35, I2=>
      fsm_output_32);
   ix47366z62446 : LUT6
      generic map (INIT => X"FDFDECECFFDDEECC") 
       port map ( O=>px1315, I0=>fsm_output_37, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3104, I3=>px3105, 
      I4=>px3261, I5=>px3294);
   ix47365z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1316, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3260, I2=>px3261, I3=>px3294);
   ix47364z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1317, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3259, I2=>px3260, I3=>px3294);
   ix47363z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1318, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3258, I2=>px3259, I3=>px3294);
   ix46374z6198 : LUT5
      generic map (INIT => X"5F131313") 
       port map ( O=>nx46374z2, I0=>fsm_output_36, I1=>fsm_output_31, I2=>
      p_rtlcn30054, I3=>px3294, I4=>px3317);
   ix46374z13890 : LUT5
      generic map (INIT => X"20203120") 
       port map ( O=>px1320, I0=>nx46374z2, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3255, I3=>px3256, 
      I4=>px3294);
   ix46373z62446 : LUT6
      generic map (INIT => X"FDFDECECFFDDEECC") 
       port map ( O=>px1321, I0=>fsm_output_37, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>px3104, I3=>px3107, 
      I4=>px3254, I5=>px3294);
   ix46372z18802 : LUT4
      generic map (INIT => X"4450") 
       port map ( O=>px1322, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3107, I2=>px3254, I3=>px3294);
   ix46371z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1323, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3253, I2=>px3254, I3=>px3294);
   ix46370z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1324, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3252, I2=>px3253, I3=>px3294);
   ix46369z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1325, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3251, I2=>px3252, I3=>px3294);
   ix46368z21862 : LUT4
      generic map (INIT => X"5044") 
       port map ( O=>px1326, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), 
      I1=>px3250, I2=>px3251, I3=>px3294);
   ix46367z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1327, I0=>nx48054z1, I1=>fsm_output_37, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix46366z1314 : LUT6
      generic map (INIT => X"0105030F00000000") 
       port map ( O=>px1328, I0=>fsm_output_41, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I3=>px3200, I4=>px3218, 
      I5=>nx48054z9);
   ix46365z32170 : LUT5
      generic map (INIT => X"00007888") 
       port map ( O=>px1329, I0=>nx48054z6, I1=>nx48054z9, I2=>nx48054z12, 
      I3=>nx48054z15, I4=>Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45377z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1330, I0=>nx39395z2, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45376z1323 : LUT3
      generic map (INIT => X"09") 
       port map ( O=>px1331, I0=>nx48054z5, I1=>nx466z3, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45375z1359 : LUT4
      generic map (INIT => X"002D") 
       port map ( O=>px1332, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45374z2079 : LUT5
      generic map (INIT => X"000002FD") 
       port map ( O=>px1333, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45373z1311 : LUT6
      generic map (INIT => X"000000000002FFFD") 
       port map ( O=>px1334, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>nx466z24, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45372z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1335, I0=>nx466z2, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix45371z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1336, I0=>nx48054z1, I1=>fsm_output_5, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix44375z1323 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx44375z8, I0=>fsm_output_35, I1=>fsm_output_32, I2=>
      fsm_output_17, I3=>fsm_output_8, I4=>fsm_output_5, I5=>fsm_output_4);
   ix44375z1322 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx44375z7, I0=>fsm_output_33, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>fsm_output_9);
   ix64935z1317 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx64935z3, I0=>fsm_output_34, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix44375z1320 : LUT6
      generic map (INIT => X"0001000000000000") 
       port map ( O=>nx44375z6, I0=>fsm_output_34, I1=>fsm_output_15, I2=>
      fsm_output_14, I3=>Main_Trans_Ond_Opt_core_inst_fsm_output(39), I4=>
      nx44375z7, I5=>nx44375z8);
   ix44375z1326 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx44375z5, I0=>fsm_output_39, I1=>fsm_output_38, I2=>
      fsm_output_31, I3=>fsm_output_7);
   ix44375z1319 : LUT5
      generic map (INIT => X"00000002") 
       port map ( O=>nx44375z4, I0=>nx44375z5, I1=>fsm_output_13, I2=>
      fsm_output_12, I3=>Main_Trans_Ond_Opt_core_inst_fsm_output(41), I4=>
      fsm_output_1_0_42);
   ix44375z1317 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx44375z3, I0=>fsm_output_29, I1=>fsm_output_21, I2=>
      fsm_output_20, I3=>fsm_output_19, I4=>fsm_output_18, I5=>fsm_output_16
   );
   ix44375z34083 : LUT6
      generic map (INIT => X"0000000000008000") 
       port map ( O=>nx44375z2, I0=>nx33411z2, I1=>nx33411z3, I2=>nx48054z23, 
      I3=>nx44375z3, I4=>fsm_output_41, I5=>fsm_output_40);
   ix44375z1442 : LUT6
      generic map (INIT => X"0000000000000080") 
       port map ( O=>px1345, I0=>nx44375z2, I1=>nx44375z4, I2=>nx44375z6, I3
      =>fsm_output_36, I4=>fsm_output_30, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40));
   ix51360z1319 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx51360z5, I0=>fsm_output_34, I1=>fsm_output_16, I2=>
      fsm_output_15, I3=>fsm_output_14, I4=>fsm_output_13, I5=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(39));
   ix41011z1317 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx41011z2, I0=>fsm_output_12, I1=>fsm_output_11);
   ix44372z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1348, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(0));
   ix44371z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1349, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(1));
   ix43383z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1350, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(2));
   ix43382z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1351, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(3));
   ix43381z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1352, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(4));
   ix43380z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1353, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(5));
   ix43379z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1354, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(6));
   ix43378z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1355, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(7));
   ix43377z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1356, I0=>fsm_output_5, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(41), I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(8));
   ix43376z45002 : LUT4
      generic map (INIT => X"AAA8") 
       port map ( O=>px1357, I0=>nx48054z1, I1=>fsm_output_5, I2=>
      fsm_output_4, I3=>Main_Trans_Ond_Opt_core_inst_fsm_output(41));
   ix43375z1332 : LUT3
      generic map (INIT => X"12") 
       port map ( O=>px1358, I0=>fsm_output_37, I1=>fsm_output_6, I2=>px3220
   );
   ix43374z5970 : LUT4
      generic map (INIT => X"1230") 
       port map ( O=>px1359, I0=>fsm_output_37, I1=>fsm_output_6, I2=>px3219, 
      I3=>px3220);
   ix42386z5410 : LUT4
      generic map (INIT => X"1000") 
       port map ( O=>px1360, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx48054z6, I3=>nx48054z9);
   ix42385z5410 : LUT6
      generic map (INIT => X"0111100010001000") 
       port map ( O=>px1361, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx48054z6, I3=>nx48054z9, I4=>nx48054z12, I5=>nx48054z15);
   ix42384z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1362, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx39395z2);
   ix42383z5411 : LUT4
      generic map (INIT => X"1001") 
       port map ( O=>px1363, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx48054z5, I3=>nx466z3);
   ix42382z5667 : LUT5
      generic map (INIT => X"00101101") 
       port map ( O=>px1364, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx48054z5, I3=>nx466z3, I4=>nx466z10);
   ix42381z5667 : LUT6
      generic map (INIT => X"0000001011111101") 
       port map ( O=>px1365, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx48054z5, I3=>nx466z3, I4=>nx466z10, I5=>nx466z17);
   ix42380z1314 : LUT6
      generic map (INIT => X"0002FFFD00000000") 
       port map ( O=>px1366, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>nx466z24, I5=>nx48054z23);
   ix42379z1330 : LUT3
      generic map (INIT => X"10") 
       port map ( O=>px1367, I0=>fsm_output_37, I1=>fsm_output_6, I2=>
      nx466z2);
   ix42378z802 : LUT4
      generic map (INIT => X"FE00") 
       port map ( O=>px1368, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>nx48054z1);
   ix42377z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1369, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(0));
   ix41389z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1370, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(1));
   ix41388z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1371, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(2));
   ix41387z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1372, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(3));
   ix41386z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1373, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(4));
   ix41385z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1374, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(5));
   ix41384z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1375, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(6));
   ix41383z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1376, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(7));
   ix41382z1570 : LUT4
      generic map (INIT => X"0100") 
       port map ( O=>px1377, I0=>fsm_output_41, I1=>fsm_output_37, I2=>
      fsm_output_6, I3=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(8));
   ix48054z1328 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx48054z23, I0=>fsm_output_37, I1=>fsm_output_6);
   ix41380z1314 : LUT5
      generic map (INIT => X"FFFE0000") 
       port map ( O=>px1379, I0=>fsm_output_41, I1=>fsm_output_40, I2=>
      fsm_output_37, I3=>fsm_output_6, I4=>nx48054z1);
   ix40392z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1380, I0=>nx55033z4, I1=>fsm_output_7);
   ix40391z1320 : LUT3
      generic map (INIT => X"06") 
       port map ( O=>px1381, I0=>nx55033z4, I1=>nx55033z8, I2=>fsm_output_7
   );
   ix40390z1344 : LUT4
      generic map (INIT => X"001E") 
       port map ( O=>px1382, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>fsm_output_7);
   ix40389z1824 : LUT5
      generic map (INIT => X"000001FE") 
       port map ( O=>px1383, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>fsm_output_7);
   ix40388z1312 : LUT6
      generic map (INIT => X"000000000001FFFE") 
       port map ( O=>px1384, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>nx55033z18, I5=>fsm_output_7);
   ix40387z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1385, I0=>nx14457z2, I1=>fsm_output_7);
   ix40386z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1386, I0=>nx55033z2, I1=>fsm_output_7);
   ix40385z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1387, I0=>nx48054z1, I1=>fsm_output_18, I2=>
      fsm_output_7);
   ix40384z1314 : LUT6
      generic map (INIT => X"0105030F00000000") 
       port map ( O=>px1388, I0=>fsm_output_41, I1=>fsm_output_9, I2=>
      fsm_output_8, I3=>px3200, I4=>px3218, I5=>nx48054z9);
   ix40383z32170 : LUT5
      generic map (INIT => X"00007888") 
       port map ( O=>px1389, I0=>nx48054z6, I1=>nx48054z9, I2=>nx48054z12, 
      I3=>nx48054z15, I4=>fsm_output_8);
   ix39395z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1390, I0=>nx39395z2, I1=>fsm_output_8);
   ix39394z1323 : LUT3
      generic map (INIT => X"09") 
       port map ( O=>px1391, I0=>nx48054z5, I1=>nx466z3, I2=>fsm_output_8);
   ix39393z1359 : LUT4
      generic map (INIT => X"002D") 
       port map ( O=>px1392, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      fsm_output_8);
   ix39392z2079 : LUT5
      generic map (INIT => X"000002FD") 
       port map ( O=>px1393, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>fsm_output_8);
   ix39391z1311 : LUT6
      generic map (INIT => X"000000000002FFFD") 
       port map ( O=>px1394, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>nx466z24, I5=>fsm_output_8);
   ix39390z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1395, I0=>nx466z2, I1=>fsm_output_8);
   ix39387z1316 : LUT5
      generic map (INIT => X"00000001") 
       port map ( O=>nx39387z2, I0=>fsm_output_17, I1=>fsm_output_16, I2=>
      fsm_output_15, I3=>fsm_output_14, I4=>fsm_output_13);
   ix15964z1316 : LUT3
      generic map (INIT => X"01") 
       port map ( O=>nx15964z1, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10);
   ix39387z1314 : LUT6
      generic map (INIT => X"FF010000FF000000") 
       port map ( O=>px1398, I0=>fsm_output_12, I1=>fsm_output_11, I2=>
      fsm_output_10, I3=>fsm_output_8, I4=>nx48054z1, I5=>nx39387z2);
   ix39386z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1399, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>p_z_out_14_1, I3=>
      p_rtlcn30427, I4=>px3184);
   ix37399z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1400, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>p_z_out_14_2, I3=>
      p_rtlcn30427, I4=>px3183);
   ix37398z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1401, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>p_z_out_14_3, I3=>
      p_rtlcn30427, I4=>px3182);
   ix37397z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1402, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>p_z_out_14_4, I3=>
      p_rtlcn30427, I4=>px3181);
   ix37396z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1403, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>p_z_out_14_5, I3=>
      p_rtlcn30427, I4=>px3180);
   ix37395z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1404, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>p_z_out_14_6, I3=>
      p_rtlcn30427, I4=>px3179);
   ix37394z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1405, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>p_z_out_14_7, I3=>
      p_rtlcn30427, I4=>px3178);
   ix37393z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1406, I0=>fsm_output_11, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(8), I2=>p_z_out_14_8, I3=>
      p_rtlcn30427, I4=>px3177);
   ix36397z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>px1415, I0=>fsm_output_31, I1=>px3160);
   ix36396z1334 : LUT3
      generic map (INIT => X"14") 
       port map ( O=>px1416, I0=>fsm_output_31, I1=>px3159, I2=>px3160);
   ix36395z6502 : LUT4
      generic map (INIT => X"1444") 
       port map ( O=>px1417, I0=>fsm_output_31, I1=>px3158, I2=>px3159, I3=>
      px3160);
   ix36394z18790 : LUT5
      generic map (INIT => X"14444444") 
       port map ( O=>px1418, I0=>fsm_output_31, I1=>px3157, I2=>px3158, I3=>
      px3159, I4=>px3160);
   ix36393z18790 : LUT6
      generic map (INIT => X"1444444444444444") 
       port map ( O=>px1419, I0=>fsm_output_31, I1=>px3156, I2=>px3157, I3=>
      px3158, I4=>px3159, I5=>px3160);
   ix35405z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1420, I0=>px1669, I1=>fsm_output_31);
   ix35404z1332 : LUT3
      generic map (INIT => X"12") 
       port map ( O=>px1421, I0=>px1667, I1=>fsm_output_31, I2=>px3154);
   ix35403z1346 : LUT3
      generic map (INIT => X"20") 
       port map ( O=>px1422, I0=>px1667, I1=>fsm_output_31, I2=>px3154);
   ix35402z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1423, I0=>nx48054z1, I1=>fsm_output_36, I2=>
      fsm_output_31);
   ix35401z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>px1424, I0=>fsm_output_19, I1=>px3152);
   ix35400z1334 : LUT3
      generic map (INIT => X"14") 
       port map ( O=>px1425, I0=>fsm_output_19, I1=>px3151, I2=>px3152);
   ix35399z6502 : LUT4
      generic map (INIT => X"1444") 
       port map ( O=>px1426, I0=>fsm_output_19, I1=>px3150, I2=>px3151, I3=>
      px3152);
   ix35398z18790 : LUT5
      generic map (INIT => X"14444444") 
       port map ( O=>px1427, I0=>fsm_output_19, I1=>px3149, I2=>px3150, I3=>
      px3151, I4=>px3152);
   ix35397z18790 : LUT6
      generic map (INIT => X"1444444444444444") 
       port map ( O=>px1428, I0=>fsm_output_19, I1=>px3148, I2=>px3149, I3=>
      px3150, I4=>px3151, I5=>px3152);
   ix35396z18790 : LUT6
      generic map (INIT => X"1444444444444444") 
       port map ( O=>px1429, I0=>fsm_output_19, I1=>px3147, I2=>px3148, I3=>
      px3149, I4=>px3150, I5=>px1608);
   ix34408z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>px1430, I0=>nx48054z1, I1=>fsm_output_30, I2=>
      fsm_output_19);
   ix34407z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1431, I0=>nx55033z4, I1=>fsm_output_20);
   ix34406z1320 : LUT3
      generic map (INIT => X"06") 
       port map ( O=>px1432, I0=>nx55033z4, I1=>nx55033z8, I2=>fsm_output_20
   );
   ix34405z1344 : LUT4
      generic map (INIT => X"001E") 
       port map ( O=>px1433, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>fsm_output_20);
   ix34404z1824 : LUT5
      generic map (INIT => X"000001FE") 
       port map ( O=>px1434, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>fsm_output_20);
   ix34403z1312 : LUT6
      generic map (INIT => X"000000000001FFFE") 
       port map ( O=>px1435, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>nx55033z18, I5=>fsm_output_20);
   ix34402z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1436, I0=>nx14457z2, I1=>fsm_output_20);
   ix34401z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1437, I0=>nx55033z2, I1=>fsm_output_20);
   ix33411z1317 : LUT3
      generic map (INIT => X"01") 
       port map ( O=>nx33411z3, I0=>fsm_output_24, I1=>fsm_output_23, I2=>
      fsm_output_22);
   ix33411z1316 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx33411z2, I0=>fsm_output_28, I1=>fsm_output_27, I2=>
      fsm_output_26, I3=>fsm_output_25);
   ix33411z1442 : LUT5
      generic map (INIT => X"AAAA0080") 
       port map ( O=>px1440, I0=>nx48054z1, I1=>nx33411z2, I2=>nx33411z3, I3
      =>fsm_output_29, I4=>fsm_output_20);
   ix33410z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1441, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>p_z_out_14_1, I3=>
      p_rtlcn30427, I4=>px3139);
   ix33409z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1442, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>p_z_out_14_2, I3=>
      p_rtlcn30427, I4=>px3138);
   ix33408z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1443, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>p_z_out_14_3, I3=>
      p_rtlcn30427, I4=>px3137);
   ix33407z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1444, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>p_z_out_14_4, I3=>
      p_rtlcn30427, I4=>px3136);
   ix33406z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1445, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>p_z_out_14_5, I3=>
      p_rtlcn30427, I4=>px3135);
   ix33405z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1446, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>p_z_out_14_6, I3=>
      p_rtlcn30427, I4=>px3134);
   ix33404z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1447, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>p_z_out_14_7, I3=>
      p_rtlcn30427, I4=>px3133);
   ix33403z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>px1448, I0=>fsm_output_23, I1=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(8), I2=>p_z_out_14_8, I3=>
      p_rtlcn30427, I4=>px3132);
   ix32407z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>px1457, I0=>fsm_output_32, I1=>px3115);
   ix32406z1334 : LUT3
      generic map (INIT => X"14") 
       port map ( O=>px1458, I0=>fsm_output_32, I1=>px3114, I2=>px3115);
   ix32405z6502 : LUT4
      generic map (INIT => X"1444") 
       port map ( O=>px1459, I0=>fsm_output_32, I1=>px3113, I2=>px3114, I3=>
      px3115);
   ix31417z18790 : LUT5
      generic map (INIT => X"14444444") 
       port map ( O=>px1460, I0=>fsm_output_32, I1=>px3112, I2=>px3113, I3=>
      px3114, I4=>px3115);
   ix31416z18790 : LUT6
      generic map (INIT => X"1444444444444444") 
       port map ( O=>px1461, I0=>fsm_output_32, I1=>px3111, I2=>px3112, I3=>
      px3113, I4=>px3114, I5=>px3115);
   ix31415z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>px1462, I0=>px1681, I1=>fsm_output_32);
   ix31414z1332 : LUT3
      generic map (INIT => X"12") 
       port map ( O=>px1463, I0=>px1679, I1=>fsm_output_32, I2=>px3109);
   ix31413z5970 : LUT4
      generic map (INIT => X"1230") 
       port map ( O=>px1464, I0=>px1679, I1=>fsm_output_32, I2=>px3108, I3=>
      px3109);
   ix31412z44836 : LUT4
      generic map (INIT => X"AA02") 
       port map ( O=>px1465, I0=>nx48054z1, I1=>fsm_output_35, I2=>
      fsm_output_34, I3=>fsm_output_32);
   ix31411z44406 : LUT4
      generic map (INIT => X"A854") 
       port map ( O=>px1466, I0=>nx13604z2, I1=>nx29420z1, I2=>nx29421z1, I3
      =>nx31411z2);
   ix30414z1321 : LUT6
      generic map (INIT => X"0000000077770007") 
       port map ( O=>px1476, I0=>p_nbus_Vga_rsc_singleport_addr(8), I1=>
      fsm_output_38, I2=>fsm_output_32, I3=>fsm_output_8, I4=>px3249, I5=>
      nx13604z21);
   ix30413z25634 : LUT5
      generic map (INIT => X"28775F00") 
       port map ( O=>px1477, I0=>Main_Trans_Ond_Opt_core_inst_fsm_output(40), 
      I1=>px3228, I2=>px3229, I3=>nx13604z23, I4=>nx13604z27);
   ix30412z20582 : LUT6
      generic map (INIT => X"4B44BBBB4B444B44") 
       port map ( O=>px1478, I0=>nx13604z17, I1=>nx13604z19, I2=>nx13604z21, 
      I3=>nx13604z23, I4=>nx13604z25, I5=>nx13604z27);
   ix30411z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>px1479, I0=>nx13604z13, I1=>nx13604z16);
   ix29423z1415 : LUT3
      generic map (INIT => X"65") 
       port map ( O=>px1480, I0=>nx13604z11, I1=>nx13604z13, I2=>nx13604z16
   );
   ix29422z23415 : LUT4
      generic map (INIT => X"5655") 
       port map ( O=>px1481, I0=>nx13604z9, I1=>nx13604z11, I2=>nx13604z13, 
      I3=>nx13604z16);
   ix29421z23159 : LUT5
      generic map (INIT => X"55565555") 
       port map ( O=>nx29421z1, I0=>nx13604z7, I1=>nx13604z9, I2=>nx13604z11, 
      I3=>nx13604z13, I4=>nx13604z16);
   ix29420z23159 : LUT6
      generic map (INIT => X"5555555655555555") 
       port map ( O=>nx29420z1, I0=>nx13604z3, I1=>nx13604z7, I2=>nx13604z9, 
      I3=>nx13604z11, I4=>nx13604z13, I5=>nx13604z16);
   ix31411z2086 : LUT6
      generic map (INIT => X"0001000301010303") 
       port map ( O=>nx31411z2, I0=>fsm_output_38, I1=>fsm_output_32, I2=>
      fsm_output_8, I3=>Main_Trans_Ond_Opt_core_inst_fsm_output(40), I4=>
      px3208, I5=>px3221);
   ix13604z1356 : LUT5
      generic map (INIT => X"77770007") 
       port map ( O=>nx13604z27, I0=>p_nbus_Vga_rsc_singleport_addr(9), I1=>
      fsm_output_38, I2=>fsm_output_32, I3=>fsm_output_8, I4=>px3250);
   ix13604z1337 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx13604z25, I0=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I1=>px3228);
   ix13604z1350 : LUT5
      generic map (INIT => X"77770007") 
       port map ( O=>nx13604z23, I0=>p_nbus_Vga_rsc_singleport_addr(8), I1=>
      fsm_output_38, I2=>fsm_output_32, I3=>fsm_output_8, I4=>px3249);
   ix13604z1334 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx13604z21, I0=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I1=>px3229);
   ix13604z1344 : LUT5
      generic map (INIT => X"77770007") 
       port map ( O=>nx13604z19, I0=>p_nbus_Vga_rsc_singleport_addr(10), I1
      =>fsm_output_38, I2=>fsm_output_32, I3=>fsm_output_8, I4=>px3251);
   ix13604z1331 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx13604z17, I0=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I1=>px3227);
   ix13604z46565 : LUT6
      generic map (INIT => X"B0BB0000B0BBB0BB") 
       port map ( O=>nx13604z16, I0=>nx13604z17, I1=>nx13604z19, I2=>
      nx13604z21, I3=>nx13604z23, I4=>nx13604z25, I5=>nx13604z27);
   ix13604z12115 : LUT6
      generic map (INIT => X"003F3F3F002A2A2A") 
       port map ( O=>nx13604z13, I0=>nx13604z4, I1=>
      p_nbus_Vga_rsc_singleport_addr(11), I2=>fsm_output_38, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I4=>px3226, I5=>px3252);
   ix13604z12114 : LUT6
      generic map (INIT => X"003F3F3F002A2A2A") 
       port map ( O=>nx13604z11, I0=>nx13604z4, I1=>
      p_nbus_Vga_rsc_singleport_addr(12), I2=>fsm_output_38, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I4=>px3225, I5=>px3253);
   ix13604z12113 : LUT6
      generic map (INIT => X"003F3F3F002A2A2A") 
       port map ( O=>nx13604z9, I0=>nx13604z4, I1=>
      p_nbus_Vga_rsc_singleport_addr(13), I2=>fsm_output_38, I3=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I4=>px3224, I5=>px3254);
   ix13604z63014 : LUT4
      generic map (INIT => X"F100") 
       port map ( O=>nx13604z7, I0=>fsm_output_32, I1=>fsm_output_8, I2=>
      px3255, I3=>px1783);
   ix13604z1318 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx13604z4, I0=>fsm_output_32, I1=>fsm_output_8);
   ix13604z10190 : LUT6
      generic map (INIT => X"030F33FF020A22AA") 
       port map ( O=>nx13604z3, I0=>nx13604z4, I1=>fsm_output_38, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3209, I4=>px3222, 
      I5=>px3256);
   ix13604z1315 : LUT6
      generic map (INIT => X"0000000100000000") 
       port map ( O=>nx13604z2, I0=>nx13604z3, I1=>nx13604z7, I2=>nx13604z9, 
      I3=>nx13604z11, I4=>nx13604z13, I5=>nx13604z16);
   ix16961z44937 : LUT6
      generic map (INIT => X"00C600660AC6AA66") 
       port map ( O=>nx16961z1, I0=>px1783, I1=>nx62052z10, I2=>
      fsm_output_33, I3=>fsm_output_9, I4=>px3109, I5=>px3195);
   ix48054z1316 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx48054z2, I0=>fsm_output_40, I1=>
      p_Src_rsc_singleport_oswt, I2=>p_Dst_rsc_singleport_oswt, I3=>
      fsm_output_1_0_42);
   ix48054z63004 : LUT6
      generic map (INIT => X"FCFFFCFFF8FAF0FA") 
       port map ( O=>nx48054z1, I0=>nx48054z2, I1=>p_start, I2=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I3=>
      p_mgc_start_sync_mgc_bsync_vld_oswt, I4=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt, 
      I5=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
   );
   ix26421z1316 : LUT5
      generic map (INIT => X"00000002") 
       port map ( O=>px1509, I0=>px1775, I1=>px1774, I2=>nx64045z3, I3=>
      nx64045z6, I4=>nx64045z9);
   ix23436z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>px1533, I0=>fsm_output_21, I1=>px3149, I2=>px3261);
   ix23433z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>px1536, I0=>fsm_output_21, I1=>px3150, I2=>px3260);
   ix22442z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>px1540, I0=>fsm_output_21, I1=>px3151, I2=>px3259);
   ix22441z11337 : LUT6
      generic map (INIT => X"D8D82727D8272727") 
       port map ( O=>px1541, I0=>fsm_output_21, I1=>px3151, I2=>px3259, I3=>
      px1548, I4=>px1545, I5=>px1544);
   ix21445z1316 : LUT6
      generic map (INIT => X"0002FFFDFFFD0002") 
       port map ( O=>px1550, I0=>px1775, I1=>px1774, I2=>nx64045z3, I3=>
      nx64045z6, I4=>nx64045z9, I5=>px1549);
   ix21444z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>px1551, I0=>fsm_output_38, I1=>px3214, I2=>px3244);
   ix21438z1354 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx21438z2, I0=>fsm_output_38, I1=>px3218, I2=>px3248);
   ix21438z28536 : LUT6
      generic map (INIT => X"6A5695A995A96A56") 
       port map ( O=>px1557, I0=>nx62052z2, I1=>nx62052z5, I2=>px1786, I3=>
      nx62052z9, I4=>px1781, I5=>nx21438z2);
   ix17453z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1594, I0=>p_nbus_Src_rsc_singleport_data_out(0), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3329, I5=>p_nbus_Vga_rsc_singleport_data_in(0));
   ix17452z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1595, I0=>p_nbus_Src_rsc_singleport_data_out(1), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3330, I5=>p_nbus_Vga_rsc_singleport_data_in(1));
   ix17451z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1596, I0=>p_nbus_Src_rsc_singleport_data_out(2), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3331, I5=>p_nbus_Vga_rsc_singleport_data_in(2));
   ix17450z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1597, I0=>p_nbus_Src_rsc_singleport_data_out(3), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3332, I5=>p_nbus_Vga_rsc_singleport_data_in(3));
   ix17449z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1598, I0=>p_nbus_Src_rsc_singleport_data_out(4), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3333, I5=>p_nbus_Vga_rsc_singleport_data_in(4));
   ix17448z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1599, I0=>p_nbus_Src_rsc_singleport_data_out(5), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3334, I5=>p_nbus_Vga_rsc_singleport_data_in(5));
   ix15461z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1600, I0=>p_nbus_Src_rsc_singleport_data_out(6), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3335, I5=>p_nbus_Vga_rsc_singleport_data_in(6));
   ix15460z1316 : LUT6
      generic map (INIT => X"FFFEFCFE03020002") 
       port map ( O=>px1601, I0=>p_nbus_Src_rsc_singleport_data_out(7), I1=>
      fsm_output_25, I2=>fsm_output_23, I3=>
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      px3336, I5=>p_nbus_Vga_rsc_singleport_data_in(7));
   ix15458z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>nx15458z1, I0=>fsm_output_30, I1=>p_rtlcn19649, I2=>
      px3256);
   ix15456z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>nx15456z1, I0=>fsm_output_30, I1=>p_rtlcn19650, I2=>
      px3262);
   ix15455z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>nx15455z1, I0=>fsm_output_30, I1=>p_rtlcn19651, I2=>
      px3261);
   ix15454z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>nx15454z1, I0=>fsm_output_30, I1=>p_rtlcn19652, I2=>
      px3260);
   ix15452z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>px1609, I0=>fsm_output_30, I1=>p_rtlcn19653, I2=>px3259
   );
   ix14464z1392 : LUT3
      generic map (INIT => X"4E") 
       port map ( O=>px1610, I0=>fsm_output_30, I1=>p_rtlcn19654, I2=>px3258
   );
   ix14463z1334 : LUT3
      generic map (INIT => X"14") 
       port map ( O=>px1611, I0=>fsm_output_30, I1=>p_rtlcn19655, I2=>px3207
   );
   ix55033z1317 : LUT6
      generic map (INIT => X"0000000000000001") 
       port map ( O=>nx55033z3, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>nx55033z18, I5=>nx55033z21);
   ix55033z24445 : LUT6
      generic map (INIT => X"5556555A56565A5A") 
       port map ( O=>nx55033z2, I0=>nx55033z3, I1=>fsm_output_21, I2=>
      fsm_output_19, I3=>fsm_output_18, I4=>px3140, I5=>px3201);
   ix14460z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>px1614, I0=>nx55033z2, I1=>px3256);
   ix55033z5725 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z21, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3141, I4=>px3202, I5=>px3256);
   ix14457z1313 : LUT6
      generic map (INIT => X"00000001FFFFFFFE") 
       port map ( O=>nx14457z2, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>nx55033z18, I5=>nx55033z21);
   ix14457z56649 : LUT4
      generic map (INIT => X"D827") 
       port map ( O=>px1617, I0=>fsm_output_21, I1=>px3255, I2=>px3262, I3=>
      nx14457z2);
   ix55033z5724 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z18, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3142, I4=>px3203, I5=>px3262);
   ix14455z1315 : LUT6
      generic map (INIT => X"0001FFFEFFFE0001") 
       port map ( O=>px1619, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx55033z15, I4=>nx14455z2, I5=>nx55033z18);
   ix14455z1531 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx14455z2, I0=>fsm_output_21, I1=>px3254, I2=>px3261);
   ix55033z5723 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z15, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3143, I4=>px3204, I5=>px3261);
   ix13465z803 : LUT5
      generic map (INIT => X"01FEFE01") 
       port map ( O=>px1622, I0=>nx55033z4, I1=>nx55033z8, I2=>nx55033z12, 
      I3=>nx13465z2, I4=>nx55033z15);
   ix13465z1531 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx13465z2, I0=>fsm_output_21, I1=>px3253, I2=>px3260);
   ix55033z5722 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z12, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3144, I4=>px3205, I5=>px3260);
   ix13462z56649 : LUT6
      generic map (INIT => X"272727D8D8D8D827") 
       port map ( O=>px1625, I0=>fsm_output_21, I1=>px3252, I2=>px3259, I3=>
      nx55033z4, I4=>nx55033z8, I5=>nx55033z12);
   ix55033z5721 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z8, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3145, I4=>px3206, I5=>px3259);
   ix13460z56649 : LUT5
      generic map (INIT => X"27D8D827") 
       port map ( O=>px1627, I0=>fsm_output_21, I1=>px3251, I2=>px3258, I3=>
      nx55033z4, I4=>nx55033z8);
   ix55033z5720 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx55033z4, I0=>fsm_output_21, I1=>fsm_output_19, I2=>
      fsm_output_18, I3=>px3146, I4=>px3207, I5=>px3258);
   ix13458z56649 : LUT4
      generic map (INIT => X"D827") 
       port map ( O=>px1629, I0=>fsm_output_21, I1=>px3250, I2=>px3257, I3=>
      nx55033z4);
   ix9756z1317 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>nx9756z2, I0=>fsm_output_13, I1=>px3303);
   ix466z6284 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx466z31, I0=>fsm_output_41, I1=>fsm_output_5, I2=>
      px3211, I3=>px3241);
   ix466z1358 : LUT5
      generic map (INIT => X"00020022") 
       port map ( O=>nx466z30, I0=>nx466z31, I1=>fsm_output_20, I2=>
      fsm_output_9, I3=>fsm_output_7, I4=>px3193);
   ix466z1312 : LUT6
      generic map (INIT => X"00000002FFFFFFFD") 
       port map ( O=>nx466z2, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3=>
      nx466z17, I4=>nx466z24, I5=>nx466z30);
   ix12466z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx12466z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(1), I3=>px3256);
   ix466z6282 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx466z25, I0=>fsm_output_41, I1=>fsm_output_5, I2=>
      px3212, I3=>px3242);
   ix466z1356 : LUT6
      generic map (INIT => X"0A0AAAAA00020022") 
       port map ( O=>nx466z24, I0=>nx466z25, I1=>fsm_output_20, I2=>
      fsm_output_9, I3=>fsm_output_7, I4=>px3194, I5=>px3256);
   ix9755z1315 : LUT6
      generic map (INIT => X"0002FFFD00000000") 
       port map ( O=>nx9755z2, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3
      =>nx466z17, I4=>nx466z24, I5=>fsm_output_9);
   ix12462z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx12462z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(2), I3=>px3255);
   ix466z5724 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx466z18, I0=>fsm_output_41, I1=>fsm_output_20, I2=>
      fsm_output_5, I3=>px3213, I4=>px3243, I5=>px3255);
   ix466z1842 : LUT5
      generic map (INIT => X"22AA020A") 
       port map ( O=>nx466z17, I0=>nx466z18, I1=>fsm_output_9, I2=>
      fsm_output_7, I3=>px3195, I4=>px3262);
   ix9754z1315 : LUT5
      generic map (INIT => X"02FD0000") 
       port map ( O=>nx9754z2, I0=>nx48054z5, I1=>nx466z3, I2=>nx466z10, I3
      =>nx466z17, I4=>fsm_output_9);
   ix11471z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx11471z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(3), I3=>px3254);
   ix9753z64084 : LUT4
      generic map (INIT => X"F531") 
       port map ( O=>nx9753z2, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      px3283, I3=>px3306);
   ix466z5722 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx466z11, I0=>fsm_output_41, I1=>fsm_output_20, I2=>
      fsm_output_5, I3=>px3214, I4=>px3244, I5=>px3254);
   ix466z1840 : LUT5
      generic map (INIT => X"22AA020A") 
       port map ( O=>nx466z10, I0=>nx466z11, I1=>fsm_output_9, I2=>
      fsm_output_7, I3=>px3196, I4=>px3261);
   ix11467z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx11467z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(4), I3=>px3253);
   ix9752z64084 : LUT4
      generic map (INIT => X"F531") 
       port map ( O=>nx9752z2, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      px3284, I3=>px3307);
   ix466z5720 : LUT6
      generic map (INIT => X"050F55FF01031133") 
       port map ( O=>nx466z4, I0=>fsm_output_41, I1=>fsm_output_20, I2=>
      fsm_output_5, I3=>px3215, I4=>px3245, I5=>px3253);
   ix466z1838 : LUT5
      generic map (INIT => X"22AA020A") 
       port map ( O=>nx466z3, I0=>nx466z4, I1=>fsm_output_9, I2=>
      fsm_output_7, I3=>px3197, I4=>px3260);
   ix48054z3230 : LUT6
      generic map (INIT => X"0000077707770777") 
       port map ( O=>nx48054z5, I0=>nx48054z6, I1=>nx48054z9, I2=>nx48054z12, 
      I3=>nx48054z15, I4=>nx48054z17, I5=>nx48054z18);
   ix10475z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx10475z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(5), I3=>px3252);
   ix9751z1317 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>nx9751z2, I0=>fsm_output_13, I1=>px3308);
   ix48054z14636 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx48054z18, I0=>fsm_output_41, I1=>fsm_output_9, I2=>
      fsm_output_5, I3=>px3198, I4=>px3216, I5=>px3246);
   ix48054z64093 : LUT4
      generic map (INIT => X"F531") 
       port map ( O=>nx48054z17, I0=>fsm_output_20, I1=>fsm_output_7, I2=>
      px3252, I3=>px3259);
   ix39395z64939 : LUT6
      generic map (INIT => X"0777F888F888F888") 
       port map ( O=>nx39395z2, I0=>nx48054z6, I1=>nx48054z9, I2=>nx48054z12, 
      I3=>nx48054z15, I4=>nx48054z17, I5=>nx48054z18);
   ix10470z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx10470z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(6), I3=>px3251);
   ix48054z1582 : LUT6
      generic map (INIT => X"55FF1133050F0103") 
       port map ( O=>nx48054z15, I0=>fsm_output_41, I1=>fsm_output_20, I2=>
      fsm_output_7, I3=>px3217, I4=>px3251, I5=>px3258);
   ix48054z6281 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx48054z12, I0=>fsm_output_9, I1=>fsm_output_5, I2=>
      px3199, I3=>px3247);
   ix9750z1315 : LUT5
      generic map (INIT => X"78880000") 
       port map ( O=>nx9750z2, I0=>nx48054z6, I1=>nx48054z9, I2=>nx48054z12, 
      I3=>nx48054z15, I4=>fsm_output_9);
   ix9479z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx9479z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(7), I3=>px3250);
   ix48054z1594 : LUT6
      generic map (INIT => X"0FFF055503330111") 
       port map ( O=>nx48054z9, I0=>fsm_output_20, I1=>fsm_output_7, I2=>
      fsm_output_5, I3=>px3248, I4=>px3250, I5=>px3257);
   ix48054z6759 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx48054z6, I0=>fsm_output_41, I1=>fsm_output_9, I2=>
      px3200, I3=>px3218);
   ix9749z64084 : LUT4
      generic map (INIT => X"F531") 
       port map ( O=>nx9749z2, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      px3287, I3=>px3310);
   ix9475z58899 : LUT4
      generic map (INIT => X"E0F1") 
       port map ( O=>nx9475z1, I0=>fsm_output_25, I1=>fsm_output_13, I2=>
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(8), I3=>px3249);
   ix64045z1311 : LUT5
      generic map (INIT => X"0002FFFD") 
       port map ( O=>px1761, I0=>px1775, I1=>px1774, I2=>nx64045z3, I3=>
      nx64045z6, I4=>nx64045z9);
   ix64045z6759 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx64045z10, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3153, I3=>px3211);
   ix64045z10193 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx64045z9, I0=>nx64045z10, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3201, I4=>px3241);
   ix64045z6757 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx64045z7, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3154, I3=>px3212);
   ix64045z10191 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx64045z6, I0=>nx64045z7, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3202, I4=>px3242);
   ix64045z6755 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx64045z4, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3155, I3=>px3213);
   ix64045z10189 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx64045z3, I0=>nx64045z4, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3203, I4=>px3243);
   ix63047z1313 : LUT6
      generic map (INIT => X"135FECA00000FFFF") 
       port map ( O=>px1772, I0=>fsm_output_38, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I2=>px3214, I3=>px3244, 
      I4=>px1775, I5=>nx63046z1);
   ix63046z6273 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx63046z1, I0=>fsm_output_33, I1=>fsm_output_9, I2=>
      px3156, I3=>px3204);
   ix63040z6755 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx63040z3, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3157, I3=>px3215);
   ix63040z10189 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx63040z2, I0=>nx63040z3, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3205, I4=>px3245);
   ix63040z34250 : LUT6
      generic map (INIT => X"1501EAFE7F5780A8") 
       port map ( O=>px1779, I0=>nx62052z2, I1=>nx62052z5, I2=>px1786, I3=>
      nx62052z9, I4=>nx63040z2, I5=>px1781);
   ix62052z39627 : LUT5
      generic map (INIT => X"6A5695A9") 
       port map ( O=>px1780, I0=>nx62052z2, I1=>nx62052z5, I2=>px1786, I3=>
      nx62052z9, I4=>px1781);
   ix62052z14631 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx62052z10, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3160, I4=>px3218, 
      I5=>px3248);
   ix62052z23096 : LUT6
      generic map (INIT => X"FF31FF11F5315511") 
       port map ( O=>nx62052z9, I0=>px1783, I1=>nx62052z10, I2=>
      fsm_output_33, I3=>fsm_output_9, I4=>px3109, I5=>px3195);
   ix62047z6753 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>px1785, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3108, I3=>px3209);
   ix62052z6277 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx62052z6, I0=>fsm_output_38, I1=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I2=>px3217, I3=>px3247);
   ix62052z10191 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx62052z5, I0=>nx62052z6, I1=>fsm_output_33, I2=>
      fsm_output_9, I3=>px3159, I4=>px3207);
   ix62052z6755 : LUT4
      generic map (INIT => X"153F") 
       port map ( O=>nx62052z3, I0=>fsm_output_38, I1=>fsm_output_33, I2=>
      px3158, I3=>px3216);
   ix62052z10189 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx62052z2, I0=>nx62052z3, I1=>fsm_output_9, I2=>
      Main_Trans_Ond_Opt_core_inst_fsm_output(40), I3=>px3206, I4=>px3246);

end INTERFACE ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity Main_Trans_Ond_Opt_core_0 is 
   port (
      p_start : IN std_logic ;
      p_Vga_triosy_lz : OUT std_logic ;
      p_nbus_Src_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      p_nbus_Dst_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      p_nbus_Src_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0)
       ;
      p_Src_rsc_singleport_re : OUT std_logic ;
      p_Src_rsc_singleport_we : OUT std_logic ;
      p_nbus_Dst_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0)
       ;
      p_Dst_rsc_singleport_re : OUT std_logic ;
      p_Dst_rsc_singleport_we : OUT std_logic ;
      p_Vga_rsc_singleport_we : OUT std_logic ;
      p_nbus_Src_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0)
       ;
      p_nbus_Dst_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0)
       ;
      p_nbus_nbLevels_rsc_z : IN std_logic_vector (2 DOWNTO 0) ;
      p_nbus_Vga_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0)
       ;
      p_nbus_Vga_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      p_rst : IN std_logic ;
      p_clk : IN std_logic ;
      p_Vga_rsc_singleport_re : IN std_logic ;
      px1028 : IN std_logic) ;
end Main_Trans_Ond_Opt_core_0 ;

architecture INTERFACE of Main_Trans_Ond_Opt_core_0 is 
   component Main_Trans_Ond_Opt_core_wait_ctrl_0
      port (
         p_mgc_start_sync_mgc_bsync_vld_oswt : IN std_logic ;
         p_start : IN std_logic ;
         p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42 : IN std_logic
          ;
         p_Src_rsc_singleport_icwt : IN std_logic ;
         p_Vga_triosy_lz : OUT std_logic ;
         px1507 : IN std_logic ;
         p_Src_rsc_singleport_tiswt0_0n0s2 : OUT std_logic ;
         p_rst : IN std_logic ;
         p_clk : IN std_logic ;
         p_mgc_start_sync_mgc_bsync_vld_icwt : OUT std_logic) ;
   
   end component ;
   component Main_Trans_Ond_Opt_core_fsm_0
      port (
         px1785 : OUT std_logic ;
         px1780 : OUT std_logic ;
         px1779 : OUT std_logic ;
         px1778 : OUT std_logic ;
         px1773 : OUT std_logic ;
         px1772 : OUT std_logic ;
         px3155 : IN std_logic ;
         px3153 : IN std_logic ;
         px1761 : OUT std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9 : IN std_logic_vector
          (8 DOWNTO 1) ;
         px3310 : IN std_logic ;
         px3287 : IN std_logic ;
         px3247 : IN std_logic ;
         px3217 : IN std_logic ;
         px3246 : IN std_logic ;
         px3216 : IN std_logic ;
         px3308 : IN std_logic ;
         px3245 : IN std_logic ;
         px3215 : IN std_logic ;
         px3307 : IN std_logic ;
         px3284 : IN std_logic ;
         px3306 : IN std_logic ;
         px3283 : IN std_logic ;
         px3243 : IN std_logic ;
         px3213 : IN std_logic ;
         px3194 : IN std_logic ;
         px3242 : IN std_logic ;
         px3212 : IN std_logic ;
         px3193 : IN std_logic ;
         px3241 : IN std_logic ;
         px3211 : IN std_logic ;
         px3303 : IN std_logic ;
         px3257 : IN std_logic ;
         px1629 : OUT std_logic ;
         px1627 : OUT std_logic ;
         px1625 : OUT std_logic ;
         px1622 : OUT std_logic ;
         px1619 : OUT std_logic ;
         px1617 : OUT std_logic ;
         px1614 : OUT std_logic ;
         px3140 : IN std_logic ;
         px3207 : IN std_logic ;
         px1611 : OUT std_logic ;
         px1610 : OUT std_logic ;
         px1609 : OUT std_logic ;
         p_rtlcn19652 : IN std_logic ;
         p_rtlcn19651 : IN std_logic ;
         p_rtlcn19650 : IN std_logic ;
         p_rtlcn19649 : IN std_logic ;
         p_nbus_Vga_rsc_singleport_data_in : IN std_logic_vector
          (7 DOWNTO 0) ;
         px3336 : IN std_logic ;
         p_nbus_Src_rsc_singleport_data_out : IN std_logic_vector
          (7 DOWNTO 0) ;
         px1601 : OUT std_logic ;
         px3335 : IN std_logic ;
         px1600 : OUT std_logic ;
         px3334 : IN std_logic ;
         px1599 : OUT std_logic ;
         px3333 : IN std_logic ;
         px1598 : OUT std_logic ;
         px3332 : IN std_logic ;
         px1597 : OUT std_logic ;
         px3331 : IN std_logic ;
         px1596 : OUT std_logic ;
         px3330 : IN std_logic ;
         px1595 : OUT std_logic ;
         px3329 : IN std_logic ;
         px1594 : OUT std_logic ;
         px1557 : OUT std_logic ;
         px3248 : IN std_logic ;
         px3244 : IN std_logic ;
         px3214 : IN std_logic ;
         px1551 : OUT std_logic ;
         px1549 : IN std_logic ;
         px1550 : OUT std_logic ;
         px1541 : OUT std_logic ;
         px1540 : OUT std_logic ;
         px1536 : OUT std_logic ;
         px1533 : OUT std_logic ;
         px1509 : OUT std_logic ;
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
          : IN std_logic ;
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
          : IN std_logic ;
         p_mgc_start_sync_mgc_bsync_vld_oswt : IN std_logic ;
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt : 
         IN std_logic ;
         p_start : IN std_logic ;
         p_Dst_rsc_singleport_oswt : IN std_logic ;
         p_Src_rsc_singleport_oswt : IN std_logic ;
         px3222 : IN std_logic ;
         px3209 : IN std_logic ;
         px1783 : IN std_logic ;
         px3221 : IN std_logic ;
         px3208 : IN std_logic ;
         px1481 : OUT std_logic ;
         px1480 : OUT std_logic ;
         px1479 : OUT std_logic ;
         px1478 : OUT std_logic ;
         px1477 : OUT std_logic ;
         px3249 : IN std_logic ;
         px1476 : OUT std_logic ;
         px1482 : OUT std_logic ;
         px1483 : OUT std_logic ;
         px1466 : OUT std_logic ;
         px1465 : OUT std_logic ;
         px3108 : IN std_logic ;
         px1464 : OUT std_logic ;
         px3109 : IN std_logic ;
         px1679 : IN std_logic ;
         px1463 : OUT std_logic ;
         px1681 : IN std_logic ;
         px1462 : OUT std_logic ;
         px1461 : OUT std_logic ;
         px1460 : OUT std_logic ;
         px1459 : OUT std_logic ;
         px1458 : OUT std_logic ;
         px1457 : OUT std_logic ;
         px3132 : IN std_logic ;
         px1448 : OUT std_logic ;
         px3133 : IN std_logic ;
         px1447 : OUT std_logic ;
         px3134 : IN std_logic ;
         px1446 : OUT std_logic ;
         px3135 : IN std_logic ;
         px1445 : OUT std_logic ;
         px3136 : IN std_logic ;
         px1444 : OUT std_logic ;
         px3137 : IN std_logic ;
         px1443 : OUT std_logic ;
         px3138 : IN std_logic ;
         px1442 : OUT std_logic ;
         px3139 : IN std_logic ;
         px1441 : OUT std_logic ;
         px1440 : OUT std_logic ;
         px1437 : OUT std_logic ;
         px1436 : OUT std_logic ;
         px1435 : OUT std_logic ;
         px1434 : OUT std_logic ;
         px1433 : OUT std_logic ;
         px1432 : OUT std_logic ;
         px1431 : OUT std_logic ;
         px1430 : OUT std_logic ;
         px1429 : OUT std_logic ;
         px1428 : OUT std_logic ;
         px1427 : OUT std_logic ;
         px1426 : OUT std_logic ;
         px1425 : OUT std_logic ;
         px1424 : OUT std_logic ;
         px1423 : OUT std_logic ;
         px1422 : OUT std_logic ;
         px3154 : IN std_logic ;
         px1667 : IN std_logic ;
         px1421 : OUT std_logic ;
         px1669 : IN std_logic ;
         px1420 : OUT std_logic ;
         px3156 : IN std_logic ;
         px1419 : OUT std_logic ;
         px3157 : IN std_logic ;
         px1418 : OUT std_logic ;
         px3158 : IN std_logic ;
         px1417 : OUT std_logic ;
         px3159 : IN std_logic ;
         px1416 : OUT std_logic ;
         px1415 : OUT std_logic ;
         px3177 : IN std_logic ;
         p_z_out_14_8 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3 : IN std_logic_vector
          (8 DOWNTO 1) ;
         px1406 : OUT std_logic ;
         px3178 : IN std_logic ;
         p_z_out_14_7 : IN std_logic ;
         px1405 : OUT std_logic ;
         px3179 : IN std_logic ;
         p_z_out_14_6 : IN std_logic ;
         px1404 : OUT std_logic ;
         px3180 : IN std_logic ;
         p_z_out_14_5 : IN std_logic ;
         px1403 : OUT std_logic ;
         px3181 : IN std_logic ;
         p_z_out_14_4 : IN std_logic ;
         px1402 : OUT std_logic ;
         px3182 : IN std_logic ;
         p_z_out_14_3 : IN std_logic ;
         px1401 : OUT std_logic ;
         px3183 : IN std_logic ;
         p_z_out_14_2 : IN std_logic ;
         px1400 : OUT std_logic ;
         px3184 : IN std_logic ;
         p_rtlcn30427 : IN std_logic ;
         p_z_out_14_1 : IN std_logic ;
         px1399 : OUT std_logic ;
         px1398 : OUT std_logic ;
         px1395 : OUT std_logic ;
         px1394 : OUT std_logic ;
         px1393 : OUT std_logic ;
         px1392 : OUT std_logic ;
         px1391 : OUT std_logic ;
         px1390 : OUT std_logic ;
         px1389 : OUT std_logic ;
         px1388 : OUT std_logic ;
         px1387 : OUT std_logic ;
         px1386 : OUT std_logic ;
         px1385 : OUT std_logic ;
         px1384 : OUT std_logic ;
         px1383 : OUT std_logic ;
         px1382 : OUT std_logic ;
         px1381 : OUT std_logic ;
         px1380 : OUT std_logic ;
         px1379 : OUT std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1 : IN 
         std_logic_vector (8 DOWNTO 0) ;
         px1377 : OUT std_logic ;
         px1376 : OUT std_logic ;
         px1375 : OUT std_logic ;
         px1374 : OUT std_logic ;
         px1373 : OUT std_logic ;
         px1372 : OUT std_logic ;
         px1371 : OUT std_logic ;
         px1370 : OUT std_logic ;
         px1369 : OUT std_logic ;
         px1368 : OUT std_logic ;
         px1367 : OUT std_logic ;
         px1366 : OUT std_logic ;
         px1365 : OUT std_logic ;
         px1364 : OUT std_logic ;
         px1363 : OUT std_logic ;
         px1362 : OUT std_logic ;
         px1361 : OUT std_logic ;
         px1360 : OUT std_logic ;
         px1359 : OUT std_logic ;
         px1358 : OUT std_logic ;
         px1357 : OUT std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1 : IN 
         std_logic_vector (8 DOWNTO 0) ;
         px1356 : OUT std_logic ;
         px1355 : OUT std_logic ;
         px1354 : OUT std_logic ;
         px1353 : OUT std_logic ;
         px1352 : OUT std_logic ;
         px1351 : OUT std_logic ;
         px1350 : OUT std_logic ;
         px1349 : OUT std_logic ;
         px1348 : OUT std_logic ;
         px1345 : OUT std_logic ;
         px1336 : OUT std_logic ;
         px1335 : OUT std_logic ;
         px1334 : OUT std_logic ;
         px1333 : OUT std_logic ;
         px1332 : OUT std_logic ;
         px1331 : OUT std_logic ;
         px1330 : OUT std_logic ;
         px1329 : OUT std_logic ;
         px3218 : IN std_logic ;
         px1328 : OUT std_logic ;
         px1327 : OUT std_logic ;
         px3250 : IN std_logic ;
         px1326 : OUT std_logic ;
         px3251 : IN std_logic ;
         px1325 : OUT std_logic ;
         px3252 : IN std_logic ;
         px1324 : OUT std_logic ;
         px3253 : IN std_logic ;
         px1323 : OUT std_logic ;
         px1322 : OUT std_logic ;
         px3254 : IN std_logic ;
         px3107 : IN std_logic ;
         px1321 : OUT std_logic ;
         px3255 : IN std_logic ;
         px1320 : OUT std_logic ;
         px1318 : OUT std_logic ;
         px1317 : OUT std_logic ;
         px1316 : OUT std_logic ;
         px3104 : IN std_logic ;
         px1315 : OUT std_logic ;
         px1314 : OUT std_logic ;
         px1313 : OUT std_logic ;
         px1312 : OUT std_logic ;
         px1311 : OUT std_logic ;
         px1310 : OUT std_logic ;
         px1309 : OUT std_logic ;
         px1308 : OUT std_logic ;
         px1303 : OUT std_logic ;
         px1302 : OUT std_logic ;
         px1301 : OUT std_logic ;
         px1300 : OUT std_logic ;
         px1299 : OUT std_logic ;
         px1298 : OUT std_logic ;
         px1297 : OUT std_logic ;
         px1293 : OUT std_logic ;
         px1291 : OUT std_logic ;
         px1290 : OUT std_logic ;
         px1289 : OUT std_logic ;
         px1288 : OUT std_logic ;
         px1287 : OUT std_logic ;
         px1286 : OUT std_logic ;
         px1281 : OUT std_logic ;
         px3320 : IN std_logic ;
         px3319 : IN std_logic ;
         px3318 : IN std_logic ;
         px3220 : IN std_logic ;
         px3219 : IN std_logic ;
         px3124 : IN std_logic ;
         px3116 : IN std_logic ;
         px3273 : IN std_logic ;
         px3125 : IN std_logic ;
         px3274 : IN std_logic ;
         px3126 : IN std_logic ;
         px3275 : IN std_logic ;
         px3127 : IN std_logic ;
         px3128 : IN std_logic ;
         px3120 : IN std_logic ;
         px3129 : IN std_logic ;
         px3121 : IN std_logic ;
         px3278 : IN std_logic ;
         px3130 : IN std_logic ;
         px3279 : IN std_logic ;
         px3131 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp : IN 
         std_logic_vector (8 DOWNTO 0) ;
         p_nbus_Src_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0)
          ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15 : IN std_logic_vector
          (7 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp : IN 
         std_logic_vector (7 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1 : IN 
         std_logic_vector (7 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm : IN 
         std_logic_vector (15 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp : IN 
         std_logic_vector (7 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm : IN 
         std_logic_vector (14 DOWNTO 6) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6 : 
         IN std_logic_vector (1 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7 : 
         IN std_logic_vector (1 DOWNTO 0) ;
         px1500 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5 : IN 
         std_logic_vector (1 DOWNTO 0) ;
         px3195 : IN std_logic ;
         px3196 : IN std_logic ;
         px3110 : IN std_logic ;
         px3197 : IN std_logic ;
         px3111 : IN std_logic ;
         px3198 : IN std_logic ;
         px3112 : IN std_logic ;
         px3199 : IN std_logic ;
         px3113 : IN std_logic ;
         px3200 : IN std_logic ;
         px3114 : IN std_logic ;
         px3115 : IN std_logic ;
         px3295 : IN std_logic ;
         px3161 : IN std_logic ;
         px3296 : IN std_logic ;
         px3162 : IN std_logic ;
         px3297 : IN std_logic ;
         px3163 : IN std_logic ;
         px3298 : IN std_logic ;
         px3164 : IN std_logic ;
         px3299 : IN std_logic ;
         px3165 : IN std_logic ;
         px3300 : IN std_logic ;
         px3166 : IN std_logic ;
         px3301 : IN std_logic ;
         px3167 : IN std_logic ;
         px3302 : IN std_logic ;
         px3168 : IN std_logic ;
         p_nbus_Dst_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0)
          ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17 : IN std_logic_vector
          (8 DOWNTO 0) ;
         p_nbus_Vga_rsc_singleport_addr : IN std_logic_vector (16 DOWNTO 0)
          ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp : IN 
         std_logic_vector (8 DOWNTO 8) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm : IN 
         std_logic_vector (16 DOWNTO 1) ;
         px1208 : OUT std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm : IN 
         std_logic_vector (15 DOWNTO 0) ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva : IN 
         std_logic_vector (8 DOWNTO 0) ;
         px3096 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm : IN 
         std_logic_vector (9 DOWNTO 1) ;
         px3097 : IN std_logic ;
         px3098 : IN std_logic ;
         px3099 : IN std_logic ;
         px3100 : IN std_logic ;
         px3101 : IN std_logic ;
         px3102 : IN std_logic ;
         px3103 : IN std_logic ;
         p_reg_passe_y_1_acc_44_sdt_tmp_6_1 : IN std_logic ;
         px3264 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7 : 
         IN std_logic_vector (1 DOWNTO 1) ;
         px3141 : IN std_logic ;
         px3224 : IN std_logic ;
         px3316 : IN std_logic ;
         px3265 : IN std_logic ;
         px3142 : IN std_logic ;
         px3225 : IN std_logic ;
         px3266 : IN std_logic ;
         px3143 : IN std_logic ;
         px3226 : IN std_logic ;
         px3267 : IN std_logic ;
         px3144 : IN std_logic ;
         px3227 : IN std_logic ;
         px3268 : IN std_logic ;
         px3145 : IN std_logic ;
         px3228 : IN std_logic ;
         px3269 : IN std_logic ;
         px3146 : IN std_logic ;
         px3270 : IN std_logic ;
         px3229 : IN std_logic ;
         px3160 : IN std_logic ;
         px1159 : OUT std_logic ;
         px1664 : OUT std_logic ;
         px1068 : OUT std_logic ;
         px3309 : IN std_logic ;
         px3286 : IN std_logic ;
         px1660 : OUT std_logic ;
         px1067 : OUT std_logic ;
         px3285 : IN std_logic ;
         px1656 : OUT std_logic ;
         px1066 : OUT std_logic ;
         px1651 : OUT std_logic ;
         px1065 : OUT std_logic ;
         px1646 : OUT std_logic ;
         px1064 : OUT std_logic ;
         px3305 : IN std_logic ;
         px3282 : IN std_logic ;
         px1642 : OUT std_logic ;
         px1063 : OUT std_logic ;
         px3304 : IN std_logic ;
         px3281 : IN std_logic ;
         px1638 : OUT std_logic ;
         px1062 : OUT std_logic ;
         px3280 : IN std_logic ;
         px1634 : OUT std_logic ;
         px1061 : OUT std_logic ;
         p_rtlcn19655 : IN std_logic ;
         px1051 : OUT std_logic ;
         px3258 : IN std_logic ;
         px3206 : IN std_logic ;
         p_rtlcn19654 : IN std_logic ;
         px1050 : OUT std_logic ;
         px3205 : IN std_logic ;
         p_rtlcn19653 : IN std_logic ;
         px1049 : OUT std_logic ;
         px1607 : OUT std_logic ;
         px3204 : IN std_logic ;
         px3152 : IN std_logic ;
         px1048 : OUT std_logic ;
         px3150 : IN std_logic ;
         px3149 : IN std_logic ;
         px1606 : OUT std_logic ;
         px1047 : OUT std_logic ;
         px3202 : IN std_logic ;
         px3148 : IN std_logic ;
         px1604 : IN std_logic ;
         px1605 : OUT std_logic ;
         px1046 : OUT std_logic ;
         px3201 : IN std_logic ;
         px3147 : IN std_logic ;
         px1602 : IN std_logic ;
         px1603 : OUT std_logic ;
         px1608 : IN std_logic ;
         px1045 : OUT std_logic ;
         px3203 : IN std_logic ;
         px1763 : OUT std_logic ;
         px1766 : OUT std_logic ;
         px1770 : OUT std_logic ;
         px1774 : IN std_logic ;
         px1775 : IN std_logic ;
         px1009 : OUT std_logic ;
         px1006 : OUT std_logic ;
         px1544 : IN std_logic ;
         px1545 : IN std_logic ;
         px1548 : IN std_logic ;
         px3259 : IN std_logic ;
         px3151 : IN std_logic ;
         px1004 : OUT std_logic ;
         px1781 : IN std_logic ;
         px1790 : OUT std_logic ;
         px1003 : OUT std_logic ;
         px986 : OUT std_logic ;
         px985 : OUT std_logic ;
         px984 : OUT std_logic ;
         px3261 : IN std_logic ;
         px3260 : IN std_logic ;
         px3105 : IN std_logic ;
         px983 : OUT std_logic ;
         px3262 : IN std_logic ;
         px3256 : IN std_logic ;
         px982 : OUT std_logic ;
         px981 : OUT std_logic ;
         px980 : OUT std_logic ;
         p_st_copy_y_2_2_tr0 : IN std_logic ;
         p_st_copy_y_1_2_tr0 : IN std_logic ;
         px3317 : IN std_logic ;
         px3294 : IN std_logic ;
         p_rtlcn30054 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2 : IN std_logic_vector
          (8 DOWNTO 8) ;
         p_exit_passe_y_1_sva : IN std_logic ;
         p_exit_passe_y_sva : IN std_logic ;
         p_rtlcn30248 : IN std_logic ;
         p_st_copy_y_2_tr0 : IN std_logic ;
         px3272 : IN std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11 : IN std_logic_vector
          (8 DOWNTO 1) ;
         p_nbus_Src_rsc_singleport_data_in : OUT std_logic_vector
          (7 DOWNTO 0) ;
         px3117 : IN std_logic ;
         px3118 : IN std_logic ;
         px3119 : IN std_logic ;
         px3276 : IN std_logic ;
         px3277 : IN std_logic ;
         px3122 : IN std_logic ;
         px3123 : IN std_logic ;
         px1501 : IN std_logic ;
         px1784 : OUT std_logic ;
         px1786 : IN std_logic ;
         px1788 : OUT std_logic ;
         px3311 : IN std_logic ;
         px3312 : IN std_logic ;
         px3313 : IN std_logic ;
         px3314 : IN std_logic ;
         px3315 : IN std_logic ;
         p_Src_rsc_singleport_re : OUT std_logic ;
         p_Src_rsc_singleport_we : OUT std_logic ;
         px1719 : IN std_logic ;
         px3169 : IN std_logic ;
         p_nbus_Dst_rsc_singleport_data_in : OUT std_logic_vector
          (7 DOWNTO 0) ;
         px1722 : IN std_logic ;
         px3170 : IN std_logic ;
         px1725 : IN std_logic ;
         px3171 : IN std_logic ;
         px1728 : IN std_logic ;
         px3172 : IN std_logic ;
         px1731 : IN std_logic ;
         px3173 : IN std_logic ;
         px1734 : IN std_logic ;
         px3174 : IN std_logic ;
         px1737 : IN std_logic ;
         px3175 : IN std_logic ;
         px1740 : IN std_logic ;
         px3176 : IN std_logic ;
         px1209 : IN std_logic ;
         px1205 : IN std_logic ;
         px1202 : IN std_logic ;
         px1199 : IN std_logic ;
         px1196 : IN std_logic ;
         px1193 : IN std_logic ;
         px1190 : IN std_logic ;
         px1187 : IN std_logic ;
         px1183 : IN std_logic ;
         px1503 : IN std_logic ;
         px3288 : IN std_logic ;
         px1502 : OUT std_logic ;
         px3289 : IN std_logic ;
         px3290 : IN std_logic ;
         px3291 : IN std_logic ;
         px3292 : IN std_logic ;
         px3293 : IN std_logic ;
         p_Dst_rsc_singleport_re : OUT std_logic ;
         p_Dst_rsc_singleport_we : OUT std_logic ;
         p_Vga_rsc_singleport_we : OUT std_logic ;
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output : OUT 
         std_logic_vector (41 DOWNTO 41) ;
         p_fsm_output_9 : OUT std_logic ;
         p_fsm_output_11 : OUT std_logic ;
         p_fsm_output_13 : OUT std_logic ;
         p_fsm_output_15 : OUT std_logic ;
         p_fsm_output_16 : OUT std_logic ;
         p_fsm_output_21 : OUT std_logic ;
         p_fsm_output_23 : OUT std_logic ;
         p_fsm_output_25 : OUT std_logic ;
         p_fsm_output_30 : OUT std_logic ;
         p_fsm_output_33 : OUT std_logic ;
         p_fsm_output_38 : OUT std_logic ;
         p_rst : IN std_logic ;
         px1507 : OUT std_logic ;
         p_clk : IN std_logic ;
         p_fsm_output_1_0_42 : OUT std_logic) ;
   end component ;
   signal nx27124z8, nx27124z10, nx27124z13, nx28310z3, nx57164z4, 
      nx12188z35, nx39518z4, nx39519z5, nx50040z3, nx39520z5, nx12188z38, 
      nx50038z3, nx32631z2, nx50040z5, nx32631z3, nx9010z2, nx12188z180, 
      nx37767z7, nx12188z46, nx12188z63, nx12188z150, nx12188z151, 
      nx12188z152, nx28307z3, nx28309z3, nx28309z5, nx28311z5, nx28311z3, 
      nx50045z2, nx39517z5, nx39519z6, nx39520z4, nx50040z4, nx50039z3, 
      nx50039z4, nx27120z4, nx27122z3, nx27123z3, nx27124z12, nx27124z4, 
      nx39519z7, nx39519z3, nx39517z9, nx39517z6, nx39517z4, nx27124z11, 
      nx27124z5, nx12188z165, nx27124z9, nx27124z7, nx27124z6, nx12188z179, 
      nx12188z181, nx12188z182, nx12188z183, nx12188z184, nx12188z185, 
      nx12188z186, nx12188z187, nx12188z188, fsm_output_2, fsm_output_9, 
      fsm_output_11, fsm_output_13, fsm_output_15, fsm_output_16, 
      fsm_output_21, fsm_output_23, fsm_output_25, fsm_output_30, 
      fsm_output_33, fsm_output_38, 
      Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42, 
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2, 
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt, 
      nx37767z6, nx22393z3, nx22392z3, nx22391z3, nx22390z3, nx22389z3, 
      nx22388z3, nx22387z3, nx12188z87, nx12188z88, nx59090z1, nx12188z89, 
      nx29540z1, nx12188z154, nx42765z2, nx12188z135, nx9226z1, nx12188z170, 
      nx8229z1, nx12188z169, nx7232z1, nx12188z168, nx6235z1, nx12188z167, 
      nx5238z1, nx42765z1, nx12188z166, nx12188z3, nx39052z4, nx12188z9, 
      nx12188z12, nx12188z14, nx39056z4, nx39057z4, nx5050z1, nx12188z24, 
      nx12188z123, nx12188z121, nx12188z119, nx12188z117, nx12188z115, 
      nx12188z113, nx12188z111, nx33068z1, nx12188z109, nx57245z1, 
      nx12188z155, nx62339z1, nx12188z194, nx61342z1, nx12188z193, nx60345z1, 
      nx12188z192, nx59348z1, nx12188z191, nx58351z1, nx12188z190, nx57354z2, 
      nx57354z1, nx12188z189, nx12188z4, nx39052z3, nx39053z3, nx12188z13, 
      nx12188z15, nx39056z3, nx39057z3, nx23913z1, nx44433z3, nx12188z106, 
      nx12188z104, nx12188z162, nx12188z161, nx12188z98, nx12188z96, 
      nx12188z94, nx2736z1, nx12188z157, nx9010z1, st_copy_y_1_2_tr0, 
      nx45319z1, nx12188z145, nx46316z1, nx12188z144, nx47313z1, nx12188z142, 
      nx48310z1, nx12188z140, nx49307z1, nx12188z138, nx50304z2, nx50304z1, 
      nx12188z136, nx48317z1, nx12188z133, nx21432z1, nx16297z1, nx50039z8, 
      nx11162z1, nx50040z9, nx59509z1, nx39520z7, nx64644z1, nx39517z8, 
      nx4243z2, nx12188z25, nx33923z1, nx28788z1, nx23653z1, nx12188z84, 
      nx47018z1, nx12188z83, nx52153z1, nx12188z82, nx57288z1, nx12188z81, 
      nx62423z1, nx12188z80, nx2022z1, nx4243z1, nx12188z43, nx1384z1, 
      nx12188z32, nx387z2, nx12188z5, nx64926z1, nx12188z7, nx63929z1, 
      nx12188z10, nx62932z1, nx12188z33, nx61935z1, nx12188z16, nx60938z1, 
      nx12188z19, nx59941z1, nx387z1, nx12188z22, nx57765z2, 
      mgc_start_sync_mgc_bsync_vld_oswt, nx41294z1, Dst_rsc_singleport_oswt, 
      nx34441z1, Src_rsc_singleport_oswt, nx37767z4, nx22393z6, nx22392z6, 
      nx22391z6, nx22390z6, nx22389z6, nx22388z6, nx22387z6, nx54867z1, 
      nx12188z146, nx55864z1, nx12188z143, nx56861z1, nx12188z141, nx57858z1, 
      nx12188z139, nx58855z1, nx12188z137, nx59852z1, nx12188z134, nx60849z1, 
      nx12188z40, nx61846z2, nx12188z36, nx62843z1, nx61846z1, nx12188z41: 
   std_logic ;
   
   signal Vga_rsc_singleport_addr: std_logic_vector (16 DOWNTO 0) ;
   
   signal nx40831z1, nx12188z90, nx41828z1, nx12188z91, nx1249z1, nx12188z79, 
      nx2246z2, nx12188z6, nx3243z1, nx12188z8, nx4240z1, nx12188z11, 
      nx5237z1, nx12188z34, nx6234z1, nx12188z17, nx7231z1, nx12188z20, 
      nx8228z1, nx2246z1, nx12188z23, nx8036z1, nx7039z1, nx6042z1, nx5045z1, 
      nx4048z1, nx3051z1, nx2054z1, nx12188z39, nx1057z2, nx12188z37, nx60z1, 
      nx1057z1, nx12188z42, nx53015z2, nx12188z27, nx54012z1, nx39517z10, 
      nx55009z1, nx39518z5, nx56006z1, nx39519z8, nx57003z1, nx39520z6, 
      nx58000z1, nx50040z8, nx58997z1, nx53015z1, nx21806z1, nx20809z1, 
      nx19812z1, nx18815z1, nx17818z1, nx16821z1, nx15824z2, nx12188z18, 
      nx14827z1, nx15824z1, nx12188z21, nx37767z3, nx22393z5, nx22392z5, 
      nx22391z5, nx22390z5, nx22389z5, nx22388z5, nx22387z5, nx9498z1, 
      nx12188z77, nx8501z1, nx12188z76, nx7504z1, nx12188z75, nx6507z1, 
      nx12188z74, nx5510z1, nx12188z73, nx4513z1, nx12188z72, nx3516z1, 
      nx12188z71, nx2519z1, nx12188z70, nx63082z1, nx12188z178, nx62085z1, 
      nx12188z177, nx61088z1, nx12188z176, nx60091z1, nx12188z175, nx59094z1, 
      nx12188z174, nx58097z1, nx12188z173, nx57100z1, nx12188z172, nx56103z1, 
      nx12188z171, nx36142z1, nx12188z124, nx37139z1, nx12188z122, nx38136z1, 
      nx12188z120, nx39133z1, nx12188z118, nx40130z1, nx12188z116, nx41127z3, 
      nx12188z114, nx42124z1, nx12188z112, nx43121z1, nx12188z110, nx2972z1, 
      nx12188z68, nx1975z1, nx12188z67, nx978z1, nx12188z66, nx65517z1, 
      nx12188z65, nx64520z1, nx12188z64, nx63523z2, nx12188z1, nx62526z1, 
      nx61529z1, nx63523z1, nx59915z2, nx60912z1, nx61909z1, nx62906z1, 
      nx63903z1, nx64900z1, nx59915z1, nx14906z1, nx13909z1, nx12912z1, 
      nx11915z1, nx10918z1, nx9921z1, nx8924z2, nx8924z1, nx49828z1, 
      nx12188z61, nx50825z1, nx12188z60, nx51822z1, nx12188z59, nx52819z1, 
      nx12188z58, nx53816z1, nx12188z57, nx54813z1, nx12188z56, nx55810z1, 
      nx12188z55, nx56807z1, nx12188z54, nx25173z1, nx12188z107, nx24176z1, 
      nx12188z105, nx23179z1, nx12188z102, nx22182z1, nx12188z100, nx21185z1, 
      nx12188z99, nx20188z1, nx12188z97, nx19191z1, nx12188z95, nx18194z1, 
      nx12188z92, nx8403z1, nx12188z164, nx9400z1, nx12188z163, nx10397z1, 
      nx12188z103, nx11394z1, nx12188z101, nx12391z1, nx12188z160, nx13388z1, 
      nx12188z159, nx14385z1, nx12188z158, nx15382z1, nx12188z93, nx32648z1, 
      nx12188z52, nx33645z1, nx12188z51, nx34642z1, nx12188z50, nx35639z1, 
      nx12188z49, nx36636z1, nx12188z48, nx37633z1, nx12188z47, nx38630z1, 
      nx12188z45, nx39627z2, nx39627z1, nx12188z44, nx51911z1, nx12188z85, 
      nx50040z7, nx12188z153, nx12188z86, nx12188z132, nx12188z131, 
      nx12188z130, nx12188z129, nx12188z128, nx12188z127, nx12188z126, 
      nx12188z125, nx57765z1, 
      Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0, nx45428z1, 
      Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1: 
   std_logic_vector (8 DOWNTO 0) ;
   
   signal nx30297z1, exit_passe_y_sva: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm: std_logic_vector
    (16 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp: std_logic_vector
    (8 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm: std_logic_vector
    (15 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp: std_logic_vector
    (7 DOWNTO 0) ;
   
   signal nx2454z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp: std_logic_vector
    (8 DOWNTO 0) ;
   
   signal exit_passe_y_1_sva: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm: 
   std_logic_vector (15 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp: 
   std_logic_vector (7 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm: std_logic_vector
    (14 DOWNTO 6) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva: 
   std_logic_vector (8 DOWNTO 0) ;
   
   signal nx39610z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp: std_logic_vector
    (7 DOWNTO 0) ;
   
   signal nx38613z1, nx37616z1, nx36619z1, nx35622z1, nx34625z1, nx33628z1, 
      nx32631z1, nx7264z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1: 
   std_logic_vector (8 DOWNTO 0) ;
   
   signal nx8261z1, nx9258z1, nx10255z1, nx11252z1, nx12249z1, nx13246z1, 
      nx14243z1, nx15240z2, nx15240z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7: 
   std_logic_vector (1 DOWNTO 0) ;
   
   signal nx12188z108: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6: 
   std_logic_vector (1 DOWNTO 0) ;
   
   signal nx11735z1, nx31484z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7: 
   std_logic_vector (1 DOWNTO 0) ;
   
   signal nx30487z1, nx60014z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5: std_logic_vector
    (1 DOWNTO 0) ;
   
   signal nx47320z1, nx30894z1, reg_passe_y_1_acc_44_sdt_tmp_6_1: std_logic
    ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2: 
   std_logic_vector (8 DOWNTO 1) ;
   
   signal nx50039z7, nx27120z2, nx27119z1, nx27120z3, nx27120z1, nx27121z3, 
      nx27121z1, nx27122z4, nx27122z1, nx27123z4, nx27123z1, nx27124z3, 
      nx27124z1, nx27125z3, nx278z1, nx277z1, nx276z2, nx276z1, nx275z2, 
      nx275z1, nx274z2, nx274z1, nx273z2, nx273z1, nx272z1, nx50039z6: 
   std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm: 
   std_logic_vector (7 DOWNTO 1) ;
   
   signal nx51874z2, nx50040z6, nx51874z1, nx51875z2, nx51876z3, nx51875z1, 
      nx51876z2, nx51877z3, nx51876z1, nx51877z2, nx57253z2, nx51877z1, 
      nx57253z3, nx39517z7, nx57253z1, nx57254z1, nx12188z26, nx44612z2, 
      nx15577z3, nx12188z31, nx44612z1, nx44612z3, nx16726z2, nx50039z5, 
      nx50037z2, nx12188z30, nx50038z2, nx39523z1, nx50037z1, nx12188z29, 
      nx50039z2, nx39522z1, nx50038z1, nx12188z28, nx50040z2, nx39521z1, 
      nx50039z1, nx12188z149, nx39520z3, nx39520z2, nx50040z1, nx12188z148, 
      nx39519z4, nx39519z2, nx39520z1, nx12188z147, nx39518z3, nx39518z2, 
      nx39519z1, nx39517z3, nx39517z1, nx39518z1, nx50045z1, 
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt: 
   std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_17: std_logic_vector
    (8 DOWNTO 0) ;
   
   signal nx57161z2, nx57161z1, nx57162z2, nx57163z2, nx57162z1, nx57163z3, 
      nx57164z2, nx57163z1, nx57164z3, nx57165z2, nx57164z1, nx57165z3, 
      nx57166z2, nx57165z1, nx57166z3, nx57167z2, nx57166z1, nx57167z3, 
      nx57168z1, nx57167z1, nx57168z2, nx28313z2, nx28312z2, nx28313z1, 
      nx28312z3, nx28311z2, nx28312z1, nx28311z4, nx28310z2, nx28311z1, 
      nx28310z4, nx28309z2, nx28310z1, nx28309z4, nx28308z2, nx28309z1, 
      nx28308z3, nx28307z1, nx28308z1, nx28307z2, nx25232z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_11: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx25232z3, nx25233z2, nx25232z1, nx25233z3, nx25234z2, nx25233z1, 
      nx25234z3, nx25235z2, nx25234z1, nx25235z3, nx25236z2, nx25235z1, 
      nx25236z3, nx25237z2, nx25236z1, nx25237z3, nx25238z2, nx25237z1, 
      nx25238z3, nx25239z2, nx25239z1, nx25238z1, nx52942z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_10: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx7219z2, nx52941z2, nx7219z1, nx52941z3, nx52940z2, nx52941z1, 
      nx52940z3, nx52939z2, nx52940z1, nx52939z3, nx52938z2, nx52939z1, 
      nx52938z3, nx52937z2, nx52938z1, nx52937z3, nx52936z2, nx52937z1, 
      nx52936z3, nx52935z2, nx52935z1, nx52936z1, nx26275z3, nx15382z2, 
      nx33885z4, nx10448z1, nx33884z4, nx10449z1, nx33883z4, nx10450z1, 
      nx33882z4, nx10451z1, nx33881z4, nx10452z1, nx33880z4, nx10453z1, 
      nx33879z3, nx10454z1, nx3056z1, nx12188z78, z_out_14_8, nx3057z2, 
      nx2319z1, z_out_14_7, nx3058z2, nx3057z1, z_out_14_6, nx3059z2, 
      nx3058z1, z_out_14_5, nx3060z2, nx3059z1, z_out_14_4, nx3061z2, 
      nx3060z1, z_out_14_3, nx3062z2, nx3061z1, z_out_14_2, nx3063z1, 
      nx3062z1, z_out_14_1, nx15577z2, nx15578z2, nx15577z1, nx15578z3, 
      nx15579z2, nx15578z1, nx15579z3, nx15580z2, nx15579z1, nx15580z3, 
      nx15581z2, nx15580z1, nx15581z3, nx15582z2, nx15581z1, nx15582z3, 
      nx15583z2, nx15582z1, nx15583z3, nx15584z1, nx15583z1, nx15584z2, 
      nx55083z2, mux_109_nl, nx51265z1, nx55084z3, nx55084z2, nx55083z1, 
      nx55085z3, nx55085z2, nx55084z1, nx55086z3, nx55086z2, nx55085z1, 
      nx55087z3, nx55087z2, nx55086z1, nx55088z3, nx55088z2, nx55087z1, 
      nx55089z2, nx55089z1, nx55088z1, nx18381z3, nx18381z2, nx18194z2, 
      nx18380z3, nx18380z2, nx18381z1, nx18379z3, nx18379z2, nx18380z1, 
      nx18378z3, nx18378z2, nx18379z1, nx18377z3, nx18377z2, nx18378z1, 
      nx18376z3, nx18376z2, nx18377z1, nx18375z3, nx18375z2, nx18376z1, 
      nx18374z2, nx18374z1, nx18375z1, nx22387z4: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_9: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx22387z2, nx22387z1, nx22388z2, nx22388z1, nx22389z2, nx22389z1, 
      nx22390z2, nx22390z1, nx22391z2, nx22391z1, nx22392z2, nx22392z1, 
      nx22393z2, nx37767z5, nx22393z1, nx16626z3, nx16626z2, nx12188z156, 
      nx16625z3, nx16625z2, nx16626z1, nx16624z2, nx12188z69, nx16625z1, 
      nx16623z3, nx16623z2, nx16624z1, nx16622z3, nx16622z2, nx16623z1, 
      nx16621z3, nx16621z2, nx16622z1, nx16620z3, nx16620z2, nx16621z1, 
      nx16619z1, image_copy_1_y_1_sva_1_0, nx16620z1, nx55217z3, nx55217z2, 
      nx9010z3, nx55218z3, nx55218z2, nx55217z1, nx55219z2, nx12188z53, 
      nx55218z1, nx55220z3, nx55220z2, nx55219z1, nx55221z3, nx55221z2, 
      nx55220z1, nx55222z3, nx55222z2, nx55221z1, nx55223z3, nx55223z2, 
      nx55222z1, nx55224z1, image_copy_1_x_1_sva_1_0, nx55223z1, nx44433z2: 
   std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_6: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx44433z1, nx39057z2, nx39057z1, nx39056z2, nx39056z1, nx39055z2, 
      nx39055z1, nx39054z2, nx39054z1, nx39053z2, nx39053z1, nx39052z2, 
      nx39052z1, nx39051z1, nx26275z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_7: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx33885z2, nx26275z1, nx33885z3, nx33884z2, nx33885z1, nx33884z3, 
      nx33883z2, nx33884z1, nx33883z3, nx33882z2, nx33883z1, nx33882z3, 
      nx33881z2, nx33882z1, nx33881z3, nx33880z2, nx33881z1, nx33880z3, 
      nx33879z1, nx33880z1, nx33879z2, nx31447z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_8: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx28713z2, nx31447z1, nx28713z3, nx28712z2, nx28713z1, nx28712z3, 
      nx28711z2, nx28712z1, nx28711z3, nx28710z2, nx28711z1, nx28710z3, 
      nx28709z2, nx28710z1, nx28709z3, nx28708z2, nx28709z1, nx28708z3, 
      nx28707z1, nx28708z1, nx28707z2, nx24129z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_5: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx46783z2, nx24129z1, nx46783z3, nx46784z2, nx46783z1, nx46784z3, 
      nx46785z2, nx46784z1, nx46785z3, nx46786z2, nx46785z1, nx46786z3, 
      nx46787z2, nx46786z1, nx46787z3, nx46788z2, nx46787z1, nx46788z3, 
      nx46789z1, nx46788z1, nx46789z2, nx2319z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_3: std_logic_vector
    (8 DOWNTO 1) ;
   
   signal nx22388z4, nx33786z1, nx3057z3, nx22389z4, nx39162z1, nx3058z3, 
      nx22390z4, nx39163z1, nx3059z3, nx22391z4, nx39164z1, nx3060z3, 
      nx22392z4, nx39165z1, nx3061z3, nx22393z4, nx39166z1, nx3062z3, 
      nx37767z2, nx39167z1, nx3063z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm: 
   std_logic_vector (9 DOWNTO 1) ;
   
   signal passe_y_1_acc_7_itm_7n1s2_14, nx57032z1, 
      passe_y_1_acc_7_itm_7n1s2_13, nx41956z1, passe_y_1_acc_7_itm_7n1s2_12, 
      nx41957z1, passe_y_1_acc_7_itm_7n1s2_11, nx41958z1, 
      passe_y_1_acc_7_itm_7n1s2_10, nx41959z1, passe_y_1_acc_7_itm_7n1s2_9, 
      nx32701z1, passe_y_1_acc_7_itm_7n1s2_8, nx32700z1, 
      passe_y_1_acc_7_itm_7n1s2_7, nx32699z1, nx32698z2, 
      passe_y_1_acc_7_itm_7n1s2_6, nx32697z2, nx39517z2, nx32698z1, 
      nx32696z2, nx56440z3, nx32697z1, nx32695z2, nx56439z3, nx32696z1, 
      nx32694z2, nx56438z3, nx32695z1, nx32693z2, nx56437z3, nx32694z1, 
      nx32692z1, nx56436z2, nx32693z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_2: std_logic_vector
    (8 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2: 
   std_logic_vector (16 DOWNTO 0) ;
   
   signal nx8788z1, nx23864z1, nx23863z1, nx23862z1, nx23861z1, nx23860z1, 
      nx23859z1, nx24881z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0: 
   std_logic_vector (1 DOWNTO 0) ;
   
   signal nx24882z1, nx24883z2, nx24883z1, nx24884z2, nx56441z3, nx24884z1, 
      nx24885z2, nx56440z4, nx24885z1, nx24886z2, nx56439z4, nx24886z1, 
      nx24887z2, nx56438z4, nx24887z1, nx24888z2, nx56437z4, nx24888z1, 
      nx24889z2, nx56436z3, nx24889z1, nx24890z1: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_15: std_logic_vector
    (7 DOWNTO 0) ;
   
   signal Main_Trans_Ond_Opt_core_inst_z_out_1: std_logic_vector
    (15 DOWNTO 0) ;
   
   signal nx22777z1, nx37853z1, nx37852z1, nx37851z1, nx37850z1, nx37849z1, 
      nx56445z1, nx56443z2, nx56444z1, nx56443z3, nx56442z2, nx56443z1, 
      nx56442z3, nx56441z2, nx56442z1, nx56441z4, nx56440z2, nx56441z1, 
      nx56440z5, nx56439z2, nx56440z1, nx56439z5, nx56438z2, nx56439z1, 
      nx56438z5, nx56437z2, nx56438z1, nx56437z5, nx56436z1, nx56437z1, 
      nx56436z4, nx12188z2: std_logic ;
   
   signal Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1: std_logic_vector
    (7 DOWNTO 0) ;
   
   signal nx19032z1, nx12188z62, nx27121z2, nx41128z1, nx41127z2, nx27122z2, 
      nx41127z1, nx41126z2, nx27123z2, nx41126z1, nx41125z2, nx27124z2, 
      nx41125z1, nx41124z2, nx27125z2, nx41124z1, nx41123z2, nx27125z1, 
      nx41123z1, nx41122z1, nx16349z1, nx64, nx66, nx68, nx70, nx72, nx74, 
      nx76, nx78, nx80: std_logic ;

begin
   p_nbus_Vga_rsc_singleport_data_in(7) <= 
   p_nbus_Dst_rsc_singleport_data_out(7) ;
   p_nbus_Vga_rsc_singleport_data_in(6) <= 
   p_nbus_Dst_rsc_singleport_data_out(6) ;
   p_nbus_Vga_rsc_singleport_data_in(5) <= 
   p_nbus_Dst_rsc_singleport_data_out(5) ;
   p_nbus_Vga_rsc_singleport_data_in(4) <= 
   p_nbus_Dst_rsc_singleport_data_out(4) ;
   p_nbus_Vga_rsc_singleport_data_in(3) <= 
   p_nbus_Dst_rsc_singleport_data_out(3) ;
   p_nbus_Vga_rsc_singleport_data_in(2) <= 
   p_nbus_Dst_rsc_singleport_data_out(2) ;
   p_nbus_Vga_rsc_singleport_data_in(1) <= 
   p_nbus_Dst_rsc_singleport_data_out(1) ;
   p_nbus_Vga_rsc_singleport_data_in(0) <= 
   p_nbus_Dst_rsc_singleport_data_out(0) ;
   p_nbus_Vga_rsc_singleport_addr(16) <= Vga_rsc_singleport_addr(8) ;
   p_nbus_Vga_rsc_singleport_addr(15) <= Vga_rsc_singleport_addr(9) ;
   p_nbus_Vga_rsc_singleport_addr(14) <= Vga_rsc_singleport_addr(10) ;
   p_nbus_Vga_rsc_singleport_addr(13) <= Vga_rsc_singleport_addr(11) ;
   p_nbus_Vga_rsc_singleport_addr(12) <= Vga_rsc_singleport_addr(12) ;
   p_nbus_Vga_rsc_singleport_addr(11) <= Vga_rsc_singleport_addr(13) ;
   p_nbus_Vga_rsc_singleport_addr(10) <= Vga_rsc_singleport_addr(14) ;
   p_nbus_Vga_rsc_singleport_addr(9) <= Vga_rsc_singleport_addr(15) ;
   p_nbus_Vga_rsc_singleport_addr(8) <= Vga_rsc_singleport_addr(16) ;
   p_nbus_Vga_rsc_singleport_addr(7) <= Vga_rsc_singleport_addr(0) ;
   p_nbus_Vga_rsc_singleport_addr(6) <= Vga_rsc_singleport_addr(1) ;
   p_nbus_Vga_rsc_singleport_addr(5) <= Vga_rsc_singleport_addr(2) ;
   p_nbus_Vga_rsc_singleport_addr(4) <= Vga_rsc_singleport_addr(3) ;
   p_nbus_Vga_rsc_singleport_addr(3) <= Vga_rsc_singleport_addr(4) ;
   p_nbus_Vga_rsc_singleport_addr(2) <= Vga_rsc_singleport_addr(5) ;
   p_nbus_Vga_rsc_singleport_addr(1) <= Vga_rsc_singleport_addr(6) ;
   p_nbus_Vga_rsc_singleport_addr(0) <= Vga_rsc_singleport_addr(7) ;
   copy_y_1_acc_psp_1_add8_0_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(0), CI=>px1028, LI=>
      nx41122z1);
   copy_y_1_acc_psp_1_add8_0_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(1), CI=>nx41123z1, LI
      =>nx41123z2);
   copy_y_1_acc_psp_1_add8_0_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(2), CI=>nx41124z1, LI
      =>nx41124z2);
   copy_y_1_acc_psp_1_add8_0_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(3), CI=>nx41125z1, LI
      =>nx41125z2);
   copy_y_1_acc_psp_1_add8_0_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(4), CI=>nx41126z1, LI
      =>nx41126z2);
   copy_y_1_acc_psp_1_add8_0_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(5), CI=>nx41127z1, LI
      =>nx41127z2);
   copy_y_1_acc_psp_1_add8_0_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(6), CI=>nx41128z1, LI
      =>nx12188z62);
   copy_y_1_acc_psp_1_add8_0_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(7), CI=>nx19032z1, LI
      =>nx12188z2);
   z_out_1_add16_1_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(0), CI=>px1028, LI=>nx56436z4);
   z_out_1_add16_1_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(1), CI=>nx56437z1, LI=>nx56437z5
   );
   z_out_1_add16_1_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(2), CI=>nx56438z1, LI=>nx56438z5
   );
   z_out_1_add16_1_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(3), CI=>nx56439z1, LI=>nx56439z5
   );
   z_out_1_add16_1_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(4), CI=>nx56440z1, LI=>nx56440z5
   );
   z_out_1_add16_1_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(5), CI=>nx56441z1, LI=>nx56441z4
   );
   z_out_1_add16_1_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(6), CI=>nx56442z1, LI=>nx56442z3
   );
   z_out_1_add16_1_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(7), CI=>nx56443z1, LI=>nx56443z3
   );
   z_out_1_add16_1_xorcy_8 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(8), CI=>nx56444z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(0));
   z_out_1_add16_1_xorcy_9 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(9), CI=>nx56445z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(1));
   z_out_1_add16_1_xorcy_10 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(10), CI=>nx37849z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(2));
   z_out_1_add16_1_xorcy_11 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(11), CI=>nx37850z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(3));
   z_out_1_add16_1_xorcy_12 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(12), CI=>nx37851z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(4));
   z_out_1_add16_1_xorcy_13 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(13), CI=>nx37852z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(5));
   z_out_1_add16_1_xorcy_14 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(14), CI=>nx37853z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(6));
   z_out_1_add16_1_xorcy_15 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_1(15), CI=>nx22777z1, LI=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(7));
   passe_y_acc_13_itm_add17_7i1_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(0), CI=>px1028, 
      LI=>nx24890z1);
   passe_y_acc_13_itm_add17_7i1_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(1), CI=>
      nx24889z1, LI=>nx24889z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(2), CI=>
      nx24888z1, LI=>nx24888z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(3), CI=>
      nx24887z1, LI=>nx24887z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(4), CI=>
      nx24886z1, LI=>nx24886z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(5), CI=>
      nx24885z1, LI=>nx24885z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(6), CI=>
      nx24884z1, LI=>nx24884z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(7), CI=>
      nx24883z1, LI=>nx24883z2);
   passe_y_acc_13_itm_add17_7i1_xorcy_8 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(8), CI=>
      nx24882z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(0));
   passe_y_acc_13_itm_add17_7i1_xorcy_9 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(9), CI=>
      nx24881z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(1));
   passe_y_acc_13_itm_add17_7i1_xorcy_10 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(10), CI=>
      nx23859z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(2));
   passe_y_acc_13_itm_add17_7i1_xorcy_11 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(11), CI=>
      nx23860z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(3));
   passe_y_acc_13_itm_add17_7i1_xorcy_12 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(12), CI=>
      nx23861z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(4));
   passe_y_acc_13_itm_add17_7i1_xorcy_13 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(13), CI=>
      nx23862z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(5));
   passe_y_acc_13_itm_add17_7i1_xorcy_14 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(14), CI=>
      nx23863z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(6));
   passe_y_acc_13_itm_add17_7i1_xorcy_15 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(15), CI=>
      nx23864z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(7));
   passe_y_acc_13_itm_add17_7i1_xorcy_16 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(16), CI=>
      nx8788z1, LI=>Main_Trans_Ond_Opt_core_inst_z_out_2(8));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_6 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_6, CI=>nx32698z1, LI=>nx32698z2);
   passe_y_1_acc_7_itm_add15_7i2_xorcy_7 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_7, CI=>nx32699z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_8 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_8, CI=>nx32700z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_9 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_9, CI=>nx32701z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_10 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_10, CI=>nx41959z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_11 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_11, CI=>nx41958z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_12 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_12, CI=>nx41957z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_13 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_13, CI=>nx41956z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8));
   passe_y_1_acc_7_itm_add15_7i2_xorcy_14 : XORCY port map ( O=>
      passe_y_1_acc_7_itm_7n1s2_14, CI=>nx57032z1, LI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9));
   z_out_3_add8_2_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), CI=>p_Vga_rsc_singleport_re, 
      LI=>nx80);
   z_out_3_add8_2_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), CI=>nx39167z1, LI=>nx78);
   z_out_3_add8_2_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), CI=>nx39166z1, LI=>nx76);
   z_out_3_add8_2_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), CI=>nx39165z1, LI=>nx74);
   z_out_3_add8_2_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), CI=>nx39164z1, LI=>nx72);
   z_out_3_add8_2_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), CI=>nx39163z1, LI=>nx70);
   z_out_3_add8_2_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), CI=>nx39162z1, LI=>nx68);
   z_out_3_add8_2_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(8), CI=>nx33786z1, LI=>nx2319z2);
   z_out_5_add8_3_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(1), CI=>p_Vga_rsc_singleport_re, 
      LI=>nx46789z2);
   z_out_5_add8_3_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(2), CI=>nx46788z1, LI=>nx46788z3
   );
   z_out_5_add8_3_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(3), CI=>nx46787z1, LI=>nx46787z3
   );
   z_out_5_add8_3_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(4), CI=>nx46786z1, LI=>nx46786z3
   );
   z_out_5_add8_3_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(5), CI=>nx46785z1, LI=>nx46785z3
   );
   z_out_5_add8_3_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(6), CI=>nx46784z1, LI=>nx46784z3
   );
   z_out_5_add8_3_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(7), CI=>nx46783z1, LI=>nx46783z3
   );
   z_out_5_add8_3_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(8), CI=>nx24129z1, LI=>nx24129z2
   );
   z_out_8_add8_4_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(1), CI=>p_Vga_rsc_singleport_re, 
      LI=>nx66);
   z_out_8_add8_4_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(2), CI=>nx28708z1, LI=>nx28708z3
   );
   z_out_8_add8_4_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(3), CI=>nx28709z1, LI=>nx28709z3
   );
   z_out_8_add8_4_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(4), CI=>nx28710z1, LI=>nx28710z3
   );
   z_out_8_add8_4_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(5), CI=>nx28711z1, LI=>nx28711z3
   );
   z_out_8_add8_4_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(6), CI=>nx28712z1, LI=>nx28712z3
   );
   z_out_8_add8_4_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(7), CI=>nx28713z1, LI=>nx28713z3
   );
   z_out_8_add8_4_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(8), CI=>nx31447z1, LI=>nx31447z2
   );
   z_out_7_add8_5_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(1), CI=>p_Vga_rsc_singleport_re, 
      LI=>nx33879z2);
   z_out_7_add8_5_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(2), CI=>nx33880z1, LI=>nx33880z3
   );
   z_out_7_add8_5_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(3), CI=>nx33881z1, LI=>nx33881z3
   );
   z_out_7_add8_5_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(4), CI=>nx33882z1, LI=>nx33882z3
   );
   z_out_7_add8_5_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(5), CI=>nx33883z1, LI=>nx33883z3
   );
   z_out_7_add8_5_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(6), CI=>nx33884z1, LI=>nx33884z3
   );
   z_out_7_add8_5_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(7), CI=>nx33885z1, LI=>nx33885z3
   );
   z_out_7_add8_5_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(8), CI=>nx26275z1, LI=>nx26275z2
   );
   z_out_6_add8_6_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(1), CI=>p_Vga_rsc_singleport_re, 
      LI=>nx39051z1);
   z_out_6_add8_6_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(2), CI=>nx39052z1, LI=>nx39052z2
   );
   z_out_6_add8_6_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(3), CI=>nx39053z1, LI=>nx39053z2
   );
   z_out_6_add8_6_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(4), CI=>nx39054z1, LI=>nx39054z2
   );
   z_out_6_add8_6_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(5), CI=>nx39055z1, LI=>nx39055z2
   );
   z_out_6_add8_6_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(6), CI=>nx39056z1, LI=>nx39056z2
   );
   z_out_6_add8_6_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(7), CI=>nx39057z1, LI=>nx39057z2
   );
   z_out_6_add8_6_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_6(8), CI=>nx44433z1, LI=>nx44433z2
   );
   exit_copy_y_1_sva_sub8_7i16_muxcy_7 : MUXCY port map ( O=>nx9010z3, CI=>
      nx55217z1, DI=>nx55217z2, S=>nx55217z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_7 : MUXCY port map ( O=>nx12188z156, CI
      =>nx16626z1, DI=>nx16626z2, S=>nx16626z3);
   z_out_9_add8_16_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), CI=>nx22393z1, LI=>nx22393z2
   );
   z_out_9_add8_16_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), CI=>nx22392z1, LI=>nx22392z2
   );
   z_out_9_add8_16_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), CI=>nx22391z1, LI=>nx22391z2
   );
   z_out_9_add8_16_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), CI=>nx22390z1, LI=>nx22390z2
   );
   z_out_9_add8_16_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), CI=>nx22389z1, LI=>nx22389z2
   );
   z_out_9_add8_16_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), CI=>nx22388z1, LI=>nx22388z2
   );
   z_out_9_add8_16_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), CI=>nx22387z1, LI=>nx22387z2
   );
   z_out_9_add8_16_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), CI=>nx22387z1, DI=>nx22387z4, 
      S=>nx22387z2);
   z_out_12_add8_17_muxcy_7 : MUXCY port map ( O=>nx18194z2, CI=>nx18381z1, 
      DI=>nx18381z2, S=>nx18381z3);
   z_out_22_add7_18_muxcy_6 : MUXCY port map ( O=>nx51265z1, CI=>nx55083z1, 
      DI=>mux_109_nl, S=>nx55083z2);
   z_out_2_add8_21_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(0), CI=>px1028, LI=>nx15584z2);
   z_out_2_add8_21_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(1), CI=>nx15583z1, LI=>nx15583z3
   );
   z_out_2_add8_21_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(2), CI=>nx15582z1, LI=>nx15582z3
   );
   z_out_2_add8_21_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(3), CI=>nx15581z1, LI=>nx15581z3
   );
   z_out_2_add8_21_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(4), CI=>nx15580z1, LI=>nx15580z3
   );
   z_out_2_add8_21_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(5), CI=>nx15579z1, LI=>nx15579z3
   );
   z_out_2_add8_21_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(6), CI=>nx15578z1, LI=>nx15578z3
   );
   z_out_2_add8_21_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(7), CI=>nx15577z1, LI=>nx15577z2
   );
   z_out_2_add8_21_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(8), CI=>nx15577z1, DI=>nx15577z2, 
      S=>nx15577z2);
   z_out_14_add8_23_xorcy_0 : XORCY port map ( O=>z_out_14_1, CI=>
      p_Vga_rsc_singleport_re, LI=>nx3063z2);
   z_out_14_add8_23_xorcy_1 : XORCY port map ( O=>z_out_14_2, CI=>nx3062z1, 
      LI=>nx3062z3);
   z_out_14_add8_23_xorcy_2 : XORCY port map ( O=>z_out_14_3, CI=>nx3061z1, 
      LI=>nx3061z3);
   z_out_14_add8_23_xorcy_3 : XORCY port map ( O=>z_out_14_4, CI=>nx3060z1, 
      LI=>nx3060z3);
   z_out_14_add8_23_xorcy_4 : XORCY port map ( O=>z_out_14_5, CI=>nx3059z1, 
      LI=>nx3059z3);
   z_out_14_add8_23_xorcy_5 : XORCY port map ( O=>z_out_14_6, CI=>nx3058z1, 
      LI=>nx3058z3);
   z_out_14_add8_23_xorcy_6 : XORCY port map ( O=>z_out_14_7, CI=>nx3057z1, 
      LI=>nx3057z3);
   z_out_14_add8_23_xorcy_7 : XORCY port map ( O=>z_out_14_8, CI=>nx2319z1, 
      LI=>nx2319z2);
   z_out_14_add8_23_muxcy_7 : MUXCY port map ( O=>nx12188z78, CI=>nx2319z1, 
      DI=>nx3056z1, S=>nx2319z2);
   z_out_13_add8_24_muxcy_7 : MUXCY port map ( O=>nx15382z2, CI=>nx10448z1, 
      DI=>nx26275z3, S=>nx64);
   z_out_10_add8_25_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(1), CI=>nx52936z1, LI=>nx52936z3
   );
   z_out_10_add8_25_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(2), CI=>nx52937z1, LI=>nx52937z3
   );
   z_out_10_add8_25_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(3), CI=>nx52938z1, LI=>nx52938z3
   );
   z_out_10_add8_25_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(4), CI=>nx52939z1, LI=>nx52939z3
   );
   z_out_10_add8_25_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(5), CI=>nx52940z1, LI=>nx52940z3
   );
   z_out_10_add8_25_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(6), CI=>nx52941z1, LI=>nx52941z3
   );
   z_out_10_add8_25_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(7), CI=>nx7219z1, LI=>nx7219z2);
   z_out_10_add8_25_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_10(8), CI=>nx7219z1, DI=>nx52942z1, 
      S=>nx7219z2);
   z_out_11_add8_26_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(1), CI=>nx25238z1, LI=>nx25238z3
   );
   z_out_11_add8_26_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(2), CI=>nx25237z1, LI=>nx25237z3
   );
   z_out_11_add8_26_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(3), CI=>nx25236z1, LI=>nx25236z3
   );
   z_out_11_add8_26_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(4), CI=>nx25235z1, LI=>nx25235z3
   );
   z_out_11_add8_26_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(5), CI=>nx25234z1, LI=>nx25234z3
   );
   z_out_11_add8_26_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(6), CI=>nx25233z1, LI=>nx25233z3
   );
   z_out_11_add8_26_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(7), CI=>nx25232z1, LI=>nx25232z3
   );
   z_out_11_add8_26_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(8), CI=>nx25232z1, DI=>nx25232z2, 
      S=>nx25232z3);
   z_out_15_add7_29_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(0), CI=>px1028, LI=>nx28307z2);
   z_out_15_add7_29_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(1), CI=>nx28308z1, LI=>nx28308z3
   );
   z_out_15_add7_29_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(2), CI=>nx28309z1, LI=>nx28309z4
   );
   z_out_15_add7_29_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(3), CI=>nx28310z1, LI=>nx28310z4
   );
   z_out_15_add7_29_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(4), CI=>nx28311z1, LI=>nx28311z4
   );
   z_out_15_add7_29_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(5), CI=>nx28312z1, LI=>nx28312z3
   );
   z_out_15_add7_29_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(6), CI=>nx28313z1, LI=>nx28313z2
   );
   z_out_15_add7_29_muxcy_6 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(7), CI=>nx28313z1, DI=>nx28313z2, 
      S=>nx28313z2);
   z_out_17_add8_32_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(0), CI=>px1028, LI=>nx57168z2);
   z_out_17_add8_32_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(1), CI=>nx57167z1, LI=>nx57167z3
   );
   z_out_17_add8_32_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(2), CI=>nx57166z1, LI=>nx57166z3
   );
   z_out_17_add8_32_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(3), CI=>nx57165z1, LI=>nx57165z3
   );
   z_out_17_add8_32_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(4), CI=>nx57164z1, LI=>nx57164z3
   );
   z_out_17_add8_32_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(5), CI=>nx57163z1, LI=>nx57163z3
   );
   z_out_17_add8_32_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(6), CI=>nx57162z1, LI=>nx57162z2
   );
   z_out_17_add8_32_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(7), CI=>nx57161z1, LI=>nx57161z2
   );
   z_out_17_add8_32_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(8), CI=>nx57161z1, DI=>nx57161z2, 
      S=>nx57161z2);
   ps_gnd : GND port map ( G=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt);
   xorcy_0_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(0), CI=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, LI=>
      nx50045z1);
   xorcy_0_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(1), CI=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, LI=>
      nx39517z3);
   xorcy_0_2 : XORCY port map ( O=>nx12188z147, CI=>nx39518z1, LI=>nx39518z3
   );
   xorcy_0_3 : XORCY port map ( O=>nx12188z148, CI=>nx39519z1, LI=>nx39519z4
   );
   xorcy_0_4 : XORCY port map ( O=>nx12188z149, CI=>nx39520z1, LI=>nx39520z3
   );
   xorcy_0_5 : XORCY port map ( O=>nx12188z28, CI=>nx50040z1, LI=>nx50040z2
   );
   xorcy_0_6 : XORCY port map ( O=>nx12188z29, CI=>nx50039z1, LI=>nx50039z2
   );
   xorcy_0_7 : XORCY port map ( O=>nx12188z30, CI=>nx50038z1, LI=>nx50038z2
   );
   slut_0_8 : LUT4
      generic map (INIT => X"6996") 
       port map ( O=>nx50037z2, I0=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx50039z5, I3=>nx16726z2);
   clut_0_8 : LUT3
      generic map (INIT => X"E8") 
       port map ( O=>nx44612z3, I0=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx50039z5);
   xorcy_0_8 : XORCY port map ( O=>nx12188z31, CI=>nx50037z1, LI=>nx50037z2
   );
   xorcy_0_10 : XORCY port map ( O=>nx15577z3, CI=>nx44612z1, LI=>nx44612z2
   );
   passe_y_1_acc_45_itm_add7_27_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(1), CI=>nx12188z26, 
      LI=>nx57254z1);
   passe_y_1_acc_45_itm_add7_27_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(2), CI=>nx57253z1, 
      LI=>nx57253z3);
   passe_y_1_acc_45_itm_add7_27_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(3), CI=>nx51877z1, 
      LI=>nx51877z2);
   passe_y_1_acc_45_itm_add7_27_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(4), CI=>nx51876z1, 
      LI=>nx51876z2);
   passe_y_1_acc_45_itm_add7_27_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(5), CI=>nx51875z1, 
      LI=>nx51875z2);
   passe_y_1_acc_45_itm_add7_27_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(6), CI=>nx51874z1, 
      LI=>nx51874z2);
   passe_y_1_acc_45_itm_add7_27_muxcy_5 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(7), CI=>nx51874z1, 
      DI=>nx50039z6, S=>nx51874z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1), CI=>nx12188z26, 
      LI=>nx39517z7);
   passe_y_1_acc_43_itm_add9_30_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2), CI=>nx272z1, LI
      =>nx57253z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3), CI=>nx273z1, LI
      =>nx273z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4), CI=>nx274z1, LI
      =>nx274z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5), CI=>nx275z1, LI
      =>nx275z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6), CI=>nx276z1, LI
      =>nx276z2);
   passe_y_1_acc_43_itm_add9_30_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7), CI=>nx277z1, LI
      =>nx50040z6);
   passe_y_1_acc_43_itm_add9_30_xorcy_7 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8), CI=>nx278z1, LI
      =>nx50039z6);
   passe_y_1_acc_43_itm_add9_30_muxcy_7 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9), CI=>nx278z1, DI
      =>nx50039z6, S=>nx50039z6);
   passe_y_acc_49_psp_add8_7i17_xorcy_0 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(1), CI=>
      nx27125z1, LI=>nx27125z3);
   passe_y_acc_49_psp_add8_7i17_xorcy_1 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(2), CI=>
      nx27124z1, LI=>nx27124z3);
   passe_y_acc_49_psp_add8_7i17_xorcy_2 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(3), CI=>
      nx27123z1, LI=>nx27123z4);
   passe_y_acc_49_psp_add8_7i17_xorcy_3 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(4), CI=>
      nx27122z1, LI=>nx27122z4);
   passe_y_acc_49_psp_add8_7i17_xorcy_4 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(5), CI=>
      nx27121z1, LI=>nx27121z3);
   passe_y_acc_49_psp_add8_7i17_xorcy_5 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(6), CI=>
      nx27120z1, LI=>nx27120z3);
   passe_y_acc_49_psp_add8_7i17_xorcy_6 : XORCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(7), CI=>
      nx27119z1, LI=>nx50039z7);
   passe_y_acc_49_psp_add8_7i17_muxcy_6 : MUXCY port map ( O=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(8), CI=>
      nx27119z1, DI=>nx50039z7, S=>nx50039z7);
   reg_reg_passe_y_1_acc_44_sdt_tmp_6_1 : FDRE port map ( Q=>
      reg_passe_y_1_acc_44_sdt_tmp_6_1, C=>p_clk, CE=>nx30894z1, D=>
      nx47320z1, R=>p_rst);
   reg_reg_slc_slc_tmp_5_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(0), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(2), R
      =>p_rst);
   reg_reg_slc_slc_tmp_5_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(1), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(1), R
      =>p_rst);
   reg_reg_passe_y_acc_44_sdt_tmp_7_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(0), C=>p_clk, 
      CE=>nx60014z1, D=>nx30487z1, R=>p_rst);
   reg_reg_passe_y_acc_44_sdt_tmp_7_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(1), C=>p_clk, 
      CE=>nx60014z1, D=>nx31484z1, R=>p_rst);
   reg_reg_passe_y_acc_43_sdt_tmp_6_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0), C=>p_clk, 
      CE=>nx60014z1, D=>nx11735z1, R=>p_rst);
   reg_reg_passe_y_acc_43_sdt_tmp_6_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(1), C=>p_clk, 
      CE=>nx60014z1, D=>nx12188z108, R=>p_rst);
   reg_reg_passe_y_acc_46_sdt_tmp_7_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(0), C=>p_clk, 
      CE=>nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(1), R=>p_rst);
   reg_reg_passe_y_acc_46_sdt_tmp_7_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(1), C=>p_clk, 
      CE=>nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(0), R=>p_rst);
   reg_image_copy_2_x_1_sva_1_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(0), C=>p_clk, CE=>
      nx15240z1, D=>nx15240z2, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(1), C=>p_clk, CE=>
      nx15240z1, D=>nx14243z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(2), C=>p_clk, CE=>
      nx15240z1, D=>nx13246z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(3), C=>p_clk, CE=>
      nx15240z1, D=>nx12249z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(4), C=>p_clk, CE=>
      nx15240z1, D=>nx11252z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(5), C=>p_clk, CE=>
      nx15240z1, D=>nx10255z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(6), C=>p_clk, CE=>
      nx15240z1, D=>nx9258z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(7), C=>p_clk, CE=>
      nx15240z1, D=>nx8261z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_1_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(8), C=>p_clk, CE=>
      nx15240z1, D=>nx7264z1, R=>p_rst);
   reg_passe_y_1_acc_psp_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(0), C=>p_clk, CE=>
      nx30894z1, D=>nx32631z1, R=>p_rst);
   reg_passe_y_1_acc_psp_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(1), C=>p_clk, CE=>
      nx30894z1, D=>nx33628z1, R=>p_rst);
   reg_passe_y_1_acc_psp_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(2), C=>p_clk, CE=>
      nx30894z1, D=>nx34625z1, R=>p_rst);
   reg_passe_y_1_acc_psp_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(3), C=>p_clk, CE=>
      nx30894z1, D=>nx35622z1, R=>p_rst);
   reg_passe_y_1_acc_psp_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(4), C=>p_clk, CE=>
      nx30894z1, D=>nx36619z1, R=>p_rst);
   reg_passe_y_1_acc_psp_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(5), C=>p_clk, CE=>
      nx30894z1, D=>nx37616z1, R=>p_rst);
   reg_passe_y_1_acc_psp_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(6), C=>p_clk, CE=>
      nx30894z1, D=>nx38613z1, R=>p_rst);
   reg_passe_y_1_acc_psp_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(7), C=>p_clk, CE=>
      nx30894z1, D=>nx39610z1, R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(0), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(1), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(2), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(3), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(4), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(5), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(6), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(7), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2), 
      R=>p_rst);
   reg_passe_y_1_acc_1_cse_1_sva_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(8), C=>p_clk, 
      CE=>nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1), 
      R=>p_rst);
   reg_passe_y_1_acc_7_itm_14 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(6), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_14, R=>p_rst);
   reg_passe_y_1_acc_7_itm_13 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(7), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_13, R=>p_rst);
   reg_passe_y_1_acc_7_itm_12 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(8), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_12, R=>p_rst);
   reg_passe_y_1_acc_7_itm_11 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(9), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_11, R=>p_rst);
   reg_passe_y_1_acc_7_itm_10 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(10), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_10, R=>p_rst);
   reg_passe_y_1_acc_7_itm_9 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(11), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_9, R=>p_rst);
   reg_passe_y_1_acc_7_itm_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(12), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_8, R=>p_rst);
   reg_passe_y_1_acc_7_itm_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(13), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_7, R=>p_rst);
   reg_passe_y_1_acc_7_itm_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(14), C=>p_clk, CE=>
      nx30894z1, D=>passe_y_1_acc_7_itm_7n1s2_6, R=>p_rst);
   reg_passe_y_1_acc_49_psp_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(0), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(7), R=>p_rst);
   reg_passe_y_1_acc_49_psp_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(1), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(6), R=>p_rst);
   reg_passe_y_1_acc_49_psp_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(2), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(5), R=>p_rst);
   reg_passe_y_1_acc_49_psp_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(3), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(4), R=>p_rst);
   reg_passe_y_1_acc_49_psp_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(4), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(3), R=>p_rst);
   reg_passe_y_1_acc_49_psp_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(5), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(2), R=>p_rst);
   reg_passe_y_1_acc_49_psp_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(6), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(1), R=>p_rst);
   reg_passe_y_1_acc_49_psp_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(7), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(0), R=>p_rst);
   reg_passe_y_1_acc_13_itm_15 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(0), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(15), R=>p_rst);
   reg_passe_y_1_acc_13_itm_14 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(1), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(14), R=>p_rst);
   reg_passe_y_1_acc_13_itm_13 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(2), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(13), R=>p_rst);
   reg_passe_y_1_acc_13_itm_12 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(3), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(12), R=>p_rst);
   reg_passe_y_1_acc_13_itm_11 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(4), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(11), R=>p_rst);
   reg_passe_y_1_acc_13_itm_10 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(5), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(10), R=>p_rst);
   reg_passe_y_1_acc_13_itm_9 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(6), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(9), R=>p_rst);
   reg_passe_y_1_acc_13_itm_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(7), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(8), R=>p_rst);
   reg_passe_y_1_acc_13_itm_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(8), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(7), R=>p_rst);
   reg_passe_y_1_acc_13_itm_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(9), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(6), R=>p_rst);
   reg_passe_y_1_acc_13_itm_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(10), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(5), R=>p_rst);
   reg_passe_y_1_acc_13_itm_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(11), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(4), R=>p_rst);
   reg_passe_y_1_acc_13_itm_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(12), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(3), R=>p_rst);
   reg_passe_y_1_acc_13_itm_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(13), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(2), R=>p_rst);
   reg_passe_y_1_acc_13_itm_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(14), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(1), R=>p_rst);
   reg_passe_y_1_acc_13_itm_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(15), C=>p_clk, CE=>
      nx30894z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(0), R=>p_rst);
   reg_exit_passe_y_1_sva : FDRE port map ( Q=>exit_passe_y_1_sva, C=>p_clk, 
      CE=>nx30894z1, D=>nx51265z1, R=>p_rst);
   reg_passe_y_acc_49_psp_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(0), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(8), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(1), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(7), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(2), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(6), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(3), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(5), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(4), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(4), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(5), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(3), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(6), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(2), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(7), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2(1), 
      R=>p_rst);
   reg_passe_y_acc_49_psp_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(8), C=>p_clk, CE=>
      nx60014z1, D=>nx2454z1, R=>p_rst);
   reg_passe_y_acc_psp_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(0), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(7), R=>p_rst);
   reg_passe_y_acc_psp_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(1), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(6), R=>p_rst);
   reg_passe_y_acc_psp_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(2), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(5), R=>p_rst);
   reg_passe_y_acc_psp_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(3), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(4), R=>p_rst);
   reg_passe_y_acc_psp_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(4), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(3), R=>p_rst);
   reg_passe_y_acc_psp_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(5), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(2), R=>p_rst);
   reg_passe_y_acc_psp_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(6), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(1), R=>p_rst);
   reg_passe_y_acc_psp_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(7), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_15(0), R=>p_rst);
   reg_passe_y_acc_7_itm_15 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(0), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(15), R=>p_rst);
   reg_passe_y_acc_7_itm_14 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(1), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(14), R=>p_rst);
   reg_passe_y_acc_7_itm_13 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(2), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(13), R=>p_rst);
   reg_passe_y_acc_7_itm_12 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(3), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(12), R=>p_rst);
   reg_passe_y_acc_7_itm_11 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(4), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(11), R=>p_rst);
   reg_passe_y_acc_7_itm_10 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(5), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(10), R=>p_rst);
   reg_passe_y_acc_7_itm_9 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(6), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(9), R=>p_rst);
   reg_passe_y_acc_7_itm_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(7), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(8), R=>p_rst);
   reg_passe_y_acc_7_itm_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(8), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(7), R=>p_rst);
   reg_passe_y_acc_7_itm_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(9), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(6), R=>p_rst);
   reg_passe_y_acc_7_itm_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(10), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(5), R=>p_rst);
   reg_passe_y_acc_7_itm_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(11), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(4), R=>p_rst);
   reg_passe_y_acc_7_itm_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(12), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(3), R=>p_rst);
   reg_passe_y_acc_7_itm_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(13), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(2), R=>p_rst);
   reg_passe_y_acc_7_itm_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(14), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(1), R=>p_rst);
   reg_passe_y_acc_7_itm_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(15), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_1(0), R=>p_rst);
   reg_passe_y_acc_51_psp_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(0), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(8), R=>p_rst);
   reg_passe_y_acc_51_psp_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(1), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(7), R=>p_rst);
   reg_passe_y_acc_51_psp_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(2), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(6), R=>p_rst);
   reg_passe_y_acc_51_psp_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(3), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(5), R=>p_rst);
   reg_passe_y_acc_51_psp_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(4), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(4), R=>p_rst);
   reg_passe_y_acc_51_psp_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(5), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(3), R=>p_rst);
   reg_passe_y_acc_51_psp_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(6), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(2), R=>p_rst);
   reg_passe_y_acc_51_psp_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(7), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(1), R=>p_rst);
   reg_passe_y_acc_51_psp_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(8), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_2(0), R=>p_rst);
   reg_passe_y_acc_13_itm_16 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(0), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(16), R=>p_rst);
   reg_passe_y_acc_13_itm_15 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(1), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(15), R=>p_rst);
   reg_passe_y_acc_13_itm_14 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(2), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(14), R=>p_rst);
   reg_passe_y_acc_13_itm_13 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(3), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(13), R=>p_rst);
   reg_passe_y_acc_13_itm_12 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(4), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(12), R=>p_rst);
   reg_passe_y_acc_13_itm_11 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(5), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(11), R=>p_rst);
   reg_passe_y_acc_13_itm_10 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(6), C=>p_clk, CE=>
      nx60014z1, D=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(10), R=>p_rst);
   reg_passe_y_acc_13_itm_9 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(7), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(9), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(8), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(8), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(9), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(7), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(10), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(6), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(11), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(5), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(12), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(4), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(13), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(3), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(14), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(2), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(15), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(1), 
      R=>p_rst);
   reg_passe_y_acc_13_itm_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(16), C=>p_clk, CE=>
      nx60014z1, D=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2(0), 
      R=>p_rst);
   reg_exit_passe_y_sva : FDRE port map ( Q=>exit_passe_y_sva, C=>p_clk, CE
      =>nx60014z1, D=>nx18194z2, R=>p_rst);
   reg_image_copy_x_1_sva_1_8 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(0), C=>p_clk, CE=>
      nx30297z1, D=>nx15240z2, R=>p_rst);
   reg_image_copy_x_1_sva_1_7 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(1), C=>p_clk, CE=>
      nx30297z1, D=>nx14243z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_6 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(2), C=>p_clk, CE=>
      nx30297z1, D=>nx13246z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_5 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(3), C=>p_clk, CE=>
      nx30297z1, D=>nx12249z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_4 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(4), C=>p_clk, CE=>
      nx30297z1, D=>nx11252z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_3 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(5), C=>p_clk, CE=>
      nx30297z1, D=>nx10255z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_2 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(6), C=>p_clk, CE=>
      nx30297z1, D=>nx9258z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_1 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(7), C=>p_clk, CE=>
      nx30297z1, D=>nx8261z1, R=>p_rst);
   reg_image_copy_x_1_sva_1_0 : FDRE port map ( Q=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(8), C=>p_clk, CE=>
      nx30297z1, D=>nx7264z1, R=>p_rst);
   reg_Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0 : FDSE port map ( 
      Q=>Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0, C=>p_clk, CE=>
      nx15240z1, D=>nx45428z1, S=>p_rst);
   reg_Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0 : FDSE port map ( Q
      =>Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0, C=>p_clk, CE=>
      nx30297z1, D=>nx45428z1, S=>p_rst);
   reg_reg_copy_y_acc_7_psp_6_cse_1 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(7), C=>p_clk, CE=>nx57765z1, D=>nx30487z1, R=>
      p_rst);
   reg_reg_copy_y_acc_7_psp_6_cse_0 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(6), C=>p_clk, CE=>nx57765z1, D=>nx31484z1, R=>
      p_rst);
   reg_copy_y_1_acc_psp_7 : FDRE port map ( Q=>nx12188z125, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(7), R=>
      p_rst);
   reg_copy_y_1_acc_psp_6 : FDRE port map ( Q=>nx12188z126, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(6), R=>
      p_rst);
   reg_copy_y_1_acc_psp_5 : FDRE port map ( Q=>nx12188z127, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(5), R=>
      p_rst);
   reg_copy_y_1_acc_psp_4 : FDRE port map ( Q=>nx12188z128, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(4), R=>
      p_rst);
   reg_copy_y_1_acc_psp_3 : FDRE port map ( Q=>nx12188z129, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(3), R=>
      p_rst);
   reg_copy_y_1_acc_psp_2 : FDRE port map ( Q=>nx12188z130, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(2), R=>
      p_rst);
   reg_copy_y_1_acc_psp_1 : FDRE port map ( Q=>nx12188z131, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(1), R=>
      p_rst);
   reg_copy_y_1_acc_psp_0 : FDRE port map ( Q=>nx12188z132, C=>p_clk, CE=>
      nx57765z1, D=>Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(0), R=>
      p_rst);
   reg_levels_asn_3_itm : FDRE port map ( Q=>nx12188z86, C=>p_clk, CE=>
      nx57765z1, D=>nx50039z5, R=>p_rst);
   reg_levels_asn_4_itm : FDRE port map ( Q=>nx12188z153, C=>p_clk, CE=>
      nx57765z1, D=>nx50040z7, R=>p_rst);
   reg_levels_asn_15_itm : FDRE port map ( Q=>nx12188z85, C=>p_clk, CE=>
      nx57765z1, D=>nx51911z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_7 : FDRE port map ( Q=>nx12188z44, C=>p_clk, 
      CE=>nx39627z1, D=>nx39627z2, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_6 : FDRE port map ( Q=>nx12188z45, C=>p_clk, 
      CE=>nx39627z1, D=>nx38630z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_5 : FDRE port map ( Q=>nx12188z47, C=>p_clk, 
      CE=>nx39627z1, D=>nx37633z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_4 : FDRE port map ( Q=>nx12188z48, C=>p_clk, 
      CE=>nx39627z1, D=>nx36636z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_3 : FDRE port map ( Q=>nx12188z49, C=>p_clk, 
      CE=>nx39627z1, D=>nx35639z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_2 : FDRE port map ( Q=>nx12188z50, C=>p_clk, 
      CE=>nx39627z1, D=>nx34642z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_1 : FDRE port map ( Q=>nx12188z51, C=>p_clk, 
      CE=>nx39627z1, D=>nx33645z1, R=>p_rst);
   reg_image_copy_1_x_1_sva_2_0 : FDRE port map ( Q=>nx12188z52, C=>p_clk, 
      CE=>nx39627z1, D=>nx32648z1, R=>p_rst);
   reg_sub_11_mux_itm_7 : FDRE port map ( Q=>nx12188z93, C=>p_clk, CE=>
      nx57765z1, D=>nx15382z1, R=>p_rst);
   reg_sub_11_mux_itm_6 : FDRE port map ( Q=>nx12188z158, C=>p_clk, CE=>
      nx57765z1, D=>nx14385z1, R=>p_rst);
   reg_sub_11_mux_itm_5 : FDRE port map ( Q=>nx12188z159, C=>p_clk, CE=>
      nx57765z1, D=>nx13388z1, R=>p_rst);
   reg_sub_11_mux_itm_4 : FDRE port map ( Q=>nx12188z160, C=>p_clk, CE=>
      nx57765z1, D=>nx12391z1, R=>p_rst);
   reg_sub_11_mux_itm_3 : FDRE port map ( Q=>nx12188z101, C=>p_clk, CE=>
      nx57765z1, D=>nx11394z1, R=>p_rst);
   reg_sub_11_mux_itm_2 : FDRE port map ( Q=>nx12188z103, C=>p_clk, CE=>
      nx57765z1, D=>nx10397z1, R=>p_rst);
   reg_sub_11_mux_itm_1 : FDRE port map ( Q=>nx12188z163, C=>p_clk, CE=>
      nx57765z1, D=>nx9400z1, R=>p_rst);
   reg_sub_11_mux_itm_0 : FDRE port map ( Q=>nx12188z164, C=>p_clk, CE=>
      nx57765z1, D=>nx8403z1, R=>p_rst);
   reg_sub_6_mux_itm_7 : FDRE port map ( Q=>nx12188z92, C=>p_clk, CE=>
      nx57765z1, D=>nx18194z1, R=>p_rst);
   reg_sub_6_mux_itm_6 : FDRE port map ( Q=>nx12188z95, C=>p_clk, CE=>
      nx57765z1, D=>nx19191z1, R=>p_rst);
   reg_sub_6_mux_itm_5 : FDRE port map ( Q=>nx12188z97, C=>p_clk, CE=>
      nx57765z1, D=>nx20188z1, R=>p_rst);
   reg_sub_6_mux_itm_4 : FDRE port map ( Q=>nx12188z99, C=>p_clk, CE=>
      nx57765z1, D=>nx21185z1, R=>p_rst);
   reg_sub_6_mux_itm_3 : FDRE port map ( Q=>nx12188z100, C=>p_clk, CE=>
      nx57765z1, D=>nx22182z1, R=>p_rst);
   reg_sub_6_mux_itm_2 : FDRE port map ( Q=>nx12188z102, C=>p_clk, CE=>
      nx57765z1, D=>nx23179z1, R=>p_rst);
   reg_sub_6_mux_itm_1 : FDRE port map ( Q=>nx12188z105, C=>p_clk, CE=>
      nx57765z1, D=>nx24176z1, R=>p_rst);
   reg_sub_6_mux_itm_0 : FDRE port map ( Q=>nx12188z107, C=>p_clk, CE=>
      nx57765z1, D=>nx25173z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_7 : FDRE port map ( Q=>nx12188z54, C=>
      p_clk, CE=>nx57765z1, D=>nx56807z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_6 : FDRE port map ( Q=>nx12188z55, C=>
      p_clk, CE=>nx57765z1, D=>nx55810z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_5 : FDRE port map ( Q=>nx12188z56, C=>
      p_clk, CE=>nx57765z1, D=>nx54813z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_4 : FDRE port map ( Q=>nx12188z57, C=>
      p_clk, CE=>nx57765z1, D=>nx53816z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_3 : FDRE port map ( Q=>nx12188z58, C=>
      p_clk, CE=>nx57765z1, D=>nx52819z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_2 : FDRE port map ( Q=>nx12188z59, C=>
      p_clk, CE=>nx57765z1, D=>nx51822z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_1 : FDRE port map ( Q=>nx12188z60, C=>
      p_clk, CE=>nx57765z1, D=>nx50825z1, R=>p_rst);
   reg_sub_sub_return_9_lpi_3_dfm_0 : FDRE port map ( Q=>nx12188z61, C=>
      p_clk, CE=>nx57765z1, D=>nx49828z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_6 : FDRE port map ( Q=>nx12188z26, C=>p_clk, CE=>
      nx8924z1, D=>nx8924z2, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_5 : FDRE port map ( Q=>nx39517z2, C=>p_clk, CE=>
      nx8924z1, D=>nx9921z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_4 : FDRE port map ( Q=>nx56440z3, C=>p_clk, CE=>
      nx8924z1, D=>nx10918z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_3 : FDRE port map ( Q=>nx56439z3, C=>p_clk, CE=>
      nx8924z1, D=>nx11915z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_2 : FDRE port map ( Q=>nx56438z3, C=>p_clk, CE=>
      nx8924z1, D=>nx12912z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_1 : FDRE port map ( Q=>nx56437z3, C=>p_clk, CE=>
      nx8924z1, D=>nx13909z1, R=>p_rst);
   reg_Trans_Ond_1_x_1_sva_0 : FDRE port map ( Q=>nx56436z2, C=>p_clk, CE=>
      nx8924z1, D=>nx14906z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_5 : FDRE port map ( Q=>nx50039z6, C=>p_clk, CE=>
      nx59915z1, D=>nx64900z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_4 : FDRE port map ( Q=>nx50040z6, C=>p_clk, CE=>
      nx59915z1, D=>nx63903z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_3 : FDRE port map ( Q=>nx51876z3, C=>p_clk, CE=>
      nx59915z1, D=>nx62906z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_2 : FDRE port map ( Q=>nx51877z3, C=>p_clk, CE=>
      nx59915z1, D=>nx61909z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_1 : FDRE port map ( Q=>nx57253z2, C=>p_clk, CE=>
      nx59915z1, D=>nx60912z1, R=>p_rst);
   reg_Trans_Ond_1_y_1_sva_0 : FDRE port map ( Q=>nx39517z7, C=>p_clk, CE=>
      nx59915z1, D=>nx59915z2, R=>p_rst);
   reg_image_copy_1_y_1_sva_7 : FDRE port map ( Q=>nx12188z2, C=>p_clk, CE=>
      nx63523z1, D=>nx61529z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_6 : FDRE port map ( Q=>nx12188z62, C=>p_clk, CE
      =>nx63523z1, D=>nx62526z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_5 : FDRE port map ( Q=>nx12188z1, C=>p_clk, CE=>
      nx63523z1, D=>nx63523z2, R=>p_rst);
   reg_image_copy_1_y_1_sva_4 : FDRE port map ( Q=>nx12188z64, C=>p_clk, CE
      =>nx63523z1, D=>nx64520z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_3 : FDRE port map ( Q=>nx12188z65, C=>p_clk, CE
      =>nx63523z1, D=>nx65517z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_2 : FDRE port map ( Q=>nx12188z66, C=>p_clk, CE
      =>nx63523z1, D=>nx978z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_1 : FDRE port map ( Q=>nx12188z67, C=>p_clk, CE
      =>nx63523z1, D=>nx1975z1, R=>p_rst);
   reg_image_copy_1_y_1_sva_0 : FDRE port map ( Q=>nx12188z68, C=>p_clk, CE
      =>nx63523z1, D=>nx2972z1, R=>p_rst);
   reg_sub_5_mux_itm_7 : FDRE port map ( Q=>nx12188z110, C=>p_clk, CE=>
      nx57765z1, D=>nx43121z1, R=>p_rst);
   reg_sub_5_mux_itm_6 : FDRE port map ( Q=>nx12188z112, C=>p_clk, CE=>
      nx57765z1, D=>nx42124z1, R=>p_rst);
   reg_sub_5_mux_itm_5 : FDRE port map ( Q=>nx12188z114, C=>p_clk, CE=>
      nx57765z1, D=>nx41127z3, R=>p_rst);
   reg_sub_5_mux_itm_4 : FDRE port map ( Q=>nx12188z116, C=>p_clk, CE=>
      nx57765z1, D=>nx40130z1, R=>p_rst);
   reg_sub_5_mux_itm_3 : FDRE port map ( Q=>nx12188z118, C=>p_clk, CE=>
      nx57765z1, D=>nx39133z1, R=>p_rst);
   reg_sub_5_mux_itm_2 : FDRE port map ( Q=>nx12188z120, C=>p_clk, CE=>
      nx57765z1, D=>nx38136z1, R=>p_rst);
   reg_sub_5_mux_itm_1 : FDRE port map ( Q=>nx12188z122, C=>p_clk, CE=>
      nx57765z1, D=>nx37139z1, R=>p_rst);
   reg_sub_5_mux_itm_0 : FDRE port map ( Q=>nx12188z124, C=>p_clk, CE=>
      nx57765z1, D=>nx36142z1, R=>p_rst);
   reg_sub_mux_itm_7 : FDRE port map ( Q=>nx12188z171, C=>p_clk, CE=>
      nx57765z1, D=>nx56103z1, R=>p_rst);
   reg_sub_mux_itm_6 : FDRE port map ( Q=>nx12188z172, C=>p_clk, CE=>
      nx57765z1, D=>nx57100z1, R=>p_rst);
   reg_sub_mux_itm_5 : FDRE port map ( Q=>nx12188z173, C=>p_clk, CE=>
      nx57765z1, D=>nx58097z1, R=>p_rst);
   reg_sub_mux_itm_4 : FDRE port map ( Q=>nx12188z174, C=>p_clk, CE=>
      nx57765z1, D=>nx59094z1, R=>p_rst);
   reg_sub_mux_itm_3 : FDRE port map ( Q=>nx12188z175, C=>p_clk, CE=>
      nx57765z1, D=>nx60091z1, R=>p_rst);
   reg_sub_mux_itm_2 : FDRE port map ( Q=>nx12188z176, C=>p_clk, CE=>
      nx57765z1, D=>nx61088z1, R=>p_rst);
   reg_sub_mux_itm_1 : FDRE port map ( Q=>nx12188z177, C=>p_clk, CE=>
      nx57765z1, D=>nx62085z1, R=>p_rst);
   reg_sub_mux_itm_0 : FDRE port map ( Q=>nx12188z178, C=>p_clk, CE=>
      nx57765z1, D=>nx63082z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_7 : FDRE port map ( Q=>nx12188z70, C=>
      p_clk, CE=>nx57765z1, D=>nx2519z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_6 : FDRE port map ( Q=>nx12188z71, C=>
      p_clk, CE=>nx57765z1, D=>nx3516z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_5 : FDRE port map ( Q=>nx12188z72, C=>
      p_clk, CE=>nx57765z1, D=>nx4513z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_4 : FDRE port map ( Q=>nx12188z73, C=>
      p_clk, CE=>nx57765z1, D=>nx5510z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_3 : FDRE port map ( Q=>nx12188z74, C=>
      p_clk, CE=>nx57765z1, D=>nx6507z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_2 : FDRE port map ( Q=>nx12188z75, C=>
      p_clk, CE=>nx57765z1, D=>nx7504z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_1 : FDRE port map ( Q=>nx12188z76, C=>
      p_clk, CE=>nx57765z1, D=>nx8501z1, R=>p_rst);
   reg_sub_sub_return_3_lpi_3_dfm_0 : FDRE port map ( Q=>nx12188z77, C=>
      p_clk, CE=>nx57765z1, D=>nx9498z1, R=>p_rst);
   reg_moy_slc_Src_cse_sva_7 : FDRE port map ( Q=>nx22387z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(0), R=>p_rst);
   reg_moy_slc_Src_cse_sva_6 : FDRE port map ( Q=>nx22388z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(1), R=>p_rst);
   reg_moy_slc_Src_cse_sva_5 : FDRE port map ( Q=>nx22389z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(2), R=>p_rst);
   reg_moy_slc_Src_cse_sva_4 : FDRE port map ( Q=>nx22390z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(3), R=>p_rst);
   reg_moy_slc_Src_cse_sva_3 : FDRE port map ( Q=>nx22391z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(4), R=>p_rst);
   reg_moy_slc_Src_cse_sva_2 : FDRE port map ( Q=>nx22392z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(5), R=>p_rst);
   reg_moy_slc_Src_cse_sva_1 : FDRE port map ( Q=>nx22393z5, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(6), R=>p_rst);
   reg_moy_slc_Src_cse_sva_0 : FDRE port map ( Q=>nx37767z3, C=>p_clk, CE=>
      nx57765z1, D=>p_nbus_Src_rsc_singleport_data_out(7), R=>p_rst);
   reg_Trans_Ond_x_1_sva_7 : FDRE port map ( Q=>nx12188z21, C=>p_clk, CE=>
      nx15824z1, D=>nx14827z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_6 : FDRE port map ( Q=>nx12188z18, C=>p_clk, CE=>
      nx15824z1, D=>nx15824z2, R=>p_rst);
   reg_Trans_Ond_x_1_sva_5 : FDRE port map ( Q=>nx56441z3, C=>p_clk, CE=>
      nx15824z1, D=>nx16821z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_4 : FDRE port map ( Q=>nx56440z4, C=>p_clk, CE=>
      nx15824z1, D=>nx17818z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_3 : FDRE port map ( Q=>nx56439z4, C=>p_clk, CE=>
      nx15824z1, D=>nx18815z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_2 : FDRE port map ( Q=>nx56438z4, C=>p_clk, CE=>
      nx15824z1, D=>nx19812z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_1 : FDRE port map ( Q=>nx56437z4, C=>p_clk, CE=>
      nx15824z1, D=>nx20809z1, R=>p_rst);
   reg_Trans_Ond_x_1_sva_0 : FDRE port map ( Q=>nx56436z3, C=>p_clk, CE=>
      nx15824z1, D=>nx21806z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_6 : FDRE port map ( Q=>nx50039z7, C=>p_clk, CE=>
      nx53015z1, D=>nx58997z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_5 : FDRE port map ( Q=>nx50040z8, C=>p_clk, CE=>
      nx53015z1, D=>nx58000z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_4 : FDRE port map ( Q=>nx39520z6, C=>p_clk, CE=>
      nx53015z1, D=>nx57003z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_3 : FDRE port map ( Q=>nx39519z8, C=>p_clk, CE=>
      nx53015z1, D=>nx56006z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_2 : FDRE port map ( Q=>nx39518z5, C=>p_clk, CE=>
      nx53015z1, D=>nx55009z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_1 : FDRE port map ( Q=>nx39517z10, C=>p_clk, CE=>
      nx53015z1, D=>nx54012z1, R=>p_rst);
   reg_Trans_Ond_y_1_sva_0 : FDRE port map ( Q=>nx12188z27, C=>p_clk, CE=>
      nx53015z1, D=>nx53015z2, R=>p_rst);
   reg_image_copy_2_x_1_sva_8 : FDRE port map ( Q=>nx12188z42, C=>p_clk, CE
      =>nx1057z1, D=>nx60z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_7 : FDRE port map ( Q=>nx12188z37, C=>p_clk, CE
      =>nx1057z1, D=>nx1057z2, R=>p_rst);
   reg_image_copy_2_x_1_sva_6 : FDRE port map ( Q=>nx12188z39, C=>p_clk, CE
      =>nx1057z1, D=>nx2054z1, R=>p_rst);
   reg_image_copy_2_x_1_sva_5 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(5), C=>p_clk, CE=>nx1057z1, D=>nx3051z1, R=>
      p_rst);
   reg_image_copy_2_x_1_sva_4 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(4), C=>p_clk, CE=>nx1057z1, D=>nx4048z1, R=>
      p_rst);
   reg_image_copy_2_x_1_sva_3 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(3), C=>p_clk, CE=>nx1057z1, D=>nx5045z1, R=>
      p_rst);
   reg_image_copy_2_x_1_sva_2 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(2), C=>p_clk, CE=>nx1057z1, D=>nx6042z1, R=>
      p_rst);
   reg_image_copy_2_x_1_sva_1 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(1), C=>p_clk, CE=>nx1057z1, D=>nx7039z1, R=>
      p_rst);
   reg_image_copy_2_x_1_sva_0 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(0), C=>p_clk, CE=>nx1057z1, D=>nx8036z1, R=>
      p_rst);
   reg_image_copy_2_y_1_sva_7 : FDRE port map ( Q=>nx12188z23, C=>p_clk, CE
      =>nx2246z1, D=>nx8228z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_6 : FDRE port map ( Q=>nx12188z20, C=>p_clk, CE
      =>nx2246z1, D=>nx7231z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_5 : FDRE port map ( Q=>nx12188z17, C=>p_clk, CE
      =>nx2246z1, D=>nx6234z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_4 : FDRE port map ( Q=>nx12188z34, C=>p_clk, CE
      =>nx2246z1, D=>nx5237z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_3 : FDRE port map ( Q=>nx12188z11, C=>p_clk, CE
      =>nx2246z1, D=>nx4240z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_2 : FDRE port map ( Q=>nx12188z8, C=>p_clk, CE=>
      nx2246z1, D=>nx3243z1, R=>p_rst);
   reg_image_copy_2_y_1_sva_1 : FDRE port map ( Q=>nx12188z6, C=>p_clk, CE=>
      nx2246z1, D=>nx2246z2, R=>p_rst);
   reg_image_copy_2_y_1_sva_0 : FDRE port map ( Q=>nx12188z79, C=>p_clk, CE
      =>nx2246z1, D=>nx1249z1, R=>p_rst);
   reg_i_1_sg1_sva_2_1 : FDRE port map ( Q=>nx12188z91, C=>p_clk, CE=>
      nx57765z1, D=>nx41828z1, R=>p_rst);
   reg_i_1_sg1_sva_2_0 : FDRE port map ( Q=>nx12188z90, C=>p_clk, CE=>
      nx57765z1, D=>nx40831z1, R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_8 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(16), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(8), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_7 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(15), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(7), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_6 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(14), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(6), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_5 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(13), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(5), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_4 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(12), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(4), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_3 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(11), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(3), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_2 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(10), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(2), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_1 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(9), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(1), R=>p_rst);
   reg_reg_copy_y_acc_8_psp_cse_0 : FDRE port map ( Q=>
      Vga_rsc_singleport_addr(8), C=>p_clk, CE=>nx57765z1, D=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(0), R=>p_rst);
   reg_image_copy_x_1_sva_8 : FDRE port map ( Q=>nx12188z41, C=>p_clk, CE=>
      nx61846z1, D=>nx62843z1, R=>p_rst);
   reg_image_copy_x_1_sva_7 : FDRE port map ( Q=>nx12188z36, C=>p_clk, CE=>
      nx61846z1, D=>nx61846z2, R=>p_rst);
   reg_image_copy_x_1_sva_6 : FDRE port map ( Q=>nx12188z40, C=>p_clk, CE=>
      nx61846z1, D=>nx60849z1, R=>p_rst);
   reg_image_copy_x_1_sva_5 : FDRE port map ( Q=>nx12188z134, C=>p_clk, CE=>
      nx61846z1, D=>nx59852z1, R=>p_rst);
   reg_image_copy_x_1_sva_4 : FDRE port map ( Q=>nx12188z137, C=>p_clk, CE=>
      nx61846z1, D=>nx58855z1, R=>p_rst);
   reg_image_copy_x_1_sva_3 : FDRE port map ( Q=>nx12188z139, C=>p_clk, CE=>
      nx61846z1, D=>nx57858z1, R=>p_rst);
   reg_image_copy_x_1_sva_2 : FDRE port map ( Q=>nx12188z141, C=>p_clk, CE=>
      nx61846z1, D=>nx56861z1, R=>p_rst);
   reg_image_copy_x_1_sva_1 : FDRE port map ( Q=>nx12188z143, C=>p_clk, CE=>
      nx61846z1, D=>nx55864z1, R=>p_rst);
   reg_image_copy_x_1_sva_0 : FDRE port map ( Q=>nx12188z146, C=>p_clk, CE=>
      nx61846z1, D=>nx54867z1, R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_7 : FDRE port map ( Q=>
      nx22387z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(0), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_6 : FDRE port map ( Q=>
      nx22388z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(1), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_5 : FDRE port map ( Q=>
      nx22389z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(2), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_4 : FDRE port map ( Q=>
      nx22390z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(3), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_3 : FDRE port map ( Q=>
      nx22391z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(4), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_2 : FDRE port map ( Q=>
      nx22392z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(5), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_1 : FDRE port map ( Q=>
      nx22393z6, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(6), R=>p_rst);
   reg_reg_Vga_rsc_singleport_data_in_core_cse_0 : FDRE port map ( Q=>
      nx37767z4, C=>p_clk, CE=>nx57765z1, D=>
      p_nbus_Dst_rsc_singleport_data_out(7), R=>p_rst);
   reg_reg_Src_rsc_singleport_iswt0_cse : FDRE port map ( Q=>
      Src_rsc_singleport_oswt, C=>p_clk, CE=>nx57765z1, D=>nx34441z1, R=>
      p_rst);
   reg_reg_Dst_rsc_singleport_iswt0_cse : FDRE port map ( Q=>
      Dst_rsc_singleport_oswt, C=>p_clk, CE=>nx57765z1, D=>nx41294z1, R=>
      p_rst);
   reg_reg_start_sync_mgc_bsync_vld_iswt0_cse : FDRE port map ( Q=>
      mgc_start_sync_mgc_bsync_vld_oswt, C=>p_clk, CE=>nx57765z1, D=>
      nx57765z2, R=>p_rst);
   reg_image_copy_y_1_sva_7 : FDRE port map ( Q=>nx12188z22, C=>p_clk, CE=>
      nx387z1, D=>nx59941z1, R=>p_rst);
   reg_image_copy_y_1_sva_6 : FDRE port map ( Q=>nx12188z19, C=>p_clk, CE=>
      nx387z1, D=>nx60938z1, R=>p_rst);
   reg_image_copy_y_1_sva_5 : FDRE port map ( Q=>nx12188z16, C=>p_clk, CE=>
      nx387z1, D=>nx61935z1, R=>p_rst);
   reg_image_copy_y_1_sva_4 : FDRE port map ( Q=>nx12188z33, C=>p_clk, CE=>
      nx387z1, D=>nx62932z1, R=>p_rst);
   reg_image_copy_y_1_sva_3 : FDRE port map ( Q=>nx12188z10, C=>p_clk, CE=>
      nx387z1, D=>nx63929z1, R=>p_rst);
   reg_image_copy_y_1_sva_2 : FDRE port map ( Q=>nx12188z7, C=>p_clk, CE=>
      nx387z1, D=>nx64926z1, R=>p_rst);
   reg_image_copy_y_1_sva_1 : FDRE port map ( Q=>nx12188z5, C=>p_clk, CE=>
      nx387z1, D=>nx387z2, R=>p_rst);
   reg_image_copy_y_1_sva_0 : FDRE port map ( Q=>nx12188z32, C=>p_clk, CE=>
      nx387z1, D=>nx1384z1, R=>p_rst);
   reg_wi_7_sg1_sva : FDRE port map ( Q=>nx12188z43, C=>p_clk, CE=>nx4243z1, 
      D=>nx2022z1, R=>p_rst);
   reg_wi_7_sg2_sva : FDRE port map ( Q=>nx12188z80, C=>p_clk, CE=>nx4243z1, 
      D=>nx62423z1, R=>p_rst);
   reg_wi_7_sg3_sva : FDRE port map ( Q=>nx12188z81, C=>p_clk, CE=>nx4243z1, 
      D=>nx57288z1, R=>p_rst);
   reg_wi_7_sg4_sva : FDRE port map ( Q=>nx12188z82, C=>p_clk, CE=>nx4243z1, 
      D=>nx52153z1, R=>p_rst);
   reg_wi_7_sg5_sva : FDRE port map ( Q=>nx12188z83, C=>p_clk, CE=>nx4243z1, 
      D=>nx47018z1, R=>p_rst);
   reg_wi_7_sg6_sva : FDRE port map ( Q=>nx12188z84, C=>p_clk, CE=>nx57765z1, 
      D=>nx23653z1, R=>p_rst);
   reg_wi_7_sg7_sva : FDRE port map ( Q=>nx51911z1, C=>p_clk, CE=>nx57765z1, 
      D=>nx28788z1, R=>p_rst);
   reg_wi_7_sg8_sva : FDRE port map ( Q=>nx50039z5, C=>p_clk, CE=>nx57765z1, 
      D=>nx33923z1, R=>p_rst);
   reg_hi_7_sg1_sva : FDRE port map ( Q=>nx12188z25, C=>p_clk, CE=>nx4243z1, 
      D=>nx4243z2, R=>p_rst);
   reg_hi_7_sg2_sva : FDRE port map ( Q=>nx39517z8, C=>p_clk, CE=>nx4243z1, 
      D=>nx64644z1, R=>p_rst);
   reg_hi_7_sg3_sva : FDRE port map ( Q=>nx39520z7, C=>p_clk, CE=>nx4243z1, 
      D=>nx59509z1, R=>p_rst);
   reg_hi_7_sg4_sva : FDRE port map ( Q=>nx50040z9, C=>p_clk, CE=>nx57765z1, 
      D=>nx11162z1, R=>p_rst);
   reg_hi_7_sg5_sva : FDRE port map ( Q=>nx50039z8, C=>p_clk, CE=>nx57765z1, 
      D=>nx16297z1, R=>p_rst);
   reg_hi_7_sg6_sva : FDRE port map ( Q=>nx50040z7, C=>p_clk, CE=>nx57765z1, 
      D=>nx21432z1, R=>p_rst);
   reg_reg_passe_y_1_acc_44_sdt_tmp_6_0 : FDRE port map ( Q=>nx12188z133, C
      =>p_clk, CE=>nx30894z1, D=>nx48317z1, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_5 : FDRE port map ( Q=>
      nx12188z136, C=>p_clk, CE=>nx50304z1, D=>nx50304z2, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_4 : FDRE port map ( Q=>
      nx12188z138, C=>p_clk, CE=>nx50304z1, D=>nx49307z1, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_3 : FDRE port map ( Q=>
      nx12188z140, C=>p_clk, CE=>nx50304z1, D=>nx48310z1, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_2 : FDRE port map ( Q=>
      nx12188z142, C=>p_clk, CE=>nx50304z1, D=>nx47313z1, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_1 : FDRE port map ( Q=>
      nx12188z144, C=>p_clk, CE=>nx50304z1, D=>nx46316z1, R=>p_rst);
   reg_image_copy_1_x_slc_image_copy_1_x_1_itm_0 : FDRE port map ( Q=>
      nx12188z145, C=>p_clk, CE=>nx50304z1, D=>nx45319z1, R=>p_rst);
   reg_moy_11_slc_itm_7 : FDRE port map ( Q=>nx12188z157, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(8), R=>p_rst);
   reg_moy_11_slc_itm_6 : FDRE port map ( Q=>nx12188z94, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(7), R=>p_rst);
   reg_moy_11_slc_itm_5 : FDRE port map ( Q=>nx12188z96, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(6), R=>p_rst);
   reg_moy_11_slc_itm_4 : FDRE port map ( Q=>nx12188z98, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(5), R=>p_rst);
   reg_moy_11_slc_itm_3 : FDRE port map ( Q=>nx12188z161, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(4), R=>p_rst);
   reg_moy_11_slc_itm_2 : FDRE port map ( Q=>nx12188z162, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(3), R=>p_rst);
   reg_moy_11_slc_itm_1 : FDRE port map ( Q=>nx12188z104, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(2), R=>p_rst);
   reg_moy_11_slc_itm_0 : FDRE port map ( Q=>nx12188z106, C=>p_clk, CE=>
      nx2736z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(1), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_7 : FDRE port map ( Q=>nx44433z3, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(8), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_6 : FDRE port map ( Q=>nx39057z3, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(7), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_5 : FDRE port map ( Q=>nx39056z3, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(6), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_4 : FDRE port map ( Q=>nx12188z15, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(5), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_3 : FDRE port map ( Q=>nx12188z13, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(4), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_2 : FDRE port map ( Q=>nx39053z3, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(3), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_1 : FDRE port map ( Q=>nx39052z3, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(2), R=>p_rst);
   reg_moy_6_acc_cse_sg1_sva_0 : FDRE port map ( Q=>nx12188z4, C=>p_clk, CE
      =>nx23913z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(1), R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_5 : FDRE port map ( Q=>
      nx12188z189, C=>p_clk, CE=>nx57354z1, D=>nx57354z2, R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_4 : FDRE port map ( Q=>
      nx12188z190, C=>p_clk, CE=>nx57354z1, D=>nx58351z1, R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_3 : FDRE port map ( Q=>
      nx12188z191, C=>p_clk, CE=>nx57354z1, D=>nx59348z1, R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_2 : FDRE port map ( Q=>
      nx12188z192, C=>p_clk, CE=>nx57354z1, D=>nx60345z1, R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_1 : FDRE port map ( Q=>
      nx12188z193, C=>p_clk, CE=>nx57354z1, D=>nx61342z1, R=>p_rst);
   reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm_0 : FDRE port map ( Q=>
      nx12188z194, C=>p_clk, CE=>nx57354z1, D=>nx62339z1, R=>p_rst);
   reg_moy_5_slc_itm_7 : FDRE port map ( Q=>nx12188z109, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(8), R=>p_rst);
   reg_moy_5_slc_itm_6 : FDRE port map ( Q=>nx12188z111, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(7), R=>p_rst);
   reg_moy_5_slc_itm_5 : FDRE port map ( Q=>nx12188z113, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(6), R=>p_rst);
   reg_moy_5_slc_itm_4 : FDRE port map ( Q=>nx12188z115, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(5), R=>p_rst);
   reg_moy_5_slc_itm_3 : FDRE port map ( Q=>nx12188z117, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(4), R=>p_rst);
   reg_moy_5_slc_itm_2 : FDRE port map ( Q=>nx12188z119, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(3), R=>p_rst);
   reg_moy_5_slc_itm_1 : FDRE port map ( Q=>nx12188z121, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(2), R=>p_rst);
   reg_moy_5_slc_itm_0 : FDRE port map ( Q=>nx12188z123, C=>p_clk, CE=>
      nx33068z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_10(1), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_7 : FDRE port map ( Q=>nx12188z24, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(8), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_6 : FDRE port map ( Q=>nx39057z4, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(7), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_5 : FDRE port map ( Q=>nx39056z4, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(6), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_4 : FDRE port map ( Q=>nx12188z14, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(5), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_3 : FDRE port map ( Q=>nx12188z12, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(4), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_2 : FDRE port map ( Q=>nx12188z9, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(3), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_1 : FDRE port map ( Q=>nx39052z4, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(2), R=>p_rst);
   reg_moy_acc_cse_sg1_sva_0 : FDRE port map ( Q=>nx12188z3, C=>p_clk, CE=>
      nx5050z1, D=>Main_Trans_Ond_Opt_core_inst_z_out_9(1), R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_1_itm_4 : FDRE port map ( Q=>nx12188z166, C
      =>p_clk, CE=>nx42765z1, D=>nx5238z1, R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_1_itm_3 : FDRE port map ( Q=>nx12188z167, C
      =>p_clk, CE=>nx42765z1, D=>nx6235z1, R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_1_itm_2 : FDRE port map ( Q=>nx12188z168, C
      =>p_clk, CE=>nx42765z1, D=>nx7232z1, R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_1_itm_1 : FDRE port map ( Q=>nx12188z169, C
      =>p_clk, CE=>nx42765z1, D=>nx8229z1, R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_1_itm_0 : FDRE port map ( Q=>nx12188z170, C
      =>p_clk, CE=>nx42765z1, D=>nx9226z1, R=>p_rst);
   reg_passe_y_slc_Trans_Ond_x_1_itm_5 : FDRE port map ( Q=>nx12188z135, C=>
      p_clk, CE=>nx42765z1, D=>nx42765z2, R=>p_rst);
   reg_nbLevels_1_sva_2 : FDRE port map ( Q=>nx12188z89, C=>p_clk, CE=>
      nx59090z1, D=>p_nbus_nbLevels_rsc_z(0), R=>p_rst);
   reg_nbLevels_1_sva_1 : FDRE port map ( Q=>nx12188z88, C=>p_clk, CE=>
      nx59090z1, D=>p_nbus_nbLevels_rsc_z(1), R=>p_rst);
   reg_nbLevels_1_sva_0 : FDRE port map ( Q=>nx12188z87, C=>p_clk, CE=>
      nx59090z1, D=>p_nbus_nbLevels_rsc_z(2), R=>p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_7 : FDRE port map ( Q=>nx22387z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(0), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_6 : FDRE port map ( Q=>nx22388z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(1), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_5 : FDRE port map ( Q=>nx22389z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(2), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_4 : FDRE port map ( Q=>nx22390z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(3), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_3 : FDRE port map ( Q=>nx22391z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(4), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_2 : FDRE port map ( Q=>nx22392z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(5), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_1 : FDRE port map ( Q=>nx22393z3, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(6), R=>
      p_rst);
   reg_Src_rsc_singleport_data_out_bfwt_0 : FDRE port map ( Q=>nx37767z6, C
      =>p_clk, CE=>nx16349z1, D=>p_nbus_Src_rsc_singleport_data_out(7), R=>
      p_rst);
   ix16619z1315 : INV port map ( O=>image_copy_1_y_1_sva_1_0, I=>nx12188z68
   );
   ix55224z1315 : INV port map ( O=>image_copy_1_x_1_sva_1_0, I=>nx12188z52
   );
   mux_109_nl_EXMPLR14 : INV port map ( O=>mux_109_nl, I=>nx50039z5);
   ix48317z1315 : INV port map ( O=>nx48317z1, I=>nx39517z2);
   ix63082z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx63082z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(1), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(1), I2=>nx18194z2);
   ix62085z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx62085z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(2), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(2), I2=>nx18194z2);
   ix61088z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx61088z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(3), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(3), I2=>nx18194z2);
   ix60091z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx60091z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(4), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(4), I2=>nx18194z2);
   ix59094z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx59094z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(5), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(5), I2=>nx18194z2);
   ix58097z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx58097z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(6), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(6), I2=>nx18194z2);
   ix57100z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx57100z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(7), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(7), I2=>nx18194z2);
   ix56103z1516 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx56103z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_5(8), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_6(8), I2=>nx18194z2);
   ix25173z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx25173z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(1), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(1), I2=>nx18194z2);
   ix24176z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx24176z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(2), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(2), I2=>nx18194z2);
   ix23179z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx23179z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(3), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(3), I2=>nx18194z2);
   ix22182z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx22182z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(4), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(4), I2=>nx18194z2);
   ix21185z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx21185z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(5), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(5), I2=>nx18194z2);
   ix20188z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx20188z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(6), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(6), I2=>nx18194z2);
   ix19191z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx19191z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(7), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(7), I2=>nx18194z2);
   ix18194z1486 : LUT3
      generic map (INIT => X"AC") 
       port map ( O=>nx18194z1, I0=>Main_Trans_Ond_Opt_core_inst_z_out_6(8), 
      I1=>Main_Trans_Ond_Opt_core_inst_z_out_7(8), I2=>nx18194z2);
   ix38613z1113 : LUT6
      generic map (INIT => X"FF3700C800C8FF37") 
       port map ( O=>nx38613z1, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39519z7, I5=>nx39517z7);
   ix11735z39804 : LUT4
      generic map (INIT => X"965A") 
       port map ( O=>nx11735z1, I0=>nx12188z21, I1=>nx12188z18, I2=>
      nx39517z10, I3=>nx12188z27);
   ix27120z1316 : LUT6
      generic map (INIT => X"FFFFFFFD00000002") 
       port map ( O=>nx27120z3, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3, I4=>nx27120z4, I5=>nx50040z8);
   ix27125z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx27125z3, I0=>nx27125z2, I1=>nx12188z27);
   ix39523z1526 : LUT3
      generic map (INIT => X"D4") 
       port map ( O=>nx39523z1, I0=>nx50039z4, I1=>nx50039z7, I2=>nx50039z8
   );
   ix50039z28344 : LUT4
      generic map (INIT => X"6996") 
       port map ( O=>nx50039z2, I0=>nx50039z3, I1=>nx50039z4, I2=>nx50039z7, 
      I3=>nx50039z8);
   ix39522z64930 : LUT6
      generic map (INIT => X"F220F770FDD0F880") 
       port map ( O=>nx39522z1, I0=>fsm_output_21, I1=>nx50040z6, I2=>
      nx50040z8, I3=>nx50040z9, I4=>nx50040z7, I5=>nx50040z4);
   ix39521z1546 : LUT3
      generic map (INIT => X"E8") 
       port map ( O=>nx39521z1, I0=>nx39520z4, I1=>nx39520z6, I2=>nx39520z7
   );
   ix39520z1546 : LUT3
      generic map (INIT => X"E8") 
       port map ( O=>nx39520z2, I0=>nx39519z6, I1=>nx39519z8, I2=>nx39517z8
   );
   ix39519z1314 : LUT6
      generic map (INIT => X"FFFFC837C8370000") 
       port map ( O=>nx39519z2, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39518z5, I5=>nx12188z25);
   ix39517z27577 : LUT6
      generic map (INIT => X"6696996999696696") 
       port map ( O=>nx39517z3, I0=>nx39517z4, I1=>nx39517z5, I2=>nx39517z6, 
      I3=>nx39517z9, I4=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I5=>
      nx39517z10);
   ix39517z20778 : LUT6
      generic map (INIT => X"CEDF084CDFCE4C08") 
       port map ( O=>nx39517z1, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx39517z2, I3=>nx12188z18, I4=>nx12188z27, I5=>nx12188z25);
   ix50045z25284 : LUT6
      generic map (INIT => X"5DA2A25DA25D5DA2") 
       port map ( O=>nx50045z1, I0=>nx39517z4, I1=>nx50045z2, I2=>
      fsm_output_21, I3=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I5=>
      nx12188z27);
   ix57161z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57161z2, I0=>fsm_output_38, I1=>nx12188z23, I2=>
      nx12188z22);
   ix57162z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57162z2, I0=>fsm_output_38, I1=>nx12188z20, I2=>
      nx12188z19);
   ix57163z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57163z2, I0=>fsm_output_38, I1=>nx12188z17, I2=>
      nx12188z16);
   ix57164z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57164z2, I0=>fsm_output_38, I1=>nx12188z34, I2=>
      nx12188z33);
   ix57165z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57165z2, I0=>fsm_output_38, I1=>nx12188z11, I2=>
      nx12188z10);
   ix57166z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57166z2, I0=>fsm_output_38, I1=>nx12188z8, I2=>
      nx12188z7);
   ix57167z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57167z2, I0=>fsm_output_38, I1=>nx12188z6, I2=>
      nx12188z5);
   ix57168z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx57168z1, I0=>fsm_output_38, I1=>nx12188z79, I2=>
      nx12188z32);
   ix28313z14370 : LUT6
      generic map (INIT => X"F7C4330073403300") 
       port map ( O=>nx28313z2, I0=>nx28311z3, I1=>fsm_output_21, I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(7), I3=>nx50039z7, 
      I4=>nx50039z5, I5=>nx50040z7);
   ix28312z24525 : LUT5
      generic map (INIT => X"56A65AAA") 
       port map ( O=>nx28312z3, I0=>nx28312z2, I1=>nx28311z5, I2=>
      fsm_output_21, I3=>nx50039z6, I4=>nx50039z7);
   ix28311z23498 : LUT5
      generic map (INIT => X"59A956A6") 
       port map ( O=>nx28311z4, I0=>nx28311z2, I1=>nx28311z5, I2=>
      fsm_output_21, I3=>nx50040z6, I4=>nx50039z7);
   ix28310z24526 : LUT6
      generic map (INIT => X"59A956A655A55AAA") 
       port map ( O=>nx28310z4, I0=>nx28310z2, I1=>nx28309z5, I2=>
      fsm_output_21, I3=>nx51876z3, I4=>nx50040z8, I5=>nx39520z6);
   ix28309z16366 : LUT6
      generic map (INIT => X"3ACA35C535C53ACA") 
       port map ( O=>nx28309z4, I0=>nx28309z5, I1=>nx28309z3, I2=>
      fsm_output_21, I3=>nx51877z3, I4=>nx39520z6, I5=>nx39518z5);
   ix28308z16879 : LUT6
      generic map (INIT => X"36C639C933C33CCC") 
       port map ( O=>nx28308z3, I0=>nx28307z3, I1=>nx28308z2, I2=>
      fsm_output_21, I3=>nx57253z2, I4=>nx39519z8, I5=>nx39518z5);
   ix28307z24268 : LUT5
      generic map (INIT => X"56A659A9") 
       port map ( O=>nx28307z2, I0=>nx28307z1, I1=>nx28307z3, I2=>
      fsm_output_21, I3=>nx39517z7, I4=>nx39518z5);
   ix15577z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx15577z2, I0=>fsm_output_30, I1=>nx15577z3);
   ix55084z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55084z2, I0=>fsm_output_21, I1=>nx51911z1, I2=>
      nx50040z7);
   ix55085z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55085z2, I0=>fsm_output_21, I1=>nx12188z84, I2=>
      nx50039z8);
   ix55086z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55086z2, I0=>fsm_output_21, I1=>nx12188z83, I2=>
      nx50040z9);
   ix55087z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55087z2, I0=>fsm_output_21, I1=>nx12188z82, I2=>
      nx39520z7);
   ix55088z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55088z2, I0=>fsm_output_21, I1=>nx12188z81, I2=>
      nx39517z8);
   ix55089z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx55089z1, I0=>fsm_output_21, I1=>nx12188z80, I2=>
      nx12188z25);
   ix16626z1326 : LUT2
      generic map (INIT => X"7") 
       port map ( O=>nx16626z3, I0=>nx12188z63, I1=>nx12188z62);
   ix16624z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx16624z2, I0=>nx12188z69, I1=>nx50040z7);
   ix16623z23160 : LUT6
      generic map (INIT => X"6AAAAAAA95555555") 
       port map ( O=>nx16623z3, I0=>nx12188z64, I1=>nx12188z65, I2=>
      nx12188z66, I3=>nx12188z67, I4=>nx12188z68, I5=>nx50039z8);
   ix16621z28600 : LUT4
      generic map (INIT => X"6A95") 
       port map ( O=>nx16621z3, I0=>nx12188z66, I1=>nx12188z67, I2=>
      nx12188z68, I3=>nx39520z7);
   ix55217z29110 : LUT4
      generic map (INIT => X"6C93") 
       port map ( O=>nx55217z3, I0=>nx12188z46, I1=>nx12188z44, I2=>
      nx12188z45, I3=>nx50039z5);
   ix55219z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx55219z2, I0=>nx12188z53, I1=>nx12188z84);
   ix55220z23160 : LUT6
      generic map (INIT => X"6AAAAAAA95555555") 
       port map ( O=>nx55220z3, I0=>nx12188z48, I1=>nx12188z49, I2=>
      nx12188z50, I3=>nx12188z51, I4=>nx12188z52, I5=>nx12188z83);
   ix55222z28600 : LUT4
      generic map (INIT => X"6A95") 
       port map ( O=>nx55222z3, I0=>nx12188z50, I1=>nx12188z51, I2=>
      nx12188z52, I3=>nx12188z81);
   ix44433z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx44433z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), I2=>nx44433z3, I3=>nx12188z24
   );
   ix39057z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39057z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), I2=>nx39057z3, I3=>nx39057z4
   );
   ix39056z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39056z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), I2=>nx39056z3, I3=>nx39056z4
   );
   ix39055z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39055z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), I2=>nx12188z15, I3=>
      nx12188z14);
   ix39054z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39054z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), I2=>nx12188z13, I3=>
      nx12188z12);
   ix39053z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39053z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), I2=>nx39053z3, I3=>nx12188z9
   );
   ix39052z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39052z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), I2=>nx39052z3, I3=>nx39052z4
   );
   ix39051z52149 : LUT4
      generic map (INIT => X"C693") 
       port map ( O=>nx39051z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), I2=>nx12188z4, I3=>nx12188z3
   );
   ix26275z13119 : LUT5
      generic map (INIT => X"E2D12E1D") 
       port map ( O=>nx26275z2, I0=>nx26275z3, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), I3=>nx12188z70, I4=>nx44433z3
   );
   ix33885z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33885z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), I2=>nx12188z71, I3=>nx39057z3, 
      I4=>nx33885z4);
   ix33884z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33884z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), I2=>nx12188z72, I3=>nx39056z3, 
      I4=>nx33884z4);
   ix33883z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33883z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), I2=>nx12188z73, I3=>
      nx12188z15, I4=>nx33883z4);
   ix33882z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33882z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), I2=>nx12188z74, I3=>
      nx12188z13, I4=>nx33882z4);
   ix33881z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33881z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), I2=>nx12188z75, I3=>nx39053z3, 
      I4=>nx33881z4);
   ix33880z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33880z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), I2=>nx12188z76, I3=>nx39052z3, 
      I4=>nx33880z4);
   ix33879z37450 : LUT5
      generic map (INIT => X"D8728D27") 
       port map ( O=>nx33879z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), I2=>nx12188z77, I3=>nx12188z4, 
      I4=>nx33879z3);
   ix31447z5205 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx31447z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(8), I2=>z_out_14_8, I3=>
      nx12188z78, I4=>nx12188z54, I5=>nx12188z70);
   ix28713z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28713z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>z_out_14_7, I3=>
      nx12188z78, I4=>nx12188z55);
   ix28713z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28713z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>z_out_14_7, I3=>
      nx12188z78, I4=>nx12188z55, I5=>nx12188z71);
   ix28712z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28712z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>z_out_14_6, I3=>
      nx12188z78, I4=>nx12188z56);
   ix28712z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28712z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>z_out_14_6, I3=>
      nx12188z78, I4=>nx12188z56, I5=>nx12188z72);
   ix28711z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28711z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>z_out_14_5, I3=>
      nx12188z78, I4=>nx12188z57);
   ix28711z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28711z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>z_out_14_5, I3=>
      nx12188z78, I4=>nx12188z57, I5=>nx12188z73);
   ix28710z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28710z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>z_out_14_4, I3=>
      nx12188z78, I4=>nx12188z58);
   ix28710z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28710z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>z_out_14_4, I3=>
      nx12188z78, I4=>nx12188z58, I5=>nx12188z74);
   ix28709z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28709z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>z_out_14_3, I3=>
      nx12188z78, I4=>nx12188z59);
   ix28709z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28709z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>z_out_14_3, I3=>
      nx12188z78, I4=>nx12188z59, I5=>nx12188z75);
   ix28708z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28708z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>z_out_14_2, I3=>
      nx12188z78, I4=>nx12188z60);
   ix28708z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28708z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>z_out_14_2, I3=>
      nx12188z78, I4=>nx12188z60, I5=>nx12188z76);
   ix28707z21862 : LUT5
      generic map (INIT => X"FAEE5044") 
       port map ( O=>nx28707z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>z_out_14_1, I3=>
      nx12188z78, I4=>nx12188z61);
   ix28707z5206 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx28707z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>z_out_14_1, I3=>
      nx12188z78, I4=>nx12188z61, I5=>nx12188z77);
   ix24129z36969 : LUT5
      generic map (INIT => X"B8748B47") 
       port map ( O=>nx24129z2, I0=>nx26275z3, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), I3=>nx12188z54, I4=>
      nx12188z24);
   ix46783z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46783z3, I0=>nx46783z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), I3=>nx12188z55);
   ix46784z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46784z3, I0=>nx46784z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), I3=>nx12188z56);
   ix46785z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46785z3, I0=>nx46785z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), I3=>nx12188z57);
   ix46786z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46786z3, I0=>nx46786z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), I3=>nx12188z58);
   ix46787z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46787z3, I0=>nx46787z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), I3=>nx12188z59);
   ix46788z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46788z3, I0=>nx46788z2, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), I3=>nx12188z60);
   ix46789z44680 : LUT4
      generic map (INIT => X"A965") 
       port map ( O=>nx46789z2, I0=>nx46789z1, I1=>fsm_output_25, I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), I3=>nx12188z61);
   ix2319z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx2319z2, I0=>p_nbus_Src_rsc_singleport_data_out(0), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22387z3, I3=>nx37767z7, I4=>nx22387z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(0));
   ix3057z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3057z3, I0=>p_nbus_Src_rsc_singleport_data_out(1), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22388z3, I3=>nx37767z7, I4=>nx22388z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(1));
   ix3058z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3058z3, I0=>p_nbus_Src_rsc_singleport_data_out(2), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22389z3, I3=>nx37767z7, I4=>nx22389z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(2));
   ix3059z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3059z3, I0=>p_nbus_Src_rsc_singleport_data_out(3), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22390z3, I3=>nx37767z7, I4=>nx22390z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(3));
   ix3060z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3060z3, I0=>p_nbus_Src_rsc_singleport_data_out(4), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22391z3, I3=>nx37767z7, I4=>nx22391z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(4));
   ix3061z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3061z3, I0=>p_nbus_Src_rsc_singleport_data_out(5), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22392z3, I3=>nx37767z7, I4=>nx22392z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(5));
   ix3062z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3062z3, I0=>p_nbus_Src_rsc_singleport_data_out(6), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22393z3, I3=>nx37767z7, I4=>nx22393z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(6));
   ix3063z8993 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx3063z2, I0=>p_nbus_Src_rsc_singleport_data_out(7), I1
      =>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx37767z6, I3=>nx37767z7, I4=>nx37767z2, I5=>
      p_nbus_Dst_rsc_singleport_data_out(7));
   ix56443z1469 : LUT3
      generic map (INIT => X"9A") 
       port map ( O=>nx56443z3, I0=>nx56443z2, I1=>fsm_output_21, I2=>
      nx50039z5);
   ix56442z37627 : LUT6
      generic map (INIT => X"72272772D88D8DD8") 
       port map ( O=>nx56442z3, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(1), I2=>nx12188z18, 
      I3=>nx12188z27, I4=>nx51911z1, I5=>nx50039z5);
   ix56441z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56441z2, I0=>fsm_output_21, I1=>nx39517z2, I2=>
      nx56441z3);
   ix56441z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56441z4, I0=>fsm_output_21, I1=>nx39517z2, I2=>
      nx56441z3, I3=>nx12188z84, I4=>nx51911z1);
   ix56440z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56440z2, I0=>fsm_output_21, I1=>nx56440z3, I2=>
      nx56440z4);
   ix56440z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56440z5, I0=>fsm_output_21, I1=>nx56440z3, I2=>
      nx56440z4, I3=>nx12188z83, I4=>nx12188z84);
   ix56439z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56439z2, I0=>fsm_output_21, I1=>nx56439z3, I2=>
      nx56439z4);
   ix56439z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56439z5, I0=>fsm_output_21, I1=>nx56439z3, I2=>
      nx56439z4, I3=>nx12188z82, I4=>nx12188z83);
   ix56438z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56438z2, I0=>fsm_output_21, I1=>nx56438z3, I2=>
      nx56438z4);
   ix56438z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56438z5, I0=>fsm_output_21, I1=>nx56438z3, I2=>
      nx56438z4, I3=>nx12188z81, I4=>nx12188z82);
   ix56437z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56437z2, I0=>fsm_output_21, I1=>nx56437z3, I2=>
      nx56437z4);
   ix56437z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56437z5, I0=>fsm_output_21, I1=>nx56437z3, I2=>
      nx56437z4, I3=>nx12188z80, I4=>nx12188z81);
   ix56436z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx56436z1, I0=>fsm_output_21, I1=>nx56436z2, I2=>
      nx56436z3);
   ix56436z37627 : LUT5
      generic map (INIT => X"27728DD8") 
       port map ( O=>nx56436z4, I0=>fsm_output_21, I1=>nx56436z2, I2=>
      nx56436z3, I3=>nx12188z43, I4=>nx12188z80);
   ix41127z1311 : LUT6
      generic map (INIT => X"FFFD00020002FFFD") 
       port map ( O=>nx41127z2, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3, I4=>nx27120z4, I5=>nx12188z1);
   ix41123z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx41123z2, I0=>nx27125z2, I1=>nx12188z67);
   ix12188z23348 : LUT6
      generic map (INIT => X"0103050F113355FF") 
       port map ( O=>nx12188z188, I0=>fsm_output_16, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(9), 
      I4=>Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(0), I5=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0));
   ix12188z5427 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z187, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(7), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(8), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(7));
   ix12188z5426 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z186, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(6), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(7), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(6));
   ix12188z5425 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z185, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(5), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(6), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(5));
   ix12188z5424 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z184, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(4), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(5), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(4));
   ix12188z5423 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z183, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(3), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(4), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(3));
   ix12188z5422 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z182, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(2), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(3), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(2));
   ix12188z5421 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z181, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(1), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(2), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(1));
   ix12188z5420 : LUT6
      generic map (INIT => X"02220AAA03330FFF") 
       port map ( O=>nx12188z179, I0=>nx12188z180, I1=>fsm_output_15, I2=>
      fsm_output_13, I3=>Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(0), I4
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(1), I5=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp(0));
   ix5050z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx5050z1, I0=>nx57765z1, I1=>fsm_output_11);
   ix33068z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx33068z1, I0=>nx57765z1, I1=>fsm_output_13);
   ix23913z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx23913z1, I0=>nx57765z1, I1=>fsm_output_23);
   ix2736z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx2736z1, I0=>nx57765z1, I1=>fsm_output_25);
   ix9010z6230 : LUT4
      generic map (INIT => X"1333") 
       port map ( O=>nx9010z2, I0=>nx12188z46, I1=>nx9010z3, I2=>nx12188z44, 
      I3=>nx12188z45);
   ix9010z33858 : LUT4
      generic map (INIT => X"7F20") 
       port map ( O=>nx9010z1, I0=>nx57765z1, I1=>nx9010z2, I2=>
      fsm_output_33, I3=>st_copy_y_1_2_tr0);
   ix36142z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx36142z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(1), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(1), I3=>nx15382z2, I4=>
      nx12188z124);
   ix37139z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx37139z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(2), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(2), I3=>nx15382z2, I4=>
      nx12188z122);
   ix38136z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx38136z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(3), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(3), I3=>nx15382z2, I4=>
      nx12188z120);
   ix39133z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx39133z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(4), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(4), I3=>nx15382z2, I4=>
      nx12188z118);
   ix40130z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx40130z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(5), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(5), I3=>nx15382z2, I4=>
      nx12188z116);
   ix41127z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx41127z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(6), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(6), I3=>nx15382z2, I4=>
      nx12188z114);
   ix42124z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx42124z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(7), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(7), I3=>nx15382z2, I4=>
      nx12188z112);
   ix43121z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx43121z1, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_7(8), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(8), I3=>nx15382z2, I4=>
      nx12188z110);
   ix8403z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx8403z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(1), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(1), I3=>nx15382z2, I4=>
      nx12188z164);
   ix9400z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx9400z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(2), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(2), I3=>nx15382z2, I4=>
      nx12188z163);
   ix10397z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx10397z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(3), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(3), I3=>nx15382z2, I4=>
      nx12188z103);
   ix11394z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx11394z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(4), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(4), I3=>nx15382z2, I4=>
      nx12188z101);
   ix12391z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx12391z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(5), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(5), I3=>nx15382z2, I4=>
      nx12188z160);
   ix13388z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx13388z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(6), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(6), I3=>nx15382z2, I4=>
      nx12188z159);
   ix14385z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx14385z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(7), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(7), I3=>nx15382z2, I4=>
      nx12188z158);
   ix15382z36290 : LUT5
      generic map (INIT => X"DDF588A0") 
       port map ( O=>nx15382z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_5(8), I2=>
      Main_Trans_Ond_Opt_core_inst_z_out_8(8), I3=>nx15382z2, I4=>nx12188z93
   );
   ix30297z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx30297z1, I0=>nx57765z1, I1=>fsm_output_2);
   ix37616z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx37616z1, I0=>nx39520z4, I1=>nx32631z3, I2=>nx57253z2
   );
   ix36619z24264 : LUT6
      generic map (INIT => X"659A9A65A65959A6") 
       port map ( O=>nx36619z1, I0=>nx50040z4, I1=>nx39520z4, I2=>nx32631z3, 
      I3=>nx50040z5, I4=>nx51877z3, I5=>nx57253z2);
   ix35622z1464 : LUT3
      generic map (INIT => X"96") 
       port map ( O=>nx35622z1, I0=>nx50039z4, I1=>nx32631z2, I2=>nx51876z3
   );
   ix34625z14315 : LUT5
      generic map (INIT => X"209332C9") 
       port map ( O=>nx34625z1, I0=>nx50039z4, I1=>nx50038z3, I2=>nx32631z2, 
      I3=>nx50040z6, I4=>nx51876z3);
   ix33628z38 : LUT6
      generic map (INIT => X"20DFB34C32CDFB04") 
       port map ( O=>nx33628z1, I0=>nx50039z4, I1=>nx50038z3, I2=>nx32631z2, 
      I3=>nx50039z6, I4=>nx50040z6, I5=>nx51876z3);
   ix32631z1315 : LUT6
      generic map (INIT => X"370000C837C8FFFF") 
       port map ( O=>nx32631z3, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39519z7, I5=>nx39517z7);
   ix32631z282 : LUT6
      generic map (INIT => X"2010BA75A251FBF7") 
       port map ( O=>nx32631z2, I0=>nx50040z4, I1=>nx39520z4, I2=>nx32631z3, 
      I3=>nx50040z5, I4=>nx51877z3, I5=>nx57253z2);
   ix32631z2338 : LUT6
      generic map (INIT => X"DF004C00CD000400") 
       port map ( O=>nx32631z1, I0=>nx50039z4, I1=>nx50038z3, I2=>nx32631z2, 
      I3=>nx50039z6, I4=>nx50040z6, I5=>nx51876z3);
   ix15240z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx15240z1, I0=>nx57765z1, I1=>fsm_output_38);
   ix12188z1326 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx12188z108, I0=>nx12188z18, I1=>nx12188z27);
   ix12188z28369 : LUT4
      generic map (INIT => X"69A5") 
       port map ( O=>nx12188z165, I0=>nx12188z21, I1=>nx12188z18, I2=>
      nx39517z10, I3=>nx12188z27);
   ix30487z1464 : LUT3
      generic map (INIT => X"96") 
       port map ( O=>nx30487z1, I0=>nx27124z6, I1=>nx27124z7, I2=>nx27124z9
   );
   ix60014z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx60014z1, I0=>nx57765z1, I1=>fsm_output_9);
   ix47320z56746 : LUT6
      generic map (INIT => X"D888D8882777D888") 
       port map ( O=>nx47320z1, I0=>fsm_output_21, I1=>nx39517z2, I2=>
      nx12188z18, I3=>nx12188z25, I4=>nx39517z6, I5=>nx39517z9);
   ix30894z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx30894z1, I0=>nx57765z1, I1=>fsm_output_21);
   ix27122z2080 : LUT5
      generic map (INIT => X"FD0202FD") 
       port map ( O=>nx27122z4, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3, I4=>nx39519z8);
   ix27123z55120 : LUT4
      generic map (INIT => X"D22D") 
       port map ( O=>nx27123z4, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx39518z5);
   ix27124z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx27124z3, I0=>nx27124z4, I1=>nx27124z12, I2=>
      nx39517z10);
   ix276z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx276z2, I0=>nx50039z6, I1=>nx51876z3);
   ix275z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx275z2, I0=>nx50040z6, I1=>nx51877z3);
   ix274z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx274z2, I0=>nx51876z3, I1=>nx57253z2);
   ix273z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx273z2, I0=>nx51877z3, I1=>nx39517z7);
   ix51874z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx51874z2, I0=>nx50039z6, I1=>nx50039z5);
   ix51875z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx51875z2, I0=>nx50040z6, I1=>nx50040z7);
   ix51876z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx51876z2, I0=>nx51876z3, I1=>nx50039z8);
   ix51877z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx51877z2, I0=>nx51877z3, I1=>nx50040z9);
   ix57253z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx57253z3, I0=>nx57253z2, I1=>nx39520z7);
   ix57254z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx57254z1, I0=>nx39517z7, I1=>nx39517z8);
   ix44612z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx44612z2, I0=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I1=>
      nx44612z3);
   ix16726z1547 : LUT3
      generic map (INIT => X"E8") 
       port map ( O=>nx16726z2, I0=>nx50038z3, I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx50040z7);
   ix50038z28254 : LUT6
      generic map (INIT => X"3C9696C3C369693C") 
       port map ( O=>nx50038z2, I0=>nx50039z4, I1=>nx50038z3, I2=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I3=>
      nx50039z7, I4=>nx50039z8, I5=>nx50040z7);
   ix50039z3234 : LUT6
      generic map (INIT => X"0DDF088F022F077F") 
       port map ( O=>nx50039z3, I0=>fsm_output_21, I1=>nx50040z6, I2=>
      nx50040z8, I3=>nx50040z9, I4=>nx50040z7, I5=>nx50040z4);
   ix50040z1533 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx50040z5, I0=>fsm_output_21, I1=>nx50040z6, I2=>
      nx50040z7);
   ix50040z1316 : LUT6
      generic map (INIT => X"3700000000000000") 
       port map ( O=>nx50040z4, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39519z7, I5=>nx39520z5);
   ix50040z39819 : LUT5
      generic map (INIT => X"69969669") 
       port map ( O=>nx50040z2, I0=>nx50040z3, I1=>nx50040z4, I2=>nx50040z5, 
      I3=>nx50040z8, I4=>nx50040z9);
   ix50040z1338 : LUT3
      generic map (INIT => X"17") 
       port map ( O=>nx50040z3, I0=>nx39520z4, I1=>nx39520z6, I2=>nx39520z7
   );
   ix39520z1316 : LUT6
      generic map (INIT => X"C8FFFFFF37000000") 
       port map ( O=>nx39520z4, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39519z7, I5=>nx39520z5);
   ix39520z39775 : LUT6
      generic map (INIT => X"3C6969C3C396963C") 
       port map ( O=>nx39520z3, I0=>nx39519z6, I1=>nx39520z4, I2=>nx39520z6, 
      I3=>nx39519z8, I4=>nx39517z8, I5=>nx39520z7);
   ix39519z15397 : LUT5
      generic map (INIT => X"C8FF3700") 
       port map ( O=>nx39519z6, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39519z7);
   ix39519z39820 : LUT4
      generic map (INIT => X"9669") 
       port map ( O=>nx39519z4, I0=>nx39519z5, I1=>nx39519z6, I2=>nx39519z8, 
      I3=>nx39517z8);
   ix39519z1315 : LUT6
      generic map (INIT => X"000037C837C8FFFF") 
       port map ( O=>nx39519z5, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>nx39519z3, I4=>nx39518z5, I5=>nx12188z25);
   ix39518z28345 : LUT4
      generic map (INIT => X"6996") 
       port map ( O=>nx39518z3, I0=>nx39518z2, I1=>nx39518z4, I2=>nx39518z5, 
      I3=>nx12188z25);
   ix39518z24098 : LUT5
      generic map (INIT => X"FF595900") 
       port map ( O=>nx39518z2, I0=>nx39517z4, I1=>nx39517z6, I2=>nx39517z9, 
      I3=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I4
      =>nx39517z10);
   ix39517z1918 : LUT5
      generic map (INIT => X"02020257") 
       port map ( O=>nx39517z9, I0=>fsm_output_21, I1=>nx12188z26, I2=>
      nx39517z7, I3=>nx12188z21, I4=>nx39517z8);
   ix39517z33957 : LUT5
      generic map (INIT => X"2A7F7F7F") 
       port map ( O=>nx39517z6, I0=>fsm_output_21, I1=>nx12188z26, I2=>
      nx39517z7, I3=>nx12188z21, I4=>nx39517z8);
   ix39517z47388 : LUT6
      generic map (INIT => X"3120F7B32031B3F7") 
       port map ( O=>nx39517z5, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx39517z2, I3=>nx12188z18, I4=>nx12188z27, I5=>nx12188z25);
   ix50045z1316 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx50045z2, I0=>nx12188z18, I1=>nx12188z25);
   ix39517z11419 : LUT4
      generic map (INIT => X"2777") 
       port map ( O=>nx39517z4, I0=>fsm_output_21, I1=>nx39517z2, I2=>
      nx12188z18, I3=>nx12188z25);
   ix12188z1353 : LUT3
      generic map (INIT => X"27") 
       port map ( O=>nx12188z35, I0=>fsm_output_38, I1=>nx12188z17, I2=>
      nx12188z16);
   ix57164z549 : LUT5
      generic map (INIT => X"02FDFD02") 
       port map ( O=>nx57164z3, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3, I4=>nx57164z4);
   ix57165z56650 : LUT6
      generic map (INIT => X"D8D827D82727D827") 
       port map ( O=>nx57165z3, I0=>fsm_output_38, I1=>nx12188z11, I2=>
      nx12188z10, I3=>nx27124z4, I4=>nx27124z12, I5=>nx27123z3);
   ix57166z56650 : LUT5
      generic map (INIT => X"27D8D827") 
       port map ( O=>nx57166z3, I0=>fsm_output_38, I1=>nx12188z8, I2=>
      nx12188z7, I3=>nx27124z4, I4=>nx27124z12);
   ix57167z11515 : LUT4
      generic map (INIT => X"27D8") 
       port map ( O=>nx57167z3, I0=>fsm_output_38, I1=>nx12188z6, I2=>
      nx12188z5, I3=>nx27125z2);
   ix28312z30818 : LUT6
      generic map (INIT => X"3B08F7C4BF8C7340") 
       port map ( O=>nx28312z2, I0=>nx28311z3, I1=>fsm_output_21, I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(7), I3=>nx50040z8, 
      I4=>nx50039z5, I5=>nx50040z7);
   ix28311z1445 : LUT3
      generic map (INIT => X"80") 
       port map ( O=>nx28311z5, I0=>nx28309z5, I1=>nx50040z8, I2=>nx39520z6
   );
   ix28311z1358 : LUT3
      generic map (INIT => X"2B") 
       port map ( O=>nx28311z3, I0=>nx28310z3, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(6), I2=>nx50039z8);
   ix28311z48294 : LUT5
      generic map (INIT => X"7B48B784") 
       port map ( O=>nx28311z2, I0=>nx28311z3, I1=>fsm_output_21, I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(7), I3=>nx39520z6, 
      I4=>nx50040z7);
   ix28310z34082 : LUT6
      generic map (INIT => X"0111155557777FFF") 
       port map ( O=>nx28310z3, I0=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(5), I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(4), I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(3), I3=>nx39517z8, 
      I4=>nx39520z7, I5=>nx50040z9);
   ix28310z48294 : LUT5
      generic map (INIT => X"7B48B784") 
       port map ( O=>nx28310z2, I0=>nx28310z3, I1=>fsm_output_21, I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(6), I3=>nx39519z8, 
      I4=>nx50039z8);
   ix28309z1498 : LUT3
      generic map (INIT => X"B8") 
       port map ( O=>nx28309z2, I0=>nx28309z3, I1=>fsm_output_21, I2=>
      nx39518z5);
   ix28309z28621 : LUT6
      generic map (INIT => X"A999955556666AAA") 
       port map ( O=>nx28309z3, I0=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(5), I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(4), I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(3), I3=>nx39517z8, 
      I4=>nx39520z7, I5=>nx50040z9);
   ix28309z1317 : LUT6
      generic map (INIT => X"E0008000A0000000") 
       port map ( O=>nx28309z5, I0=>nx12188z21, I1=>nx12188z18, I2=>
      nx39519z8, I3=>nx39518z5, I4=>nx39517z10, I5=>nx12188z27);
   ix28308z58026 : LUT6
      generic map (INIT => X"D78277227D28DD88") 
       port map ( O=>nx28308z2, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(4), I2=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(3), I3=>nx39517z10, 
      I4=>nx39517z8, I5=>nx39520z7);
   ix28307z7299 : LUT4
      generic map (INIT => X"175F") 
       port map ( O=>nx28307z3, I0=>nx12188z21, I1=>nx12188z18, I2=>
      nx39517z10, I3=>nx12188z27);
   ix28307z30714 : LUT4
      generic map (INIT => X"72D8") 
       port map ( O=>nx28307z1, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(3), I2=>nx12188z27, 
      I3=>nx39517z8);
   ix25232z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25232z2, I0=>fsm_output_13, I1=>nx44433z3, I2=>
      nx12188z24);
   ix25232z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25232z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), I2=>nx44433z3, I3=>nx12188z24
   );
   ix25233z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25233z2, I0=>fsm_output_13, I1=>nx39057z3, I2=>
      nx39057z4);
   ix25233z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25233z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), I2=>nx39057z3, I3=>nx39057z4
   );
   ix25234z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25234z2, I0=>fsm_output_13, I1=>nx39056z3, I2=>
      nx39056z4);
   ix25234z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25234z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), I2=>nx39056z3, I3=>nx39056z4
   );
   ix25235z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25235z2, I0=>fsm_output_13, I1=>nx12188z15, I2=>
      nx12188z14);
   ix25235z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25235z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), I2=>nx12188z15, I3=>
      nx12188z14);
   ix25236z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25236z2, I0=>fsm_output_13, I1=>nx12188z13, I2=>
      nx12188z12);
   ix25236z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25236z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), I2=>nx12188z13, I3=>
      nx12188z12);
   ix25237z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25237z2, I0=>fsm_output_13, I1=>nx39053z3, I2=>
      nx12188z9);
   ix25237z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25237z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), I2=>nx39053z3, I3=>nx12188z9
   );
   ix25238z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25238z2, I0=>fsm_output_13, I1=>nx39052z3, I2=>
      nx39052z4);
   ix25238z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25238z3, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), I2=>nx39052z3, I3=>nx39052z4
   );
   ix25239z15295 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx25239z2, I0=>fsm_output_13, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), I2=>nx12188z4, I3=>nx12188z3
   );
   ix25239z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25239z1, I0=>fsm_output_13, I1=>nx12188z4, I2=>
      nx12188z3);
   ix52942z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52942z1, I0=>fsm_output_25, I1=>nx12188z54, I2=>
      nx12188z70);
   ix52941z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52941z2, I0=>fsm_output_25, I1=>nx12188z55, I2=>
      nx12188z71);
   ix52940z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52940z2, I0=>fsm_output_25, I1=>nx12188z56, I2=>
      nx12188z72);
   ix52939z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52939z2, I0=>fsm_output_25, I1=>nx12188z57, I2=>
      nx12188z73);
   ix52938z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52938z2, I0=>fsm_output_25, I1=>nx12188z58, I2=>
      nx12188z74);
   ix52937z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52937z2, I0=>fsm_output_25, I1=>nx12188z59, I2=>
      nx12188z75);
   ix52936z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52936z2, I0=>fsm_output_25, I1=>nx12188z60, I2=>
      nx12188z76);
   ix52935z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>nx52935z1, I0=>fsm_output_25, I1=>nx12188z61, I2=>
      nx12188z77);
   ix12188z1450 : LUT3
      generic map (INIT => X"80") 
       port map ( O=>nx12188z151, I0=>nx50040z6, I1=>nx51876z3, I2=>
      nx51877z3);
   ix12188z1329 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx12188z150, I0=>nx51876z3, I1=>nx51877z3);
   ix12188z1331 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx12188z152, I0=>nx57253z2, I1=>nx39517z7);
   ix16626z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx16626z2, I0=>nx12188z63, I1=>nx12188z62);
   ix16625z1420 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx16625z3, I0=>nx12188z63, I1=>nx12188z62, I2=>
      nx50039z5);
   ix12188z1318 : LUT6
      generic map (INIT => X"8000000000000000") 
       port map ( O=>nx12188z63, I0=>nx12188z1, I1=>nx12188z64, I2=>
      nx12188z65, I3=>nx12188z66, I4=>nx12188z67, I5=>nx12188z68);
   ix16625z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx16625z2, I0=>nx12188z63, I1=>nx12188z62);
   ix12188z45009 : LUT6
      generic map (INIT => X"6AAAAAAAAAAAAAAA") 
       port map ( O=>nx12188z69, I0=>nx12188z1, I1=>nx12188z64, I2=>
      nx12188z65, I3=>nx12188z66, I4=>nx12188z67, I5=>nx12188z68);
   ix16623z45004 : LUT5
      generic map (INIT => X"6AAAAAAA") 
       port map ( O=>nx16623z2, I0=>nx12188z64, I1=>nx12188z65, I2=>
      nx12188z66, I3=>nx12188z67, I4=>nx12188z68);
   ix16622z39544 : LUT5
      generic map (INIT => X"6AAA9555") 
       port map ( O=>nx16622z3, I0=>nx12188z65, I1=>nx12188z66, I2=>
      nx12188z67, I3=>nx12188z68, I4=>nx50040z9);
   ix16622z28620 : LUT4
      generic map (INIT => X"6AAA") 
       port map ( O=>nx16622z2, I0=>nx12188z65, I1=>nx12188z66, I2=>
      nx12188z67, I3=>nx12188z68);
   ix16621z1420 : LUT3
      generic map (INIT => X"6A") 
       port map ( O=>nx16621z2, I0=>nx12188z66, I1=>nx12188z67, I2=>
      nx12188z68);
   ix16620z1420 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx16620z3, I0=>nx12188z67, I1=>nx12188z68, I2=>
      nx39517z8);
   ix16620z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx16620z2, I0=>nx12188z67, I1=>nx12188z68);
   ix16619z1321 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx16619z1, I0=>nx12188z68, I1=>nx12188z25);
   ix55217z1422 : LUT3
      generic map (INIT => X"6C") 
       port map ( O=>nx55217z2, I0=>nx12188z46, I1=>nx12188z44, I2=>
      nx12188z45);
   ix55218z1420 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx55218z3, I0=>nx12188z46, I1=>nx12188z45, I2=>
      nx51911z1);
   ix12188z1316 : LUT6
      generic map (INIT => X"8000000000000000") 
       port map ( O=>nx12188z46, I0=>nx12188z47, I1=>nx12188z48, I2=>
      nx12188z49, I3=>nx12188z50, I4=>nx12188z51, I5=>nx12188z52);
   ix55218z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx55218z2, I0=>nx12188z46, I1=>nx12188z45);
   ix12188z45007 : LUT6
      generic map (INIT => X"6AAAAAAAAAAAAAAA") 
       port map ( O=>nx12188z53, I0=>nx12188z47, I1=>nx12188z48, I2=>
      nx12188z49, I3=>nx12188z50, I4=>nx12188z51, I5=>nx12188z52);
   ix55220z45004 : LUT5
      generic map (INIT => X"6AAAAAAA") 
       port map ( O=>nx55220z2, I0=>nx12188z48, I1=>nx12188z49, I2=>
      nx12188z50, I3=>nx12188z51, I4=>nx12188z52);
   ix55221z39544 : LUT5
      generic map (INIT => X"6AAA9555") 
       port map ( O=>nx55221z3, I0=>nx12188z49, I1=>nx12188z50, I2=>
      nx12188z51, I3=>nx12188z52, I4=>nx12188z82);
   ix55221z28620 : LUT4
      generic map (INIT => X"6AAA") 
       port map ( O=>nx55221z2, I0=>nx12188z49, I1=>nx12188z50, I2=>
      nx12188z51, I3=>nx12188z52);
   ix55222z1420 : LUT3
      generic map (INIT => X"6A") 
       port map ( O=>nx55222z2, I0=>nx12188z50, I1=>nx12188z51, I2=>
      nx12188z52);
   ix55223z1420 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx55223z3, I0=>nx12188z51, I1=>nx12188z52, I2=>
      nx12188z80);
   ix55223z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx55223z2, I0=>nx12188z51, I1=>nx12188z52);
   ix55224z1321 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx55224z1, I0=>nx12188z52, I1=>nx12188z43);
   ix33885z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33885z2, I0=>fsm_output_25, I1=>nx12188z71, I2=>
      nx39057z3);
   ix33885z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33885z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(7), 
      I1=>z_out_14_7, I2=>nx12188z78);
   ix33884z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33884z2, I0=>fsm_output_25, I1=>nx12188z72, I2=>
      nx39056z3);
   ix33884z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33884z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(6), 
      I1=>z_out_14_6, I2=>nx12188z78);
   ix33883z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33883z2, I0=>fsm_output_25, I1=>nx12188z73, I2=>
      nx12188z15);
   ix33883z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33883z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(5), 
      I1=>z_out_14_5, I2=>nx12188z78);
   ix33882z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33882z2, I0=>fsm_output_25, I1=>nx12188z74, I2=>
      nx12188z13);
   ix33882z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33882z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(4), 
      I1=>z_out_14_4, I2=>nx12188z78);
   ix33881z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33881z2, I0=>fsm_output_25, I1=>nx12188z75, I2=>
      nx39053z3);
   ix33881z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33881z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(3), 
      I1=>z_out_14_3, I2=>nx12188z78);
   ix33880z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33880z2, I0=>fsm_output_25, I1=>nx12188z76, I2=>
      nx39052z3);
   ix33880z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33880z4, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(2), 
      I1=>z_out_14_2, I2=>nx12188z78);
   ix33879z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33879z1, I0=>fsm_output_25, I1=>nx12188z77, I2=>
      nx12188z4);
   ix33879z1518 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx33879z3, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(1), 
      I1=>z_out_14_1, I2=>nx12188z78);
   ix7219z62958 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx7219z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(8), I2=>z_out_14_8, I3=>
      nx12188z78, I4=>nx12188z54, I5=>nx12188z70);
   ix52941z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52941z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>z_out_14_7, I3=>
      nx12188z78, I4=>nx12188z55, I5=>nx12188z71);
   ix52940z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52940z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>z_out_14_6, I3=>
      nx12188z78, I4=>nx12188z56, I5=>nx12188z72);
   ix52939z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52939z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>z_out_14_5, I3=>
      nx12188z78, I4=>nx12188z57, I5=>nx12188z73);
   ix52938z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52938z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>z_out_14_4, I3=>
      nx12188z78, I4=>nx12188z58, I5=>nx12188z74);
   ix52937z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52937z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>z_out_14_3, I3=>
      nx12188z78, I4=>nx12188z59, I5=>nx12188z75);
   ix52936z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52936z3, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>z_out_14_2, I3=>
      nx12188z78, I4=>nx12188z60, I5=>nx12188z76);
   ix52935z62959 : LUT6
      generic map (INIT => X"0F33A5995A66F0CC") 
       port map ( O=>nx52935z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>z_out_14_1, I3=>
      nx12188z78, I4=>nx12188z61, I5=>nx12188z77);
   ix26275z1517 : LUT3
      generic map (INIT => X"CA") 
       port map ( O=>nx26275z3, I0=>Main_Trans_Ond_Opt_core_inst_z_out_3(8), 
      I1=>z_out_14_8, I2=>nx12188z78);
   ix46783z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46783z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), I2=>z_out_14_7, I3=>
      nx12188z78, I4=>nx39057z4);
   ix46784z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46784z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), I2=>z_out_14_6, I3=>
      nx12188z78, I4=>nx39056z4);
   ix46785z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46785z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), I2=>z_out_14_5, I3=>
      nx12188z78, I4=>nx12188z14);
   ix46786z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46786z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), I2=>z_out_14_4, I3=>
      nx12188z78, I4=>nx12188z12);
   ix46787z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46787z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), I2=>z_out_14_3, I3=>
      nx12188z78, I4=>nx12188z9);
   ix46788z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46788z2, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), I2=>z_out_14_2, I3=>
      nx12188z78, I4=>nx39052z4);
   ix46789z42410 : LUT5
      generic map (INIT => X"F5DDA088") 
       port map ( O=>nx46789z1, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>z_out_14_1, I3=>
      nx12188z78, I4=>nx12188z3);
   ix22387z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22387z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22387z5, I3=>nx22387z6);
   ix22387z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22387z2, I0=>p_nbus_Src_rsc_singleport_data_out(0), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22387z3, I3=>nx37767z7, I4=>nx22387z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(0));
   ix22388z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22388z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22388z5, I3=>nx22388z6);
   ix22388z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22388z2, I0=>p_nbus_Src_rsc_singleport_data_out(1), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22388z3, I3=>nx37767z7, I4=>nx22388z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(1));
   ix22389z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22389z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22389z5, I3=>nx22389z6);
   ix22389z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22389z2, I0=>p_nbus_Src_rsc_singleport_data_out(2), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22389z3, I3=>nx37767z7, I4=>nx22389z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(2));
   ix22390z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22390z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22390z5, I3=>nx22390z6);
   ix22390z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22390z2, I0=>p_nbus_Src_rsc_singleport_data_out(3), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22390z3, I3=>nx37767z7, I4=>nx22390z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(3));
   ix22391z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22391z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22391z5, I3=>nx22391z6);
   ix22391z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22391z2, I0=>p_nbus_Src_rsc_singleport_data_out(4), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22391z3, I3=>nx37767z7, I4=>nx22391z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(4));
   ix22392z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22392z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22392z5, I3=>nx22392z6);
   ix22392z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22392z2, I0=>p_nbus_Src_rsc_singleport_data_out(5), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22392z3, I3=>nx37767z7, I4=>nx22392z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(5));
   ix22393z819 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx22393z4, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx22393z5, I3=>nx22393z6);
   ix22393z59170 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx22393z2, I0=>p_nbus_Src_rsc_singleport_data_out(6), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx22393z3, I3=>nx37767z7, I4=>nx22393z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(6));
   ix37767z818 : LUT4
      generic map (INIT => X"FE10") 
       port map ( O=>nx37767z2, I0=>fsm_output_25, I1=>fsm_output_23, I2=>
      nx37767z3, I3=>nx37767z4);
   ix37767z1318 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx37767z7, I0=>fsm_output_25, I1=>fsm_output_23);
   ix37767z59171 : LUT6
      generic map (INIT => X"1D00E2FF1DFFE200") 
       port map ( O=>nx37767z5, I0=>p_nbus_Src_rsc_singleport_data_out(7), 
      I1=>Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2
      =>nx37767z6, I3=>nx37767z7, I4=>nx37767z2, I5=>
      p_nbus_Dst_rsc_singleport_data_out(7));
   ix32698z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32698z2, I0=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1), I1=>nx50039z5);
   ix32697z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32697z2, I0=>nx39517z2, I1=>nx51911z1);
   ix32696z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32696z2, I0=>nx56440z3, I1=>nx12188z84);
   ix32695z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32695z2, I0=>nx56439z3, I1=>nx12188z83);
   ix32694z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32694z2, I0=>nx56438z3, I1=>nx12188z82);
   ix32693z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32693z2, I0=>nx56437z3, I1=>nx12188z81);
   ix32692z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx32692z1, I0=>nx56436z2, I1=>nx12188z80);
   ix24883z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24883z2, I0=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(1), I1=>
      nx50039z5);
   ix24884z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24884z2, I0=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(0), I1=>
      nx51911z1);
   ix24885z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24885z2, I0=>nx56441z3, I1=>nx12188z84);
   ix24886z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24886z2, I0=>nx56440z4, I1=>nx12188z83);
   ix24887z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24887z2, I0=>nx56439z4, I1=>nx12188z82);
   ix24888z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24888z2, I0=>nx56438z4, I1=>nx12188z81);
   ix24889z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24889z2, I0=>nx56437z4, I1=>nx12188z80);
   ix24890z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx24890z1, I0=>nx56436z3, I1=>nx12188z43);
   ix56443z56826 : LUT6
      generic map (INIT => X"D88D8DD88D8DD8D8") 
       port map ( O=>nx56443z2, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(2), I2=>nx12188z21, 
      I3=>nx12188z18, I4=>nx39517z10, I5=>nx12188z27);
   ix56442z37626 : LUT4
      generic map (INIT => X"8DD8") 
       port map ( O=>nx56442z2, I0=>fsm_output_21, I1=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm(1), I2=>nx12188z18, 
      I3=>nx12188z27);
   ix27122z2079 : LUT4
      generic map (INIT => X"02FD") 
       port map ( O=>nx27122z2, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3);
   ix41126z2079 : LUT5
      generic map (INIT => X"FD0202FD") 
       port map ( O=>nx41126z2, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx27122z3, I4=>nx12188z64);
   ix27123z1359 : LUT3
      generic map (INIT => X"2D") 
       port map ( O=>nx27123z2, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3
   );
   ix41125z55119 : LUT4
      generic map (INIT => X"D22D") 
       port map ( O=>nx41125z2, I0=>nx27124z4, I1=>nx27124z12, I2=>nx27123z3, 
      I3=>nx12188z65);
   ix27124z10192 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx27124z12, I0=>nx27124z13, I1=>fsm_output_38, I2=>
      fsm_output_2, I3=>nx12188z34, I4=>nx12188z33);
   ix27124z33914 : LUT6
      generic map (INIT => X"0000150100007F57") 
       port map ( O=>nx27124z4, I0=>nx27124z5, I1=>nx27124z6, I2=>nx27124z7, 
      I3=>nx27124z9, I4=>nx27124z10, I5=>nx27124z11);
   ix41124z1419 : LUT3
      generic map (INIT => X"69") 
       port map ( O=>nx41124z2, I0=>nx27124z4, I1=>nx27124z12, I2=>
      nx12188z66);
   ix27124z14628 : LUT6
      generic map (INIT => X"0105030F115533FF") 
       port map ( O=>nx27124z11, I0=>fsm_output_38, I1=>fsm_output_9, I2=>
      fsm_output_2, I3=>nx12188z21, I4=>nx12188z42, I5=>nx12188z41);
   ix12188z6274 : LUT4
      generic map (INIT => X"135F") 
       port map ( O=>nx12188z38, I0=>fsm_output_38, I1=>fsm_output_2, I2=>
      nx12188z39, I3=>nx12188z40);
   ix27124z10190 : LUT5
      generic map (INIT => X"020A22AA") 
       port map ( O=>nx27124z7, I0=>nx27124z8, I1=>fsm_output_9, I2=>
      fsm_output_2, I3=>nx12188z18, I4=>nx12188z36);
   Main_Trans_Ond_Opt_core_wait_ctrl_inst : 
      Main_Trans_Ond_Opt_core_wait_ctrl_0 port map ( 
      p_mgc_start_sync_mgc_bsync_vld_oswt=>mgc_start_sync_mgc_bsync_vld_oswt, 
      p_start=>p_start, p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42
      =>Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42, 
      p_Src_rsc_singleport_icwt=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, 
      p_Vga_triosy_lz=>p_Vga_triosy_lz, px1507=>nx57765z1, 
      p_Src_rsc_singleport_tiswt0_0n0s2=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2, 
      p_rst=>p_rst, p_clk=>p_clk, p_mgc_start_sync_mgc_bsync_vld_icwt=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
   );
   Main_Trans_Ond_Opt_core_fsm_inst : Main_Trans_Ond_Opt_core_fsm_0
       port map ( px1785=>nx27124z8, px1780=>nx27125z1, px1779=>nx27125z2, 
      px1778=>nx27124z10, px1773=>nx27124z13, px1772=>nx27124z2, px3155=>
      nx12188z1, px3153=>nx12188z2, px1761=>nx27121z2, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(8)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(7)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(6)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(5)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(4)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(3)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(2)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9(1)=>
      Main_Trans_Ond_Opt_core_inst_z_out_9(8), px3310=>nx12188z3, px3287=>
      nx12188z4, px3247=>nx12188z5, px3217=>nx12188z6, px3246=>nx12188z7, 
      px3216=>nx12188z8, px3308=>nx12188z9, px3245=>nx12188z10, px3215=>
      nx12188z11, px3307=>nx12188z12, px3284=>nx12188z13, px3306=>nx12188z14, 
      px3283=>nx12188z15, px3243=>nx12188z16, px3213=>nx12188z17, px3194=>
      nx12188z18, px3242=>nx12188z19, px3212=>nx12188z20, px3193=>nx12188z21, 
      px3241=>nx12188z22, px3211=>nx12188z23, px3303=>nx12188z24, px3257=>
      nx12188z25, px1629=>nx55089z2, px1627=>nx55088z3, px1625=>nx55087z3, 
      px1622=>nx55086z3, px1619=>nx55085z3, px1617=>nx55084z3, px1614=>
      nx55083z2, px3140=>nx12188z26, px3207=>nx12188z27, px1611=>nx15584z2, 
      px1610=>nx15583z2, px1609=>nx15582z2, p_rtlcn19652=>nx12188z28, 
      p_rtlcn19651=>nx12188z29, p_rtlcn19650=>nx12188z30, p_rtlcn19649=>
      nx12188z31, p_nbus_Vga_rsc_singleport_data_in(7)=>
      p_nbus_Dst_rsc_singleport_data_out(7), 
      p_nbus_Vga_rsc_singleport_data_in(6)=>
      p_nbus_Dst_rsc_singleport_data_out(6), 
      p_nbus_Vga_rsc_singleport_data_in(5)=>
      p_nbus_Dst_rsc_singleport_data_out(5), 
      p_nbus_Vga_rsc_singleport_data_in(4)=>
      p_nbus_Dst_rsc_singleport_data_out(4), 
      p_nbus_Vga_rsc_singleport_data_in(3)=>
      p_nbus_Dst_rsc_singleport_data_out(3), 
      p_nbus_Vga_rsc_singleport_data_in(2)=>
      p_nbus_Dst_rsc_singleport_data_out(2), 
      p_nbus_Vga_rsc_singleport_data_in(1)=>
      p_nbus_Dst_rsc_singleport_data_out(1), 
      p_nbus_Vga_rsc_singleport_data_in(0)=>
      p_nbus_Dst_rsc_singleport_data_out(0), px3336=>nx37767z6, 
      p_nbus_Src_rsc_singleport_data_out(7)=>
      p_nbus_Src_rsc_singleport_data_out(7), 
      p_nbus_Src_rsc_singleport_data_out(6)=>
      p_nbus_Src_rsc_singleport_data_out(6), 
      p_nbus_Src_rsc_singleport_data_out(5)=>
      p_nbus_Src_rsc_singleport_data_out(5), 
      p_nbus_Src_rsc_singleport_data_out(4)=>
      p_nbus_Src_rsc_singleport_data_out(4), 
      p_nbus_Src_rsc_singleport_data_out(3)=>
      p_nbus_Src_rsc_singleport_data_out(3), 
      p_nbus_Src_rsc_singleport_data_out(2)=>
      p_nbus_Src_rsc_singleport_data_out(2), 
      p_nbus_Src_rsc_singleport_data_out(1)=>
      p_nbus_Src_rsc_singleport_data_out(1), 
      p_nbus_Src_rsc_singleport_data_out(0)=>
      p_nbus_Src_rsc_singleport_data_out(0), px1601=>nx3063z1, px3335=>
      nx22393z3, px1600=>nx3062z2, px3334=>nx22392z3, px1599=>nx3061z2, 
      px3333=>nx22391z3, px1598=>nx3060z2, px3332=>nx22390z3, px1597=>
      nx3059z2, px3331=>nx22389z3, px1596=>nx3058z2, px3330=>nx22388z3, 
      px1595=>nx3057z2, px3329=>nx22387z3, px1594=>nx3056z1, px1557=>
      nx57168z2, px3248=>nx12188z32, px3244=>nx12188z33, px3214=>nx12188z34, 
      px1551=>nx57164z4, px1549=>nx12188z35, px1550=>nx57163z3, px1541=>
      nx39518z4, px1540=>nx39519z3, px1536=>nx39519z7, px1533=>nx39520z5, 
      px1509=>nx27120z2, 
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
      =>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2, 
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
      =>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt, 
      p_mgc_start_sync_mgc_bsync_vld_oswt=>mgc_start_sync_mgc_bsync_vld_oswt, 
      p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, 
      p_start=>p_start, p_Dst_rsc_singleport_oswt=>Dst_rsc_singleport_oswt, 
      p_Src_rsc_singleport_oswt=>Src_rsc_singleport_oswt, px3222=>nx12188z36, 
      px3209=>nx12188z37, px1783=>nx12188z38, px3221=>nx12188z41, px3208=>
      nx12188z42, px1481=>nx12249z1, px1480=>nx11252z1, px1479=>nx10255z1, 
      px1478=>nx9258z1, px1477=>nx8261z1, px3249=>nx12188z43, px1476=>
      nx7264z1, px1482=>nx13246z1, px1483=>nx14243z1, px1466=>nx45428z1, 
      px1465=>nx39627z1, px3108=>nx12188z44, px1464=>nx39627z2, px3109=>
      nx12188z45, px1679=>nx12188z46, px1463=>nx38630z1, px1681=>nx12188z53, 
      px1462=>nx37633z1, px1461=>nx36636z1, px1460=>nx35639z1, px1459=>
      nx34642z1, px1458=>nx33645z1, px1457=>nx32648z1, px3132=>nx12188z54, 
      px1448=>nx56807z1, px3133=>nx12188z55, px1447=>nx55810z1, px3134=>
      nx12188z56, px1446=>nx54813z1, px3135=>nx12188z57, px1445=>nx53816z1, 
      px3136=>nx12188z58, px1444=>nx52819z1, px3137=>nx12188z59, px1443=>
      nx51822z1, px3138=>nx12188z60, px1442=>nx50825z1, px3139=>nx12188z61, 
      px1441=>nx49828z1, px1440=>nx8924z1, px1437=>nx8924z2, px1436=>
      nx9921z1, px1435=>nx10918z1, px1434=>nx11915z1, px1433=>nx12912z1, 
      px1432=>nx13909z1, px1431=>nx14906z1, px1430=>nx59915z1, px1429=>
      nx64900z1, px1428=>nx63903z1, px1427=>nx62906z1, px1426=>nx61909z1, 
      px1425=>nx60912z1, px1424=>nx59915z2, px1423=>nx63523z1, px1422=>
      nx61529z1, px3154=>nx12188z62, px1667=>nx12188z63, px1421=>nx62526z1, 
      px1669=>nx12188z69, px1420=>nx63523z2, px3156=>nx12188z64, px1419=>
      nx64520z1, px3157=>nx12188z65, px1418=>nx65517z1, px3158=>nx12188z66, 
      px1417=>nx978z1, px3159=>nx12188z67, px1416=>nx1975z1, px1415=>
      nx2972z1, px3177=>nx12188z70, p_z_out_14_8=>z_out_14_8, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(8)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(7)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(6)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(5)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(4)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(3)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(2)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3(1)=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), px1406=>nx2519z1, px3178=>
      nx12188z71, p_z_out_14_7=>z_out_14_7, px1405=>nx3516z1, px3179=>
      nx12188z72, p_z_out_14_6=>z_out_14_6, px1404=>nx4513z1, px3180=>
      nx12188z73, p_z_out_14_5=>z_out_14_5, px1403=>nx5510z1, px3181=>
      nx12188z74, p_z_out_14_4=>z_out_14_4, px1402=>nx6507z1, px3182=>
      nx12188z75, p_z_out_14_3=>z_out_14_3, px1401=>nx7504z1, px3183=>
      nx12188z76, p_z_out_14_2=>z_out_14_2, px1400=>nx8501z1, px3184=>
      nx12188z77, p_rtlcn30427=>nx12188z78, p_z_out_14_1=>z_out_14_1, px1399
      =>nx9498z1, px1398=>nx15824z1, px1395=>nx14827z1, px1394=>nx15824z2, 
      px1393=>nx16821z1, px1392=>nx17818z1, px1391=>nx18815z1, px1390=>
      nx19812z1, px1389=>nx20809z1, px1388=>nx21806z1, px1387=>nx53015z1, 
      px1386=>nx58997z1, px1385=>nx58000z1, px1384=>nx57003z1, px1383=>
      nx56006z1, px1382=>nx55009z1, px1381=>nx54012z1, px1380=>nx53015z2, 
      px1379=>nx1057z1, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(8)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(7)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(6)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(5)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(4)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(3)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(2)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(1)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(0)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1(8), px1377=>nx60z1, 
      px1376=>nx1057z2, px1375=>nx2054z1, px1374=>nx3051z1, px1373=>nx4048z1, 
      px1372=>nx5045z1, px1371=>nx6042z1, px1370=>nx7039z1, px1369=>nx8036z1, 
      px1368=>nx2246z1, px1367=>nx8228z1, px1366=>nx7231z1, px1365=>nx6234z1, 
      px1364=>nx5237z1, px1363=>nx4240z1, px1362=>nx3243z1, px1361=>nx2246z2, 
      px1360=>nx1249z1, px1359=>nx41828z1, px1358=>nx40831z1, px1357=>
      nx61846z1, p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(8)
      =>Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(7)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(6)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(5)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(4)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(3)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(2)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(1)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(0)=>
      Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1(8), px1356=>
      nx62843z1, px1355=>nx61846z2, px1354=>nx60849z1, px1353=>nx59852z1, 
      px1352=>nx58855z1, px1351=>nx57858z1, px1350=>nx56861z1, px1349=>
      nx55864z1, px1348=>nx54867z1, px1345=>nx57765z2, px1336=>nx387z1, 
      px1335=>nx59941z1, px1334=>nx60938z1, px1333=>nx61935z1, px1332=>
      nx62932z1, px1331=>nx63929z1, px1330=>nx64926z1, px1329=>nx387z2, 
      px3218=>nx12188z79, px1328=>nx1384z1, px1327=>nx4243z1, px3250=>
      nx12188z80, px1326=>nx2022z1, px3251=>nx12188z81, px1325=>nx62423z1, 
      px3252=>nx12188z82, px1324=>nx57288z1, px3253=>nx12188z83, px1323=>
      nx52153z1, px1322=>nx47018z1, px3254=>nx12188z84, px3107=>nx12188z85, 
      px1321=>nx23653z1, px3255=>nx51911z1, px1320=>nx28788z1, px1318=>
      nx4243z2, px1317=>nx64644z1, px1316=>nx59509z1, px3104=>nx12188z86, 
      px1315=>nx16297z1, px1314=>nx50304z1, px1313=>nx50304z2, px1312=>
      nx49307z1, px1311=>nx48310z1, px1310=>nx47313z1, px1309=>nx46316z1, 
      px1308=>nx45319z1, px1303=>nx57354z1, px1302=>nx57354z2, px1301=>
      nx58351z1, px1300=>nx59348z1, px1299=>nx60345z1, px1298=>nx61342z1, 
      px1297=>nx62339z1, px1293=>nx42765z1, px1291=>nx5238z1, px1290=>
      nx6235z1, px1289=>nx7232z1, px1288=>nx8229z1, px1287=>nx9226z1, px1286
      =>nx42765z2, px1281=>nx59090z1, px3320=>nx12188z87, px3319=>nx12188z88, 
      px3318=>nx12188z89, px3220=>nx12188z90, px3219=>nx12188z91, px3124=>
      nx12188z92, px3116=>nx12188z93, px3273=>nx12188z94, px3125=>nx12188z95, 
      px3274=>nx12188z96, px3126=>nx12188z97, px3275=>nx12188z98, px3127=>
      nx12188z99, px3128=>nx12188z100, px3120=>nx12188z101, px3129=>
      nx12188z102, px3121=>nx12188z103, px3278=>nx12188z104, px3130=>
      nx12188z105, px3279=>nx12188z106, px3131=>nx12188z107, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp(8), 
      p_nbus_Src_rsc_singleport_addr(16)=>p_nbus_Src_rsc_singleport_addr(16), 
      p_nbus_Src_rsc_singleport_addr(15)=>p_nbus_Src_rsc_singleport_addr(15), 
      p_nbus_Src_rsc_singleport_addr(14)=>p_nbus_Src_rsc_singleport_addr(14), 
      p_nbus_Src_rsc_singleport_addr(13)=>p_nbus_Src_rsc_singleport_addr(13), 
      p_nbus_Src_rsc_singleport_addr(12)=>p_nbus_Src_rsc_singleport_addr(12), 
      p_nbus_Src_rsc_singleport_addr(11)=>p_nbus_Src_rsc_singleport_addr(11), 
      p_nbus_Src_rsc_singleport_addr(10)=>p_nbus_Src_rsc_singleport_addr(10), 
      p_nbus_Src_rsc_singleport_addr(9)=>p_nbus_Src_rsc_singleport_addr(9), 
      p_nbus_Src_rsc_singleport_addr(8)=>p_nbus_Src_rsc_singleport_addr(8), 
      p_nbus_Src_rsc_singleport_addr(7)=>p_nbus_Src_rsc_singleport_addr(7), 
      p_nbus_Src_rsc_singleport_addr(6)=>p_nbus_Src_rsc_singleport_addr(6), 
      p_nbus_Src_rsc_singleport_addr(5)=>p_nbus_Src_rsc_singleport_addr(5), 
      p_nbus_Src_rsc_singleport_addr(4)=>p_nbus_Src_rsc_singleport_addr(4), 
      p_nbus_Src_rsc_singleport_addr(3)=>p_nbus_Src_rsc_singleport_addr(3), 
      p_nbus_Src_rsc_singleport_addr(2)=>p_nbus_Src_rsc_singleport_addr(2), 
      p_nbus_Src_rsc_singleport_addr(1)=>p_nbus_Src_rsc_singleport_addr(1), 
      p_nbus_Src_rsc_singleport_addr(0)=>p_nbus_Src_rsc_singleport_addr(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(7)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(6)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(5)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(4)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(3)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(2)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(1)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15(0)=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(7)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(6)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(5)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(4)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(3)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(2)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(1)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(0)=>
      Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(15)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(14)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(13)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(12)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(11)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(10)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(9)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(9), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(12), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(13), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(14), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(15), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(10), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm(11), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(14)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(13)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(12)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(11)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(9), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(10)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(10), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(9)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(11), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(12), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(13), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm(14), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(1)=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(0)=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(1)=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(0)=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7(1), px1500=>
      nx12188z108, p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(1)
      =>Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(0)=>
      Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5(1), px3195=>nx56441z3, 
      px3196=>nx56440z4, px3110=>nx12188z47, px3197=>nx56439z4, px3111=>
      nx12188z48, px3198=>nx56438z4, px3112=>nx12188z49, px3199=>nx56437z4, 
      px3113=>nx12188z50, px3200=>nx56436z3, px3114=>nx12188z51, px3115=>
      nx12188z52, px3295=>nx12188z109, px3161=>nx12188z110, px3296=>
      nx12188z111, px3162=>nx12188z112, px3297=>nx12188z113, px3163=>
      nx12188z114, px3298=>nx12188z115, px3164=>nx12188z116, px3299=>
      nx12188z117, px3165=>nx12188z118, px3300=>nx12188z119, px3166=>
      nx12188z120, px3301=>nx12188z121, px3167=>nx12188z122, px3302=>
      nx12188z123, px3168=>nx12188z124, p_nbus_Dst_rsc_singleport_addr(16)=>
      p_nbus_Dst_rsc_singleport_addr(16), p_nbus_Dst_rsc_singleport_addr(15)
      =>p_nbus_Dst_rsc_singleport_addr(15), 
      p_nbus_Dst_rsc_singleport_addr(14)=>p_nbus_Dst_rsc_singleport_addr(14), 
      p_nbus_Dst_rsc_singleport_addr(13)=>p_nbus_Dst_rsc_singleport_addr(13), 
      p_nbus_Dst_rsc_singleport_addr(12)=>p_nbus_Dst_rsc_singleport_addr(12), 
      p_nbus_Dst_rsc_singleport_addr(11)=>p_nbus_Dst_rsc_singleport_addr(11), 
      p_nbus_Dst_rsc_singleport_addr(10)=>p_nbus_Dst_rsc_singleport_addr(10), 
      p_nbus_Dst_rsc_singleport_addr(9)=>p_nbus_Dst_rsc_singleport_addr(9), 
      p_nbus_Dst_rsc_singleport_addr(8)=>p_nbus_Dst_rsc_singleport_addr(8), 
      p_nbus_Dst_rsc_singleport_addr(7)=>p_nbus_Dst_rsc_singleport_addr(7), 
      p_nbus_Dst_rsc_singleport_addr(6)=>p_nbus_Dst_rsc_singleport_addr(6), 
      p_nbus_Dst_rsc_singleport_addr(5)=>p_nbus_Dst_rsc_singleport_addr(5), 
      p_nbus_Dst_rsc_singleport_addr(4)=>p_nbus_Dst_rsc_singleport_addr(4), 
      p_nbus_Dst_rsc_singleport_addr(3)=>p_nbus_Dst_rsc_singleport_addr(3), 
      p_nbus_Dst_rsc_singleport_addr(2)=>p_nbus_Dst_rsc_singleport_addr(2), 
      p_nbus_Dst_rsc_singleport_addr(1)=>p_nbus_Dst_rsc_singleport_addr(1), 
      p_nbus_Dst_rsc_singleport_addr(0)=>p_nbus_Dst_rsc_singleport_addr(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(8)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(7)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(6)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(5)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(4)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(3)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(2)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(1)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17(0)=>
      Main_Trans_Ond_Opt_core_inst_z_out_17(0), 
      p_nbus_Vga_rsc_singleport_addr(16)=>Vga_rsc_singleport_addr(16), 
      p_nbus_Vga_rsc_singleport_addr(15)=>Vga_rsc_singleport_addr(7), 
      p_nbus_Vga_rsc_singleport_addr(14)=>Vga_rsc_singleport_addr(6), 
      p_nbus_Vga_rsc_singleport_addr(13)=>Vga_rsc_singleport_addr(5), 
      p_nbus_Vga_rsc_singleport_addr(12)=>Vga_rsc_singleport_addr(4), 
      p_nbus_Vga_rsc_singleport_addr(11)=>Vga_rsc_singleport_addr(3), 
      p_nbus_Vga_rsc_singleport_addr(10)=>Vga_rsc_singleport_addr(2), 
      p_nbus_Vga_rsc_singleport_addr(9)=>Vga_rsc_singleport_addr(1), 
      p_nbus_Vga_rsc_singleport_addr(8)=>Vga_rsc_singleport_addr(0), 
      p_nbus_Vga_rsc_singleport_addr(7)=>Vga_rsc_singleport_addr(15), 
      p_nbus_Vga_rsc_singleport_addr(6)=>Vga_rsc_singleport_addr(14), 
      p_nbus_Vga_rsc_singleport_addr(5)=>Vga_rsc_singleport_addr(13), 
      p_nbus_Vga_rsc_singleport_addr(4)=>Vga_rsc_singleport_addr(12), 
      p_nbus_Vga_rsc_singleport_addr(3)=>Vga_rsc_singleport_addr(11), 
      p_nbus_Vga_rsc_singleport_addr(2)=>Vga_rsc_singleport_addr(10), 
      p_nbus_Vga_rsc_singleport_addr(1)=>Vga_rsc_singleport_addr(9), 
      p_nbus_Vga_rsc_singleport_addr(0)=>Vga_rsc_singleport_addr(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(16)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(15)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(14)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(13)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(12)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(11)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(10)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(9)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(10), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(11), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(12), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(13), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(14), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(15), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm(16), px1208=>
      nx12188z180, p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(15)
      =>Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(14)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(13)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(12)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(11)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(10)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(9)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(9), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(10), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(11), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(12), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(13), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(14), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm(15), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(0), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(1), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(0)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva(8), px3096=>
      nx12188z125, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(9), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1)=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1), px3097=>
      nx12188z126, px3098=>nx12188z127, px3099=>nx12188z128, px3100=>
      nx12188z129, px3101=>nx12188z130, px3102=>nx12188z131, px3103=>
      nx12188z132, p_reg_passe_y_1_acc_44_sdt_tmp_6_1=>
      reg_passe_y_1_acc_44_sdt_tmp_6_1, px3264=>nx12188z133, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(1)=>
      Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7(1), px3141=>
      nx39517z2, px3224=>nx12188z134, px3316=>nx12188z135, px3265=>
      nx12188z136, px3142=>nx56440z3, px3225=>nx12188z137, px3266=>
      nx12188z138, px3143=>nx56439z3, px3226=>nx12188z139, px3267=>
      nx12188z140, px3144=>nx56438z3, px3227=>nx12188z141, px3268=>
      nx12188z142, px3145=>nx56437z3, px3228=>nx12188z143, px3269=>
      nx12188z144, px3146=>nx56436z2, px3270=>nx12188z145, px3229=>
      nx12188z146, px3160=>nx12188z68, px1159=>nx41122z1, px1664=>nx18374z1, 
      px1068=>nx18374z2, px3309=>nx39052z4, px3286=>nx39052z3, px1660=>
      nx18375z2, px1067=>nx18375z3, px3285=>nx39053z3, px1656=>nx18376z2, 
      px1066=>nx18376z3, px1651=>nx18377z2, px1065=>nx18377z3, px1646=>
      nx18378z2, px1064=>nx18378z3, px3305=>nx39056z4, px3282=>nx39056z3, 
      px1642=>nx18379z2, px1063=>nx18379z3, px3304=>nx39057z4, px3281=>
      nx39057z3, px1638=>nx18380z2, px1062=>nx18380z3, px3280=>nx44433z3, 
      px1634=>nx18381z2, px1061=>nx18381z3, p_rtlcn19655=>nx12188z147, 
      px1051=>nx15584z1, px3258=>nx39517z8, px3206=>nx39517z10, p_rtlcn19654
      =>nx12188z148, px1050=>nx15583z3, px3205=>nx39518z5, p_rtlcn19653=>
      nx12188z149, px1049=>nx15582z3, px1607=>nx15581z2, px3204=>nx39519z8, 
      px3152=>nx39517z7, px1048=>nx15581z3, px3150=>nx51877z3, px3149=>
      nx51876z3, px1606=>nx15580z2, px1047=>nx15580z3, px3202=>nx50040z8, 
      px3148=>nx50040z6, px1604=>nx12188z150, px1605=>nx15579z2, px1046=>
      nx15579z3, px3201=>nx50039z7, px3147=>nx50039z6, px1602=>nx12188z151, 
      px1603=>nx15578z2, px1608=>nx12188z152, px1045=>nx15578z3, px3203=>
      nx39520z6, px1763=>nx27120z4, px1766=>nx27122z3, px1770=>nx27123z3, 
      px1774=>nx27124z12, px1775=>nx27124z4, px1009=>nx27121z3, px1006=>
      nx15240z2, px1544=>nx39517z9, px1545=>nx39517z6, px1548=>nx39517z4, 
      px3259=>nx39520z7, px3151=>nx57253z2, px1004=>nx39610z1, px1781=>
      nx27124z11, px1790=>nx27124z5, px1003=>nx2454z1, px986=>nx34441z1, 
      px985=>nx41294z1, px984=>nx33923z1, px3261=>nx50039z8, px3260=>
      nx50040z9, px3105=>nx12188z153, px983=>nx11162z1, px3262=>nx50040z7, 
      px3256=>nx50039z5, px982=>nx21432z1, px981=>nx57245z1, px980=>
      nx29540z1, p_st_copy_y_2_2_tr0=>
      Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0, 
      p_st_copy_y_1_2_tr0=>st_copy_y_1_2_tr0, px3317=>nx12188z154, px3294=>
      nx12188z155, p_rtlcn30054=>nx12188z156, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2(8)=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(7), p_exit_passe_y_1_sva=>
      exit_passe_y_1_sva, p_exit_passe_y_sva=>exit_passe_y_sva, p_rtlcn30248
      =>nx51265z1, p_st_copy_y_2_tr0=>
      Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0, px3272=>nx12188z157, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(8)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(8), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(7)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(7), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(6)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(6), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(5)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(5), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(4)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(4), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(3)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(3), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(2)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(2), 
      p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11(1)=>
      Main_Trans_Ond_Opt_core_inst_z_out_11(1), 
      p_nbus_Src_rsc_singleport_data_in(7)=>
      p_nbus_Src_rsc_singleport_data_in(7), 
      p_nbus_Src_rsc_singleport_data_in(6)=>
      p_nbus_Src_rsc_singleport_data_in(6), 
      p_nbus_Src_rsc_singleport_data_in(5)=>
      p_nbus_Src_rsc_singleport_data_in(5), 
      p_nbus_Src_rsc_singleport_data_in(4)=>
      p_nbus_Src_rsc_singleport_data_in(4), 
      p_nbus_Src_rsc_singleport_data_in(3)=>
      p_nbus_Src_rsc_singleport_data_in(3), 
      p_nbus_Src_rsc_singleport_data_in(2)=>
      p_nbus_Src_rsc_singleport_data_in(2), 
      p_nbus_Src_rsc_singleport_data_in(1)=>
      p_nbus_Src_rsc_singleport_data_in(1), 
      p_nbus_Src_rsc_singleport_data_in(0)=>
      p_nbus_Src_rsc_singleport_data_in(0), px3117=>nx12188z158, px3118=>
      nx12188z159, px3119=>nx12188z160, px3276=>nx12188z161, px3277=>
      nx12188z162, px3122=>nx12188z163, px3123=>nx12188z164, px1501=>
      nx12188z165, px1784=>nx27124z9, px1786=>nx27124z7, px1788=>nx27124z6, 
      px3311=>nx12188z166, px3312=>nx12188z167, px3313=>nx12188z168, px3314
      =>nx12188z169, px3315=>nx12188z170, p_Src_rsc_singleport_re=>
      p_Src_rsc_singleport_re, p_Src_rsc_singleport_we=>
      p_Src_rsc_singleport_we, px1719=>p_nbus_Src_rsc_singleport_data_out(0), 
      px3169=>nx12188z171, p_nbus_Dst_rsc_singleport_data_in(7)=>
      p_nbus_Dst_rsc_singleport_data_in(7), 
      p_nbus_Dst_rsc_singleport_data_in(6)=>
      p_nbus_Dst_rsc_singleport_data_in(6), 
      p_nbus_Dst_rsc_singleport_data_in(5)=>
      p_nbus_Dst_rsc_singleport_data_in(5), 
      p_nbus_Dst_rsc_singleport_data_in(4)=>
      p_nbus_Dst_rsc_singleport_data_in(4), 
      p_nbus_Dst_rsc_singleport_data_in(3)=>
      p_nbus_Dst_rsc_singleport_data_in(3), 
      p_nbus_Dst_rsc_singleport_data_in(2)=>
      p_nbus_Dst_rsc_singleport_data_in(2), 
      p_nbus_Dst_rsc_singleport_data_in(1)=>
      p_nbus_Dst_rsc_singleport_data_in(1), 
      p_nbus_Dst_rsc_singleport_data_in(0)=>
      p_nbus_Dst_rsc_singleport_data_in(0), px1722=>
      p_nbus_Src_rsc_singleport_data_out(1), px3170=>nx12188z172, px1725=>
      p_nbus_Src_rsc_singleport_data_out(2), px3171=>nx12188z173, px1728=>
      p_nbus_Src_rsc_singleport_data_out(3), px3172=>nx12188z174, px1731=>
      p_nbus_Src_rsc_singleport_data_out(4), px3173=>nx12188z175, px1734=>
      p_nbus_Src_rsc_singleport_data_out(5), px3174=>nx12188z176, px1737=>
      p_nbus_Src_rsc_singleport_data_out(6), px3175=>nx12188z177, px1740=>
      p_nbus_Src_rsc_singleport_data_out(7), px3176=>nx12188z178, px1209=>
      nx12188z179, px1205=>nx12188z181, px1202=>nx12188z182, px1199=>
      nx12188z183, px1196=>nx12188z184, px1193=>nx12188z185, px1190=>
      nx12188z186, px1187=>nx12188z187, px1183=>nx12188z188, px1503=>
      nx30487z1, px3288=>nx12188z189, px1502=>nx31484z1, px3289=>nx12188z190, 
      px3290=>nx12188z191, px3291=>nx12188z192, px3292=>nx12188z193, px3293
      =>nx12188z194, p_Dst_rsc_singleport_re=>p_Dst_rsc_singleport_re, 
      p_Dst_rsc_singleport_we=>p_Dst_rsc_singleport_we, 
      p_Vga_rsc_singleport_we=>p_Vga_rsc_singleport_we, 
      p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output(41)=>fsm_output_2, 
      p_fsm_output_9=>fsm_output_9, p_fsm_output_11=>fsm_output_11, 
      p_fsm_output_13=>fsm_output_13, p_fsm_output_15=>fsm_output_15, 
      p_fsm_output_16=>fsm_output_16, p_fsm_output_21=>fsm_output_21, 
      p_fsm_output_23=>fsm_output_23, p_fsm_output_25=>fsm_output_25, 
      p_fsm_output_30=>fsm_output_30, p_fsm_output_33=>fsm_output_33, 
      p_fsm_output_38=>fsm_output_38, p_rst=>p_rst, px1507=>nx57765z1, p_clk
      =>p_clk, p_fsm_output_1_0_42=>
      Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0_42);
   ps_vcc : VCC port map ( P=>nx16349z1);
   ix50038z42275 : LUT6
      generic map (INIT => X"C0C00000A000A000") 
       port map ( O=>nx50038z3, I0=>nx50039z5, I1=>nx50039z6, I2=>nx50040z4, 
      I3=>nx50040z7, I4=>nx50040z6, I5=>fsm_output_21);
   ix50039z43641 : LUT6
      generic map (INIT => X"C3C33333A555A555") 
       port map ( O=>nx50039z4, I0=>nx50039z5, I1=>nx50039z6, I2=>nx50040z4, 
      I3=>nx50040z7, I4=>nx50040z6, I5=>fsm_output_21);
   cloned_lut_0 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx64, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(8), I2=>z_out_14_8, I3=>
      nx12188z78, I4=>nx12188z54, I5=>nx12188z70);
   cloned_lut_1 : LUT6
      generic map (INIT => X"F0CC5A66A5990F33") 
       port map ( O=>nx66, I0=>fsm_output_25, I1=>
      Main_Trans_Ond_Opt_core_inst_z_out_3(1), I2=>z_out_14_1, I3=>
      nx12188z78, I4=>nx12188z61, I5=>nx12188z77);
   cloned_lut_2 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx68, I0=>p_nbus_Src_rsc_singleport_data_out(1), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22388z3, I3=>nx37767z7, I4=>nx22388z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(1));
   cloned_lut_3 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx70, I0=>p_nbus_Src_rsc_singleport_data_out(2), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22389z3, I3=>nx37767z7, I4=>nx22389z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(2));
   cloned_lut_4 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx72, I0=>p_nbus_Src_rsc_singleport_data_out(3), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22390z3, I3=>nx37767z7, I4=>nx22390z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(3));
   cloned_lut_5 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx74, I0=>p_nbus_Src_rsc_singleport_data_out(4), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22391z3, I3=>nx37767z7, I4=>nx22391z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(4));
   cloned_lut_6 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx76, I0=>p_nbus_Src_rsc_singleport_data_out(5), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22392z3, I3=>nx37767z7, I4=>nx22392z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(5));
   cloned_lut_7 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx78, I0=>p_nbus_Src_rsc_singleport_data_out(6), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx22393z3, I3=>nx37767z7, I4=>nx22393z4, I5=>
      p_nbus_Dst_rsc_singleport_data_out(6));
   cloned_lut_8 : LUT6
      generic map (INIT => X"E2FF1D00E2001DFF") 
       port map ( O=>nx80, I0=>p_nbus_Src_rsc_singleport_data_out(7), I1=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, I2=>
      nx37767z6, I3=>nx37767z7, I4=>nx37767z2, I5=>
      p_nbus_Dst_rsc_singleport_data_out(7));
   copy_y_1_acc_psp_1_add8_0_muxcy_0 : MUXCY port map ( O=>nx41123z1, CI=>
      px1028, DI=>nx27125z1, S=>nx41122z1);
   copy_y_1_acc_psp_1_add8_0_muxcy_1 : MUXCY port map ( O=>nx41124z1, CI=>
      nx41123z1, DI=>nx27125z2, S=>nx41123z2);
   copy_y_1_acc_psp_1_add8_0_muxcy_2 : MUXCY port map ( O=>nx41125z1, CI=>
      nx41124z1, DI=>nx27124z2, S=>nx41124z2);
   copy_y_1_acc_psp_1_add8_0_muxcy_3 : MUXCY port map ( O=>nx41126z1, CI=>
      nx41125z1, DI=>nx27123z2, S=>nx41125z2);
   copy_y_1_acc_psp_1_add8_0_muxcy_4 : MUXCY port map ( O=>nx41127z1, CI=>
      nx41126z1, DI=>nx27122z2, S=>nx41126z2);
   copy_y_1_acc_psp_1_add8_0_muxcy_5 : MUXCY port map ( O=>nx41128z1, CI=>
      nx41127z1, DI=>nx27121z2, S=>nx41127z2);
   copy_y_1_acc_psp_1_add8_0_muxcy_6 : MUXCY port map ( O=>nx19032z1, CI=>
      nx41128z1, DI=>nx12188z62, S=>nx12188z62);
   z_out_1_add16_1_muxcy_0 : MUXCY port map ( O=>nx56437z1, CI=>px1028, DI=>
      nx56436z1, S=>nx56436z4);
   z_out_1_add16_1_muxcy_1 : MUXCY port map ( O=>nx56438z1, CI=>nx56437z1, 
      DI=>nx56437z2, S=>nx56437z5);
   z_out_1_add16_1_muxcy_2 : MUXCY port map ( O=>nx56439z1, CI=>nx56438z1, 
      DI=>nx56438z2, S=>nx56438z5);
   z_out_1_add16_1_muxcy_3 : MUXCY port map ( O=>nx56440z1, CI=>nx56439z1, 
      DI=>nx56439z2, S=>nx56439z5);
   z_out_1_add16_1_muxcy_4 : MUXCY port map ( O=>nx56441z1, CI=>nx56440z1, 
      DI=>nx56440z2, S=>nx56440z5);
   z_out_1_add16_1_muxcy_5 : MUXCY port map ( O=>nx56442z1, CI=>nx56441z1, 
      DI=>nx56441z2, S=>nx56441z4);
   z_out_1_add16_1_muxcy_6 : MUXCY port map ( O=>nx56443z1, CI=>nx56442z1, 
      DI=>nx56442z2, S=>nx56442z3);
   z_out_1_add16_1_muxcy_7 : MUXCY port map ( O=>nx56444z1, CI=>nx56443z1, 
      DI=>nx56443z2, S=>nx56443z3);
   z_out_1_add16_1_muxcy_8 : MUXCY port map ( O=>nx56445z1, CI=>nx56444z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(0), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(0));
   z_out_1_add16_1_muxcy_9 : MUXCY port map ( O=>nx37849z1, CI=>nx56445z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(1), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(1));
   z_out_1_add16_1_muxcy_10 : MUXCY port map ( O=>nx37850z1, CI=>nx37849z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(2), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(2));
   z_out_1_add16_1_muxcy_11 : MUXCY port map ( O=>nx37851z1, CI=>nx37850z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(3), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(3));
   z_out_1_add16_1_muxcy_12 : MUXCY port map ( O=>nx37852z1, CI=>nx37851z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(4), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(4));
   z_out_1_add16_1_muxcy_13 : MUXCY port map ( O=>nx37853z1, CI=>nx37852z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(5), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(5));
   z_out_1_add16_1_muxcy_14 : MUXCY port map ( O=>nx22777z1, CI=>nx37853z1, 
      DI=>Main_Trans_Ond_Opt_core_inst_z_out_15(6), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_15(6));
   passe_y_acc_13_itm_add17_7i1_muxcy_0 : MUXCY port map ( O=>nx24889z1, CI
      =>px1028, DI=>nx56436z3, S=>nx24890z1);
   passe_y_acc_13_itm_add17_7i1_muxcy_1 : MUXCY port map ( O=>nx24888z1, CI
      =>nx24889z1, DI=>nx56437z4, S=>nx24889z2);
   passe_y_acc_13_itm_add17_7i1_muxcy_2 : MUXCY port map ( O=>nx24887z1, CI
      =>nx24888z1, DI=>nx56438z4, S=>nx24888z2);
   passe_y_acc_13_itm_add17_7i1_muxcy_3 : MUXCY port map ( O=>nx24886z1, CI
      =>nx24887z1, DI=>nx56439z4, S=>nx24887z2);
   passe_y_acc_13_itm_add17_7i1_muxcy_4 : MUXCY port map ( O=>nx24885z1, CI
      =>nx24886z1, DI=>nx56440z4, S=>nx24886z2);
   passe_y_acc_13_itm_add17_7i1_muxcy_5 : MUXCY port map ( O=>nx24884z1, CI
      =>nx24885z1, DI=>nx56441z3, S=>nx24885z2);
   passe_y_acc_13_itm_add17_7i1_muxcy_6 : MUXCY port map ( O=>nx24883z1, CI
      =>nx24884z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(0), S=>nx24884z2
   );
   passe_y_acc_13_itm_add17_7i1_muxcy_7 : MUXCY port map ( O=>nx24882z1, CI
      =>nx24883z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0(1), S=>nx24883z2
   );
   passe_y_acc_13_itm_add17_7i1_muxcy_8 : MUXCY port map ( O=>nx24881z1, CI
      =>nx24882z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(0), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(0));
   passe_y_acc_13_itm_add17_7i1_muxcy_9 : MUXCY port map ( O=>nx23859z1, CI
      =>nx24881z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(1), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(1));
   passe_y_acc_13_itm_add17_7i1_muxcy_10 : MUXCY port map ( O=>nx23860z1, CI
      =>nx23859z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(2), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(2));
   passe_y_acc_13_itm_add17_7i1_muxcy_11 : MUXCY port map ( O=>nx23861z1, CI
      =>nx23860z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(3), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(3));
   passe_y_acc_13_itm_add17_7i1_muxcy_12 : MUXCY port map ( O=>nx23862z1, CI
      =>nx23861z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(4), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(4));
   passe_y_acc_13_itm_add17_7i1_muxcy_13 : MUXCY port map ( O=>nx23863z1, CI
      =>nx23862z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(5), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(5));
   passe_y_acc_13_itm_add17_7i1_muxcy_14 : MUXCY port map ( O=>nx23864z1, CI
      =>nx23863z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(6), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(6));
   passe_y_acc_13_itm_add17_7i1_muxcy_15 : MUXCY port map ( O=>nx8788z1, CI
      =>nx23864z1, DI=>Main_Trans_Ond_Opt_core_inst_z_out_2(7), S=>
      Main_Trans_Ond_Opt_core_inst_z_out_2(7));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_0 : MUXCY port map ( O=>nx32693z1, CI
      =>px1028, DI=>nx56436z2, S=>nx32692z1);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_1 : MUXCY port map ( O=>nx32694z1, CI
      =>nx32693z1, DI=>nx56437z3, S=>nx32693z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_2 : MUXCY port map ( O=>nx32695z1, CI
      =>nx32694z1, DI=>nx56438z3, S=>nx32694z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_3 : MUXCY port map ( O=>nx32696z1, CI
      =>nx32695z1, DI=>nx56439z3, S=>nx32695z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_4 : MUXCY port map ( O=>nx32697z1, CI
      =>nx32696z1, DI=>nx56440z3, S=>nx32696z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_5 : MUXCY port map ( O=>nx32698z1, CI
      =>nx32697z1, DI=>nx39517z2, S=>nx32697z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_6 : MUXCY port map ( O=>nx32699z1, CI
      =>nx32698z1, DI=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(1), 
      S=>nx32698z2);
   passe_y_1_acc_7_itm_add15_7i2_muxcy_7 : MUXCY port map ( O=>nx32700z1, CI
      =>nx32699z1, DI=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2), 
      S=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(2));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_8 : MUXCY port map ( O=>nx32701z1, CI
      =>nx32700z1, DI=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3), 
      S=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(3));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_9 : MUXCY port map ( O=>nx41959z1, CI
      =>nx32701z1, DI=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4), 
      S=>Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(4));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_10 : MUXCY port map ( O=>nx41958z1, 
      CI=>nx41959z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5), S=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(5));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_11 : MUXCY port map ( O=>nx41957z1, 
      CI=>nx41958z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6), S=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(6));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_12 : MUXCY port map ( O=>nx41956z1, 
      CI=>nx41957z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7), S=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(7));
   passe_y_1_acc_7_itm_add15_7i2_muxcy_13 : MUXCY port map ( O=>nx57032z1, 
      CI=>nx41956z1, DI=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8), S=>
      Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm(8));
   z_out_3_add8_2_muxcy_0 : MUXCY port map ( O=>nx39167z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx37767z2, S=>nx80);
   z_out_3_add8_2_muxcy_1 : MUXCY port map ( O=>nx39166z1, CI=>nx39167z1, DI
      =>nx22393z4, S=>nx78);
   z_out_3_add8_2_muxcy_2 : MUXCY port map ( O=>nx39165z1, CI=>nx39166z1, DI
      =>nx22392z4, S=>nx76);
   z_out_3_add8_2_muxcy_3 : MUXCY port map ( O=>nx39164z1, CI=>nx39165z1, DI
      =>nx22391z4, S=>nx74);
   z_out_3_add8_2_muxcy_4 : MUXCY port map ( O=>nx39163z1, CI=>nx39164z1, DI
      =>nx22390z4, S=>nx72);
   z_out_3_add8_2_muxcy_5 : MUXCY port map ( O=>nx39162z1, CI=>nx39163z1, DI
      =>nx22389z4, S=>nx70);
   z_out_3_add8_2_muxcy_6 : MUXCY port map ( O=>nx33786z1, CI=>nx39162z1, DI
      =>nx22388z4, S=>nx68);
   z_out_5_add8_3_muxcy_0 : MUXCY port map ( O=>nx46788z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx46789z1, S=>nx46789z2);
   z_out_5_add8_3_muxcy_1 : MUXCY port map ( O=>nx46787z1, CI=>nx46788z1, DI
      =>nx46788z2, S=>nx46788z3);
   z_out_5_add8_3_muxcy_2 : MUXCY port map ( O=>nx46786z1, CI=>nx46787z1, DI
      =>nx46787z2, S=>nx46787z3);
   z_out_5_add8_3_muxcy_3 : MUXCY port map ( O=>nx46785z1, CI=>nx46786z1, DI
      =>nx46786z2, S=>nx46786z3);
   z_out_5_add8_3_muxcy_4 : MUXCY port map ( O=>nx46784z1, CI=>nx46785z1, DI
      =>nx46785z2, S=>nx46785z3);
   z_out_5_add8_3_muxcy_5 : MUXCY port map ( O=>nx46783z1, CI=>nx46784z1, DI
      =>nx46784z2, S=>nx46784z3);
   z_out_5_add8_3_muxcy_6 : MUXCY port map ( O=>nx24129z1, CI=>nx46783z1, DI
      =>nx46783z2, S=>nx46783z3);
   z_out_8_add8_4_muxcy_0 : MUXCY port map ( O=>nx28708z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx28707z1, S=>nx66);
   z_out_8_add8_4_muxcy_1 : MUXCY port map ( O=>nx28709z1, CI=>nx28708z1, DI
      =>nx28708z2, S=>nx28708z3);
   z_out_8_add8_4_muxcy_2 : MUXCY port map ( O=>nx28710z1, CI=>nx28709z1, DI
      =>nx28709z2, S=>nx28709z3);
   z_out_8_add8_4_muxcy_3 : MUXCY port map ( O=>nx28711z1, CI=>nx28710z1, DI
      =>nx28710z2, S=>nx28710z3);
   z_out_8_add8_4_muxcy_4 : MUXCY port map ( O=>nx28712z1, CI=>nx28711z1, DI
      =>nx28711z2, S=>nx28711z3);
   z_out_8_add8_4_muxcy_5 : MUXCY port map ( O=>nx28713z1, CI=>nx28712z1, DI
      =>nx28712z2, S=>nx28712z3);
   z_out_8_add8_4_muxcy_6 : MUXCY port map ( O=>nx31447z1, CI=>nx28713z1, DI
      =>nx28713z2, S=>nx28713z3);
   z_out_7_add8_5_muxcy_0 : MUXCY port map ( O=>nx33880z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx33879z1, S=>nx33879z2);
   z_out_7_add8_5_muxcy_1 : MUXCY port map ( O=>nx33881z1, CI=>nx33880z1, DI
      =>nx33880z2, S=>nx33880z3);
   z_out_7_add8_5_muxcy_2 : MUXCY port map ( O=>nx33882z1, CI=>nx33881z1, DI
      =>nx33881z2, S=>nx33881z3);
   z_out_7_add8_5_muxcy_3 : MUXCY port map ( O=>nx33883z1, CI=>nx33882z1, DI
      =>nx33882z2, S=>nx33882z3);
   z_out_7_add8_5_muxcy_4 : MUXCY port map ( O=>nx33884z1, CI=>nx33883z1, DI
      =>nx33883z2, S=>nx33883z3);
   z_out_7_add8_5_muxcy_5 : MUXCY port map ( O=>nx33885z1, CI=>nx33884z1, DI
      =>nx33884z2, S=>nx33884z3);
   z_out_7_add8_5_muxcy_6 : MUXCY port map ( O=>nx26275z1, CI=>nx33885z1, DI
      =>nx33885z2, S=>nx33885z3);
   z_out_6_add8_6_muxcy_0 : MUXCY port map ( O=>nx39052z1, CI=>
      p_Vga_rsc_singleport_re, DI=>Main_Trans_Ond_Opt_core_inst_z_out_9(1), 
      S=>nx39051z1);
   z_out_6_add8_6_muxcy_1 : MUXCY port map ( O=>nx39053z1, CI=>nx39052z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(2), S=>nx39052z2);
   z_out_6_add8_6_muxcy_2 : MUXCY port map ( O=>nx39054z1, CI=>nx39053z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(3), S=>nx39053z2);
   z_out_6_add8_6_muxcy_3 : MUXCY port map ( O=>nx39055z1, CI=>nx39054z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(4), S=>nx39054z2);
   z_out_6_add8_6_muxcy_4 : MUXCY port map ( O=>nx39056z1, CI=>nx39055z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(5), S=>nx39055z2);
   z_out_6_add8_6_muxcy_5 : MUXCY port map ( O=>nx39057z1, CI=>nx39056z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(6), S=>nx39056z2);
   z_out_6_add8_6_muxcy_6 : MUXCY port map ( O=>nx44433z1, CI=>nx39057z1, DI
      =>Main_Trans_Ond_Opt_core_inst_z_out_9(7), S=>nx39057z2);
   exit_copy_y_1_sva_sub8_7i16_muxcy_0 : MUXCY port map ( O=>nx55223z1, CI=>
      p_Vga_rsc_singleport_re, DI=>image_copy_1_x_1_sva_1_0, S=>nx55224z1);
   exit_copy_y_1_sva_sub8_7i16_muxcy_1 : MUXCY port map ( O=>nx55222z1, CI=>
      nx55223z1, DI=>nx55223z2, S=>nx55223z3);
   exit_copy_y_1_sva_sub8_7i16_muxcy_2 : MUXCY port map ( O=>nx55221z1, CI=>
      nx55222z1, DI=>nx55222z2, S=>nx55222z3);
   exit_copy_y_1_sva_sub8_7i16_muxcy_3 : MUXCY port map ( O=>nx55220z1, CI=>
      nx55221z1, DI=>nx55221z2, S=>nx55221z3);
   exit_copy_y_1_sva_sub8_7i16_muxcy_4 : MUXCY port map ( O=>nx55219z1, CI=>
      nx55220z1, DI=>nx55220z2, S=>nx55220z3);
   exit_copy_y_1_sva_sub8_7i16_muxcy_5 : MUXCY port map ( O=>nx55218z1, CI=>
      nx55219z1, DI=>nx12188z53, S=>nx55219z2);
   exit_copy_y_1_sva_sub8_7i16_muxcy_6 : MUXCY port map ( O=>nx55217z1, CI=>
      nx55218z1, DI=>nx55218z2, S=>nx55218z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_0 : MUXCY port map ( O=>nx16620z1, CI=>
      p_Vga_rsc_singleport_re, DI=>image_copy_1_y_1_sva_1_0, S=>nx16619z1);
   copy_x_1_acc_3_itm_sub8_13_muxcy_1 : MUXCY port map ( O=>nx16621z1, CI=>
      nx16620z1, DI=>nx16620z2, S=>nx16620z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_2 : MUXCY port map ( O=>nx16622z1, CI=>
      nx16621z1, DI=>nx16621z2, S=>nx16621z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_3 : MUXCY port map ( O=>nx16623z1, CI=>
      nx16622z1, DI=>nx16622z2, S=>nx16622z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_4 : MUXCY port map ( O=>nx16624z1, CI=>
      nx16623z1, DI=>nx16623z2, S=>nx16623z3);
   copy_x_1_acc_3_itm_sub8_13_muxcy_5 : MUXCY port map ( O=>nx16625z1, CI=>
      nx16624z1, DI=>nx12188z69, S=>nx16624z2);
   copy_x_1_acc_3_itm_sub8_13_muxcy_6 : MUXCY port map ( O=>nx16626z1, CI=>
      nx16625z1, DI=>nx16625z2, S=>nx16625z3);
   z_out_9_add8_16_muxcy_0 : MUXCY port map ( O=>nx22393z1, CI=>px1028, DI=>
      nx37767z2, S=>nx37767z5);
   z_out_9_add8_16_muxcy_1 : MUXCY port map ( O=>nx22392z1, CI=>nx22393z1, 
      DI=>nx22393z4, S=>nx22393z2);
   z_out_9_add8_16_muxcy_2 : MUXCY port map ( O=>nx22391z1, CI=>nx22392z1, 
      DI=>nx22392z4, S=>nx22392z2);
   z_out_9_add8_16_muxcy_3 : MUXCY port map ( O=>nx22390z1, CI=>nx22391z1, 
      DI=>nx22391z4, S=>nx22391z2);
   z_out_9_add8_16_muxcy_4 : MUXCY port map ( O=>nx22389z1, CI=>nx22390z1, 
      DI=>nx22390z4, S=>nx22390z2);
   z_out_9_add8_16_muxcy_5 : MUXCY port map ( O=>nx22388z1, CI=>nx22389z1, 
      DI=>nx22389z4, S=>nx22389z2);
   z_out_9_add8_16_muxcy_6 : MUXCY port map ( O=>nx22387z1, CI=>nx22388z1, 
      DI=>nx22388z4, S=>nx22388z2);
   z_out_12_add8_17_muxcy_0 : MUXCY port map ( O=>nx18375z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx18374z1, S=>nx18374z2);
   z_out_12_add8_17_muxcy_1 : MUXCY port map ( O=>nx18376z1, CI=>nx18375z1, 
      DI=>nx18375z2, S=>nx18375z3);
   z_out_12_add8_17_muxcy_2 : MUXCY port map ( O=>nx18377z1, CI=>nx18376z1, 
      DI=>nx18376z2, S=>nx18376z3);
   z_out_12_add8_17_muxcy_3 : MUXCY port map ( O=>nx18378z1, CI=>nx18377z1, 
      DI=>nx18377z2, S=>nx18377z3);
   z_out_12_add8_17_muxcy_4 : MUXCY port map ( O=>nx18379z1, CI=>nx18378z1, 
      DI=>nx18378z2, S=>nx18378z3);
   z_out_12_add8_17_muxcy_5 : MUXCY port map ( O=>nx18380z1, CI=>nx18379z1, 
      DI=>nx18379z2, S=>nx18379z3);
   z_out_12_add8_17_muxcy_6 : MUXCY port map ( O=>nx18381z1, CI=>nx18380z1, 
      DI=>nx18380z2, S=>nx18380z3);
   z_out_22_add7_18_muxcy_0 : MUXCY port map ( O=>nx55088z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx55089z1, S=>nx55089z2);
   z_out_22_add7_18_muxcy_1 : MUXCY port map ( O=>nx55087z1, CI=>nx55088z1, 
      DI=>nx55088z2, S=>nx55088z3);
   z_out_22_add7_18_muxcy_2 : MUXCY port map ( O=>nx55086z1, CI=>nx55087z1, 
      DI=>nx55087z2, S=>nx55087z3);
   z_out_22_add7_18_muxcy_3 : MUXCY port map ( O=>nx55085z1, CI=>nx55086z1, 
      DI=>nx55086z2, S=>nx55086z3);
   z_out_22_add7_18_muxcy_4 : MUXCY port map ( O=>nx55084z1, CI=>nx55085z1, 
      DI=>nx55085z2, S=>nx55085z3);
   z_out_22_add7_18_muxcy_5 : MUXCY port map ( O=>nx55083z1, CI=>nx55084z1, 
      DI=>nx55084z2, S=>nx55084z3);
   z_out_2_add8_21_muxcy_0 : MUXCY port map ( O=>nx15583z1, CI=>px1028, DI=>
      nx15584z1, S=>nx15584z2);
   z_out_2_add8_21_muxcy_1 : MUXCY port map ( O=>nx15582z1, CI=>nx15583z1, 
      DI=>nx15583z2, S=>nx15583z3);
   z_out_2_add8_21_muxcy_2 : MUXCY port map ( O=>nx15581z1, CI=>nx15582z1, 
      DI=>nx15582z2, S=>nx15582z3);
   z_out_2_add8_21_muxcy_3 : MUXCY port map ( O=>nx15580z1, CI=>nx15581z1, 
      DI=>nx15581z2, S=>nx15581z3);
   z_out_2_add8_21_muxcy_4 : MUXCY port map ( O=>nx15579z1, CI=>nx15580z1, 
      DI=>nx15580z2, S=>nx15580z3);
   z_out_2_add8_21_muxcy_5 : MUXCY port map ( O=>nx15578z1, CI=>nx15579z1, 
      DI=>nx15579z2, S=>nx15579z3);
   z_out_2_add8_21_muxcy_6 : MUXCY port map ( O=>nx15577z1, CI=>nx15578z1, 
      DI=>nx15578z2, S=>nx15578z3);
   z_out_14_add8_23_muxcy_0 : MUXCY port map ( O=>nx3062z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx3063z1, S=>nx3063z2);
   z_out_14_add8_23_muxcy_1 : MUXCY port map ( O=>nx3061z1, CI=>nx3062z1, DI
      =>nx3062z2, S=>nx3062z3);
   z_out_14_add8_23_muxcy_2 : MUXCY port map ( O=>nx3060z1, CI=>nx3061z1, DI
      =>nx3061z2, S=>nx3061z3);
   z_out_14_add8_23_muxcy_3 : MUXCY port map ( O=>nx3059z1, CI=>nx3060z1, DI
      =>nx3060z2, S=>nx3060z3);
   z_out_14_add8_23_muxcy_4 : MUXCY port map ( O=>nx3058z1, CI=>nx3059z1, DI
      =>nx3059z2, S=>nx3059z3);
   z_out_14_add8_23_muxcy_5 : MUXCY port map ( O=>nx3057z1, CI=>nx3058z1, DI
      =>nx3058z2, S=>nx3058z3);
   z_out_14_add8_23_muxcy_6 : MUXCY port map ( O=>nx2319z1, CI=>nx3057z1, DI
      =>nx3057z2, S=>nx3057z3);
   z_out_13_add8_24_muxcy_0 : MUXCY port map ( O=>nx10454z1, CI=>
      p_Vga_rsc_singleport_re, DI=>nx33879z3, S=>nx28707z2);
   z_out_13_add8_24_muxcy_1 : MUXCY port map ( O=>nx10453z1, CI=>nx10454z1, 
      DI=>nx33880z4, S=>nx28708z3);
   z_out_13_add8_24_muxcy_2 : MUXCY port map ( O=>nx10452z1, CI=>nx10453z1, 
      DI=>nx33881z4, S=>nx28709z3);
   z_out_13_add8_24_muxcy_3 : MUXCY port map ( O=>nx10451z1, CI=>nx10452z1, 
      DI=>nx33882z4, S=>nx28710z3);
   z_out_13_add8_24_muxcy_4 : MUXCY port map ( O=>nx10450z1, CI=>nx10451z1, 
      DI=>nx33883z4, S=>nx28711z3);
   z_out_13_add8_24_muxcy_5 : MUXCY port map ( O=>nx10449z1, CI=>nx10450z1, 
      DI=>nx33884z4, S=>nx28712z3);
   z_out_13_add8_24_muxcy_6 : MUXCY port map ( O=>nx10448z1, CI=>nx10449z1, 
      DI=>nx33885z4, S=>nx28713z3);
   z_out_10_add8_25_muxcy_0 : MUXCY port map ( O=>nx52936z1, CI=>px1028, DI
      =>nx52935z1, S=>nx52935z2);
   z_out_10_add8_25_muxcy_1 : MUXCY port map ( O=>nx52937z1, CI=>nx52936z1, 
      DI=>nx52936z2, S=>nx52936z3);
   z_out_10_add8_25_muxcy_2 : MUXCY port map ( O=>nx52938z1, CI=>nx52937z1, 
      DI=>nx52937z2, S=>nx52937z3);
   z_out_10_add8_25_muxcy_3 : MUXCY port map ( O=>nx52939z1, CI=>nx52938z1, 
      DI=>nx52938z2, S=>nx52938z3);
   z_out_10_add8_25_muxcy_4 : MUXCY port map ( O=>nx52940z1, CI=>nx52939z1, 
      DI=>nx52939z2, S=>nx52939z3);
   z_out_10_add8_25_muxcy_5 : MUXCY port map ( O=>nx52941z1, CI=>nx52940z1, 
      DI=>nx52940z2, S=>nx52940z3);
   z_out_10_add8_25_muxcy_6 : MUXCY port map ( O=>nx7219z1, CI=>nx52941z1, 
      DI=>nx52941z2, S=>nx52941z3);
   z_out_11_add8_26_muxcy_0 : MUXCY port map ( O=>nx25238z1, CI=>px1028, DI
      =>nx25239z1, S=>nx25239z2);
   z_out_11_add8_26_muxcy_1 : MUXCY port map ( O=>nx25237z1, CI=>nx25238z1, 
      DI=>nx25238z2, S=>nx25238z3);
   z_out_11_add8_26_muxcy_2 : MUXCY port map ( O=>nx25236z1, CI=>nx25237z1, 
      DI=>nx25237z2, S=>nx25237z3);
   z_out_11_add8_26_muxcy_3 : MUXCY port map ( O=>nx25235z1, CI=>nx25236z1, 
      DI=>nx25236z2, S=>nx25236z3);
   z_out_11_add8_26_muxcy_4 : MUXCY port map ( O=>nx25234z1, CI=>nx25235z1, 
      DI=>nx25235z2, S=>nx25235z3);
   z_out_11_add8_26_muxcy_5 : MUXCY port map ( O=>nx25233z1, CI=>nx25234z1, 
      DI=>nx25234z2, S=>nx25234z3);
   z_out_11_add8_26_muxcy_6 : MUXCY port map ( O=>nx25232z1, CI=>nx25233z1, 
      DI=>nx25233z2, S=>nx25233z3);
   z_out_15_add7_29_muxcy_0 : MUXCY port map ( O=>nx28308z1, CI=>px1028, DI
      =>nx28307z1, S=>nx28307z2);
   z_out_15_add7_29_muxcy_1 : MUXCY port map ( O=>nx28309z1, CI=>nx28308z1, 
      DI=>nx28308z2, S=>nx28308z3);
   z_out_15_add7_29_muxcy_2 : MUXCY port map ( O=>nx28310z1, CI=>nx28309z1, 
      DI=>nx28309z2, S=>nx28309z4);
   z_out_15_add7_29_muxcy_3 : MUXCY port map ( O=>nx28311z1, CI=>nx28310z1, 
      DI=>nx28310z2, S=>nx28310z4);
   z_out_15_add7_29_muxcy_4 : MUXCY port map ( O=>nx28312z1, CI=>nx28311z1, 
      DI=>nx28311z2, S=>nx28311z4);
   z_out_15_add7_29_muxcy_5 : MUXCY port map ( O=>nx28313z1, CI=>nx28312z1, 
      DI=>nx28312z2, S=>nx28312z3);
   z_out_17_add8_32_muxcy_0 : MUXCY port map ( O=>nx57167z1, CI=>px1028, DI
      =>nx57168z1, S=>nx57168z2);
   z_out_17_add8_32_muxcy_1 : MUXCY port map ( O=>nx57166z1, CI=>nx57167z1, 
      DI=>nx57167z2, S=>nx57167z3);
   z_out_17_add8_32_muxcy_2 : MUXCY port map ( O=>nx57165z1, CI=>nx57166z1, 
      DI=>nx57166z2, S=>nx57166z3);
   z_out_17_add8_32_muxcy_3 : MUXCY port map ( O=>nx57164z1, CI=>nx57165z1, 
      DI=>nx57165z2, S=>nx57165z3);
   z_out_17_add8_32_muxcy_4 : MUXCY port map ( O=>nx57163z1, CI=>nx57164z1, 
      DI=>nx57164z2, S=>nx57164z3);
   z_out_17_add8_32_muxcy_5 : MUXCY port map ( O=>nx57162z1, CI=>nx57163z1, 
      DI=>nx57163z2, S=>nx57163z3);
   z_out_17_add8_32_muxcy_6 : MUXCY port map ( O=>nx57161z1, CI=>nx57162z1, 
      DI=>nx57162z2, S=>nx57162z2);
   muxcy_0_1 : MUXCY port map ( O=>nx39518z1, CI=>
      Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, DI=>
      nx39517z1, S=>nx39517z3);
   muxcy_0_2 : MUXCY port map ( O=>nx39519z1, CI=>nx39518z1, DI=>nx39518z2, 
      S=>nx39518z3);
   muxcy_0_3 : MUXCY port map ( O=>nx39520z1, CI=>nx39519z1, DI=>nx39519z2, 
      S=>nx39519z4);
   muxcy_0_4 : MUXCY port map ( O=>nx50040z1, CI=>nx39520z1, DI=>nx39520z2, 
      S=>nx39520z3);
   muxcy_0_5 : MUXCY port map ( O=>nx50039z1, CI=>nx50040z1, DI=>nx39521z1, 
      S=>nx50040z2);
   muxcy_0_6 : MUXCY port map ( O=>nx50038z1, CI=>nx50039z1, DI=>nx39522z1, 
      S=>nx50039z2);
   muxcy_0_7 : MUXCY port map ( O=>nx50037z1, CI=>nx50038z1, DI=>nx39523z1, 
      S=>nx50038z2);
   muxcy_0_8 : MUXCY port map ( O=>nx44612z1, CI=>nx50037z1, DI=>nx16726z2, 
      S=>nx50037z2);
   passe_y_1_acc_45_itm_add7_27_muxcy_0 : MUXCY port map ( O=>nx57253z1, CI
      =>nx12188z26, DI=>nx39517z7, S=>nx57254z1);
   passe_y_1_acc_45_itm_add7_27_muxcy_1 : MUXCY port map ( O=>nx51877z1, CI
      =>nx57253z1, DI=>nx57253z2, S=>nx57253z3);
   passe_y_1_acc_45_itm_add7_27_muxcy_2 : MUXCY port map ( O=>nx51876z1, CI
      =>nx51877z1, DI=>nx51877z3, S=>nx51877z2);
   passe_y_1_acc_45_itm_add7_27_muxcy_3 : MUXCY port map ( O=>nx51875z1, CI
      =>nx51876z1, DI=>nx51876z3, S=>nx51876z2);
   passe_y_1_acc_45_itm_add7_27_muxcy_4 : MUXCY port map ( O=>nx51874z1, CI
      =>nx51875z1, DI=>nx50040z6, S=>nx51875z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_0 : MUXCY port map ( O=>nx272z1, CI=>
      nx12188z26, DI=>nx39517z7, S=>nx39517z7);
   passe_y_1_acc_43_itm_add9_30_muxcy_1 : MUXCY port map ( O=>nx273z1, CI=>
      nx272z1, DI=>nx57253z2, S=>nx57253z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_2 : MUXCY port map ( O=>nx274z1, CI=>
      nx273z1, DI=>nx51877z3, S=>nx273z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_3 : MUXCY port map ( O=>nx275z1, CI=>
      nx274z1, DI=>nx51876z3, S=>nx274z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_4 : MUXCY port map ( O=>nx276z1, CI=>
      nx275z1, DI=>nx50040z6, S=>nx275z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_5 : MUXCY port map ( O=>nx277z1, CI=>
      nx276z1, DI=>nx50039z6, S=>nx276z2);
   passe_y_1_acc_43_itm_add9_30_muxcy_6 : MUXCY port map ( O=>nx278z1, CI=>
      nx277z1, DI=>nx50040z6, S=>nx50040z6);
   passe_y_acc_49_psp_add8_7i17_muxcy_0 : MUXCY port map ( O=>nx27124z1, CI
      =>nx27125z1, DI=>nx27125z2, S=>nx27125z3);
   passe_y_acc_49_psp_add8_7i17_muxcy_1 : MUXCY port map ( O=>nx27123z1, CI
      =>nx27124z1, DI=>nx27124z2, S=>nx27124z3);
   passe_y_acc_49_psp_add8_7i17_muxcy_2 : MUXCY port map ( O=>nx27122z1, CI
      =>nx27123z1, DI=>nx27123z2, S=>nx27123z4);
   passe_y_acc_49_psp_add8_7i17_muxcy_3 : MUXCY port map ( O=>nx27121z1, CI
      =>nx27122z1, DI=>nx27122z2, S=>nx27122z4);
   passe_y_acc_49_psp_add8_7i17_muxcy_4 : MUXCY port map ( O=>nx27120z1, CI
      =>nx27121z1, DI=>nx27121z2, S=>nx27121z3);
   passe_y_acc_49_psp_add8_7i17_muxcy_5 : MUXCY port map ( O=>nx27119z1, CI
      =>nx27120z1, DI=>nx27120z2, S=>nx27120z3);
   reg_exit_copy_y_1_sva : FDRE port map ( Q=>st_copy_y_1_2_tr0, C=>p_clk, 
      CE=>nx16349z1, D=>nx9010z1, R=>p_rst);
   reg_levels_nand_svs : FDRE port map ( Q=>nx12188z155, C=>p_clk, CE=>
      nx16349z1, D=>nx57245z1, R=>p_rst);
   reg_passe_x_acc_3_cse_sg1 : FDRE port map ( Q=>nx12188z154, C=>p_clk, CE
      =>nx16349z1, D=>nx29540z1, R=>p_rst);
end INTERFACE ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity Main_Trans_Ond_Opt is 
   port (
      start : IN std_logic ;
      done : OUT std_logic ;
      nbLevels_rsc_z : IN std_logic_vector (2 DOWNTO 0) ;
      nbLevels_triosy_lz : OUT std_logic ;
      Src_triosy_lz : OUT std_logic ;
      Dst_triosy_lz : OUT std_logic ;
      Vga_triosy_lz : OUT std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Src_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0) ;
      Src_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      Src_rsc_singleport_re : OUT std_logic ;
      Src_rsc_singleport_we : OUT std_logic ;
      Src_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0) ;
      Dst_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0) ;
      Dst_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      Dst_rsc_singleport_re : OUT std_logic ;
      Dst_rsc_singleport_we : OUT std_logic ;
      Dst_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0) ;
      Vga_rsc_singleport_data_in : OUT std_logic_vector (7 DOWNTO 0) ;
      Vga_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0) ;
      Vga_rsc_singleport_re : OUT std_logic ;
      Vga_rsc_singleport_we : OUT std_logic ;
      Vga_rsc_singleport_data_out : IN std_logic_vector (7 DOWNTO 0)) ;
end Main_Trans_Ond_Opt ;

architecture v2 of Main_Trans_Ond_Opt is 
   component Main_Trans_Ond_Opt_core_0
      port (
         p_start : IN std_logic ;
         p_Vga_triosy_lz : OUT std_logic ;
         p_nbus_Src_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0)
          ;
         p_nbus_Dst_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0)
          ;
         p_nbus_Src_rsc_singleport_data_in : OUT std_logic_vector
          (7 DOWNTO 0) ;
         p_Src_rsc_singleport_re : OUT std_logic ;
         p_Src_rsc_singleport_we : OUT std_logic ;
         p_nbus_Dst_rsc_singleport_data_in : OUT std_logic_vector
          (7 DOWNTO 0) ;
         p_Dst_rsc_singleport_re : OUT std_logic ;
         p_Dst_rsc_singleport_we : OUT std_logic ;
         p_Vga_rsc_singleport_we : OUT std_logic ;
         p_nbus_Src_rsc_singleport_data_out : IN std_logic_vector
          (7 DOWNTO 0) ;
         p_nbus_Dst_rsc_singleport_data_out : IN std_logic_vector
          (7 DOWNTO 0) ;
         p_nbus_nbLevels_rsc_z : IN std_logic_vector (2 DOWNTO 0) ;
         p_nbus_Vga_rsc_singleport_data_in : OUT std_logic_vector
          (7 DOWNTO 0) ;
         p_nbus_Vga_rsc_singleport_addr : OUT std_logic_vector (16 DOWNTO 0)
          ;
         p_rst : IN std_logic ;
         p_clk : IN std_logic ;
         p_Vga_rsc_singleport_re : IN std_logic ;
         px1028 : IN std_logic) ;
   end component ;
   signal Vga_rsc_singleport_re_EXMPLR55, nx4627z1, Vga_triosy_lz_EXMPLR110
   : std_logic ;

begin
   done <= Vga_triosy_lz_EXMPLR110 ;
   nbLevels_triosy_lz <= Vga_triosy_lz_EXMPLR110 ;
   Src_triosy_lz <= Vga_triosy_lz_EXMPLR110 ;
   Dst_triosy_lz <= Vga_triosy_lz_EXMPLR110 ;
   Vga_triosy_lz <= Vga_triosy_lz_EXMPLR110 ;
   Vga_rsc_singleport_re <= Vga_rsc_singleport_re_EXMPLR55 ;
   ps_vcc : VCC port map ( P=>Vga_rsc_singleport_re_EXMPLR55);
   ps_gnd : GND port map ( G=>nx4627z1);
   Main_Trans_Ond_Opt_core_inst : Main_Trans_Ond_Opt_core_0 port map ( 
      p_start=>start, p_Vga_triosy_lz=>Vga_triosy_lz_EXMPLR110, 
      p_nbus_Src_rsc_singleport_addr(16)=>Src_rsc_singleport_addr(16), 
      p_nbus_Src_rsc_singleport_addr(15)=>Src_rsc_singleport_addr(15), 
      p_nbus_Src_rsc_singleport_addr(14)=>Src_rsc_singleport_addr(14), 
      p_nbus_Src_rsc_singleport_addr(13)=>Src_rsc_singleport_addr(13), 
      p_nbus_Src_rsc_singleport_addr(12)=>Src_rsc_singleport_addr(12), 
      p_nbus_Src_rsc_singleport_addr(11)=>Src_rsc_singleport_addr(11), 
      p_nbus_Src_rsc_singleport_addr(10)=>Src_rsc_singleport_addr(10), 
      p_nbus_Src_rsc_singleport_addr(9)=>Src_rsc_singleport_addr(9), 
      p_nbus_Src_rsc_singleport_addr(8)=>Src_rsc_singleport_addr(8), 
      p_nbus_Src_rsc_singleport_addr(7)=>Src_rsc_singleport_addr(7), 
      p_nbus_Src_rsc_singleport_addr(6)=>Src_rsc_singleport_addr(6), 
      p_nbus_Src_rsc_singleport_addr(5)=>Src_rsc_singleport_addr(5), 
      p_nbus_Src_rsc_singleport_addr(4)=>Src_rsc_singleport_addr(4), 
      p_nbus_Src_rsc_singleport_addr(3)=>Src_rsc_singleport_addr(3), 
      p_nbus_Src_rsc_singleport_addr(2)=>Src_rsc_singleport_addr(2), 
      p_nbus_Src_rsc_singleport_addr(1)=>Src_rsc_singleport_addr(1), 
      p_nbus_Src_rsc_singleport_addr(0)=>Src_rsc_singleport_addr(0), 
      p_nbus_Dst_rsc_singleport_addr(16)=>Dst_rsc_singleport_addr(16), 
      p_nbus_Dst_rsc_singleport_addr(15)=>Dst_rsc_singleport_addr(15), 
      p_nbus_Dst_rsc_singleport_addr(14)=>Dst_rsc_singleport_addr(14), 
      p_nbus_Dst_rsc_singleport_addr(13)=>Dst_rsc_singleport_addr(13), 
      p_nbus_Dst_rsc_singleport_addr(12)=>Dst_rsc_singleport_addr(12), 
      p_nbus_Dst_rsc_singleport_addr(11)=>Dst_rsc_singleport_addr(11), 
      p_nbus_Dst_rsc_singleport_addr(10)=>Dst_rsc_singleport_addr(10), 
      p_nbus_Dst_rsc_singleport_addr(9)=>Dst_rsc_singleport_addr(9), 
      p_nbus_Dst_rsc_singleport_addr(8)=>Dst_rsc_singleport_addr(8), 
      p_nbus_Dst_rsc_singleport_addr(7)=>Dst_rsc_singleport_addr(7), 
      p_nbus_Dst_rsc_singleport_addr(6)=>Dst_rsc_singleport_addr(6), 
      p_nbus_Dst_rsc_singleport_addr(5)=>Dst_rsc_singleport_addr(5), 
      p_nbus_Dst_rsc_singleport_addr(4)=>Dst_rsc_singleport_addr(4), 
      p_nbus_Dst_rsc_singleport_addr(3)=>Dst_rsc_singleport_addr(3), 
      p_nbus_Dst_rsc_singleport_addr(2)=>Dst_rsc_singleport_addr(2), 
      p_nbus_Dst_rsc_singleport_addr(1)=>Dst_rsc_singleport_addr(1), 
      p_nbus_Dst_rsc_singleport_addr(0)=>Dst_rsc_singleport_addr(0), 
      p_nbus_Src_rsc_singleport_data_in(7)=>Src_rsc_singleport_data_in(7), 
      p_nbus_Src_rsc_singleport_data_in(6)=>Src_rsc_singleport_data_in(6), 
      p_nbus_Src_rsc_singleport_data_in(5)=>Src_rsc_singleport_data_in(5), 
      p_nbus_Src_rsc_singleport_data_in(4)=>Src_rsc_singleport_data_in(4), 
      p_nbus_Src_rsc_singleport_data_in(3)=>Src_rsc_singleport_data_in(3), 
      p_nbus_Src_rsc_singleport_data_in(2)=>Src_rsc_singleport_data_in(2), 
      p_nbus_Src_rsc_singleport_data_in(1)=>Src_rsc_singleport_data_in(1), 
      p_nbus_Src_rsc_singleport_data_in(0)=>Src_rsc_singleport_data_in(0), 
      p_Src_rsc_singleport_re=>Src_rsc_singleport_re, 
      p_Src_rsc_singleport_we=>Src_rsc_singleport_we, 
      p_nbus_Dst_rsc_singleport_data_in(7)=>Dst_rsc_singleport_data_in(7), 
      p_nbus_Dst_rsc_singleport_data_in(6)=>Dst_rsc_singleport_data_in(6), 
      p_nbus_Dst_rsc_singleport_data_in(5)=>Dst_rsc_singleport_data_in(5), 
      p_nbus_Dst_rsc_singleport_data_in(4)=>Dst_rsc_singleport_data_in(4), 
      p_nbus_Dst_rsc_singleport_data_in(3)=>Dst_rsc_singleport_data_in(3), 
      p_nbus_Dst_rsc_singleport_data_in(2)=>Dst_rsc_singleport_data_in(2), 
      p_nbus_Dst_rsc_singleport_data_in(1)=>Dst_rsc_singleport_data_in(1), 
      p_nbus_Dst_rsc_singleport_data_in(0)=>Dst_rsc_singleport_data_in(0), 
      p_Dst_rsc_singleport_re=>Dst_rsc_singleport_re, 
      p_Dst_rsc_singleport_we=>Dst_rsc_singleport_we, 
      p_Vga_rsc_singleport_we=>Vga_rsc_singleport_we, 
      p_nbus_Src_rsc_singleport_data_out(7)=>Src_rsc_singleport_data_out(0), 
      p_nbus_Src_rsc_singleport_data_out(6)=>Src_rsc_singleport_data_out(1), 
      p_nbus_Src_rsc_singleport_data_out(5)=>Src_rsc_singleport_data_out(2), 
      p_nbus_Src_rsc_singleport_data_out(4)=>Src_rsc_singleport_data_out(3), 
      p_nbus_Src_rsc_singleport_data_out(3)=>Src_rsc_singleport_data_out(4), 
      p_nbus_Src_rsc_singleport_data_out(2)=>Src_rsc_singleport_data_out(5), 
      p_nbus_Src_rsc_singleport_data_out(1)=>Src_rsc_singleport_data_out(6), 
      p_nbus_Src_rsc_singleport_data_out(0)=>Src_rsc_singleport_data_out(7), 
      p_nbus_Dst_rsc_singleport_data_out(7)=>Dst_rsc_singleport_data_out(0), 
      p_nbus_Dst_rsc_singleport_data_out(6)=>Dst_rsc_singleport_data_out(1), 
      p_nbus_Dst_rsc_singleport_data_out(5)=>Dst_rsc_singleport_data_out(2), 
      p_nbus_Dst_rsc_singleport_data_out(4)=>Dst_rsc_singleport_data_out(3), 
      p_nbus_Dst_rsc_singleport_data_out(3)=>Dst_rsc_singleport_data_out(4), 
      p_nbus_Dst_rsc_singleport_data_out(2)=>Dst_rsc_singleport_data_out(5), 
      p_nbus_Dst_rsc_singleport_data_out(1)=>Dst_rsc_singleport_data_out(6), 
      p_nbus_Dst_rsc_singleport_data_out(0)=>Dst_rsc_singleport_data_out(7), 
      p_nbus_nbLevels_rsc_z(2)=>nbLevels_rsc_z(0), p_nbus_nbLevels_rsc_z(1)
      =>nbLevels_rsc_z(1), p_nbus_nbLevels_rsc_z(0)=>nbLevels_rsc_z(2), 
      p_nbus_Vga_rsc_singleport_data_in(7)=>Vga_rsc_singleport_data_in(0), 
      p_nbus_Vga_rsc_singleport_data_in(6)=>Vga_rsc_singleport_data_in(1), 
      p_nbus_Vga_rsc_singleport_data_in(5)=>Vga_rsc_singleport_data_in(2), 
      p_nbus_Vga_rsc_singleport_data_in(4)=>Vga_rsc_singleport_data_in(3), 
      p_nbus_Vga_rsc_singleport_data_in(3)=>Vga_rsc_singleport_data_in(4), 
      p_nbus_Vga_rsc_singleport_data_in(2)=>Vga_rsc_singleport_data_in(5), 
      p_nbus_Vga_rsc_singleport_data_in(1)=>Vga_rsc_singleport_data_in(6), 
      p_nbus_Vga_rsc_singleport_data_in(0)=>Vga_rsc_singleport_data_in(7), 
      p_nbus_Vga_rsc_singleport_addr(16)=>Vga_rsc_singleport_addr(8), 
      p_nbus_Vga_rsc_singleport_addr(15)=>Vga_rsc_singleport_addr(9), 
      p_nbus_Vga_rsc_singleport_addr(14)=>Vga_rsc_singleport_addr(10), 
      p_nbus_Vga_rsc_singleport_addr(13)=>Vga_rsc_singleport_addr(11), 
      p_nbus_Vga_rsc_singleport_addr(12)=>Vga_rsc_singleport_addr(12), 
      p_nbus_Vga_rsc_singleport_addr(11)=>Vga_rsc_singleport_addr(13), 
      p_nbus_Vga_rsc_singleport_addr(10)=>Vga_rsc_singleport_addr(14), 
      p_nbus_Vga_rsc_singleport_addr(9)=>Vga_rsc_singleport_addr(15), 
      p_nbus_Vga_rsc_singleport_addr(8)=>Vga_rsc_singleport_addr(16), 
      p_nbus_Vga_rsc_singleport_addr(7)=>Vga_rsc_singleport_addr(0), 
      p_nbus_Vga_rsc_singleport_addr(6)=>Vga_rsc_singleport_addr(1), 
      p_nbus_Vga_rsc_singleport_addr(5)=>Vga_rsc_singleport_addr(2), 
      p_nbus_Vga_rsc_singleport_addr(4)=>Vga_rsc_singleport_addr(3), 
      p_nbus_Vga_rsc_singleport_addr(3)=>Vga_rsc_singleport_addr(4), 
      p_nbus_Vga_rsc_singleport_addr(2)=>Vga_rsc_singleport_addr(5), 
      p_nbus_Vga_rsc_singleport_addr(1)=>Vga_rsc_singleport_addr(6), 
      p_nbus_Vga_rsc_singleport_addr(0)=>Vga_rsc_singleport_addr(7), p_rst=>
      rst, p_clk=>clk, p_Vga_rsc_singleport_re=>
      Vga_rsc_singleport_re_EXMPLR55, px1028=>nx4627z1);
end v2 ;

