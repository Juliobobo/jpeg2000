//
// Verilog description for cell Main_Trans_Ond_Opt, 
// Tue 13 Dec 2016 10:29:19 AM CET
//
// Precision RTL Synthesis, 2014a.1_64-bit//


module Main_Trans_Ond_Opt ( start, done, nbLevels_rsc_z, nbLevels_triosy_lz, 
                            Src_triosy_lz, Dst_triosy_lz, Vga_triosy_lz, clk, 
                            rst, Src_rsc_singleport_data_in, 
                            Src_rsc_singleport_addr, Src_rsc_singleport_re, 
                            Src_rsc_singleport_we, Src_rsc_singleport_data_out, 
                            Dst_rsc_singleport_data_in, Dst_rsc_singleport_addr, 
                            Dst_rsc_singleport_re, Dst_rsc_singleport_we, 
                            Dst_rsc_singleport_data_out, 
                            Vga_rsc_singleport_data_in, Vga_rsc_singleport_addr, 
                            Vga_rsc_singleport_re, Vga_rsc_singleport_we, 
                            Vga_rsc_singleport_data_out ) ;

    input start ;
    output done ;
    input [2:0]nbLevels_rsc_z ;
    output nbLevels_triosy_lz ;
    output Src_triosy_lz ;
    output Dst_triosy_lz ;
    output Vga_triosy_lz ;
    input clk ;
    input rst ;
    output [7:0]Src_rsc_singleport_data_in ;
    output [16:0]Src_rsc_singleport_addr ;
    output Src_rsc_singleport_re ;
    output Src_rsc_singleport_we ;
    input [7:0]Src_rsc_singleport_data_out ;
    output [7:0]Dst_rsc_singleport_data_in ;
    output [16:0]Dst_rsc_singleport_addr ;
    output Dst_rsc_singleport_re ;
    output Dst_rsc_singleport_we ;
    input [7:0]Dst_rsc_singleport_data_out ;
    output [7:0]Vga_rsc_singleport_data_in ;
    output [16:0]Vga_rsc_singleport_addr ;
    output Vga_rsc_singleport_re ;
    output Vga_rsc_singleport_we ;
    input [7:0]Vga_rsc_singleport_data_out ;

    wire nx4627z1;



    assign nbLevels_triosy_lz = done ;
    assign Src_triosy_lz = done ;
    assign Dst_triosy_lz = done ;
    assign Vga_triosy_lz = done ;
    VCC ps_vcc (.P (Vga_rsc_singleport_re)) ;
    GND ps_gnd (.G (nx4627z1)) ;
    Main_Trans_Ond_Opt_core_0 Main_Trans_Ond_Opt_core_inst (.p_start (start), .p_Vga_triosy_lz (
                              done), .p_nbus_Src_rsc_singleport_addr ({
                              Src_rsc_singleport_addr[16],
                              Src_rsc_singleport_addr[15],
                              Src_rsc_singleport_addr[14],
                              Src_rsc_singleport_addr[13],
                              Src_rsc_singleport_addr[12],
                              Src_rsc_singleport_addr[11],
                              Src_rsc_singleport_addr[10],
                              Src_rsc_singleport_addr[9],
                              Src_rsc_singleport_addr[8],
                              Src_rsc_singleport_addr[7],
                              Src_rsc_singleport_addr[6],
                              Src_rsc_singleport_addr[5],
                              Src_rsc_singleport_addr[4],
                              Src_rsc_singleport_addr[3],
                              Src_rsc_singleport_addr[2],
                              Src_rsc_singleport_addr[1],
                              Src_rsc_singleport_addr[0]}), .p_nbus_Dst_rsc_singleport_addr (
                              {Dst_rsc_singleport_addr[16],
                              Dst_rsc_singleport_addr[15],
                              Dst_rsc_singleport_addr[14],
                              Dst_rsc_singleport_addr[13],
                              Dst_rsc_singleport_addr[12],
                              Dst_rsc_singleport_addr[11],
                              Dst_rsc_singleport_addr[10],
                              Dst_rsc_singleport_addr[9],
                              Dst_rsc_singleport_addr[8],
                              Dst_rsc_singleport_addr[7],
                              Dst_rsc_singleport_addr[6],
                              Dst_rsc_singleport_addr[5],
                              Dst_rsc_singleport_addr[4],
                              Dst_rsc_singleport_addr[3],
                              Dst_rsc_singleport_addr[2],
                              Dst_rsc_singleport_addr[1],
                              Dst_rsc_singleport_addr[0]}), .p_nbus_Src_rsc_singleport_data_in (
                              {Src_rsc_singleport_data_in[7],
                              Src_rsc_singleport_data_in[6],
                              Src_rsc_singleport_data_in[5],
                              Src_rsc_singleport_data_in[4],
                              Src_rsc_singleport_data_in[3],
                              Src_rsc_singleport_data_in[2],
                              Src_rsc_singleport_data_in[1],
                              Src_rsc_singleport_data_in[0]}), .p_Src_rsc_singleport_re (
                              Src_rsc_singleport_re), .p_Src_rsc_singleport_we (
                              Src_rsc_singleport_we), .p_nbus_Dst_rsc_singleport_data_in (
                              {Dst_rsc_singleport_data_in[7],
                              Dst_rsc_singleport_data_in[6],
                              Dst_rsc_singleport_data_in[5],
                              Dst_rsc_singleport_data_in[4],
                              Dst_rsc_singleport_data_in[3],
                              Dst_rsc_singleport_data_in[2],
                              Dst_rsc_singleport_data_in[1],
                              Dst_rsc_singleport_data_in[0]}), .p_Dst_rsc_singleport_re (
                              Dst_rsc_singleport_re), .p_Dst_rsc_singleport_we (
                              Dst_rsc_singleport_we), .p_Vga_rsc_singleport_we (
                              Vga_rsc_singleport_we), .p_nbus_Src_rsc_singleport_data_out (
                              {Src_rsc_singleport_data_out[0],
                              Src_rsc_singleport_data_out[1],
                              Src_rsc_singleport_data_out[2],
                              Src_rsc_singleport_data_out[3],
                              Src_rsc_singleport_data_out[4],
                              Src_rsc_singleport_data_out[5],
                              Src_rsc_singleport_data_out[6],
                              Src_rsc_singleport_data_out[7]}), .p_nbus_Dst_rsc_singleport_data_out (
                              {Dst_rsc_singleport_data_out[0],
                              Dst_rsc_singleport_data_out[1],
                              Dst_rsc_singleport_data_out[2],
                              Dst_rsc_singleport_data_out[3],
                              Dst_rsc_singleport_data_out[4],
                              Dst_rsc_singleport_data_out[5],
                              Dst_rsc_singleport_data_out[6],
                              Dst_rsc_singleport_data_out[7]}), .p_nbus_nbLevels_rsc_z (
                              {nbLevels_rsc_z[0],nbLevels_rsc_z[1],
                              nbLevels_rsc_z[2]}), .p_nbus_Vga_rsc_singleport_data_in (
                              {Vga_rsc_singleport_data_in[0],
                              Vga_rsc_singleport_data_in[1],
                              Vga_rsc_singleport_data_in[2],
                              Vga_rsc_singleport_data_in[3],
                              Vga_rsc_singleport_data_in[4],
                              Vga_rsc_singleport_data_in[5],
                              Vga_rsc_singleport_data_in[6],
                              Vga_rsc_singleport_data_in[7]}), .p_nbus_Vga_rsc_singleport_addr (
                              {Vga_rsc_singleport_addr[8],
                              Vga_rsc_singleport_addr[9],
                              Vga_rsc_singleport_addr[10],
                              Vga_rsc_singleport_addr[11],
                              Vga_rsc_singleport_addr[12],
                              Vga_rsc_singleport_addr[13],
                              Vga_rsc_singleport_addr[14],
                              Vga_rsc_singleport_addr[15],
                              Vga_rsc_singleport_addr[16],
                              Vga_rsc_singleport_addr[0],
                              Vga_rsc_singleport_addr[1],
                              Vga_rsc_singleport_addr[2],
                              Vga_rsc_singleport_addr[3],
                              Vga_rsc_singleport_addr[4],
                              Vga_rsc_singleport_addr[5],
                              Vga_rsc_singleport_addr[6],
                              Vga_rsc_singleport_addr[7]}), .p_rst (rst), .p_clk (
                              clk), .p_Vga_rsc_singleport_re (
                              Vga_rsc_singleport_re), .px1028 (nx4627z1)) ;
endmodule


module Main_Trans_Ond_Opt_core_0 ( p_start, p_Vga_triosy_lz, 
                                   p_nbus_Src_rsc_singleport_addr, 
                                   p_nbus_Dst_rsc_singleport_addr, 
                                   p_nbus_Src_rsc_singleport_data_in, 
                                   p_Src_rsc_singleport_re, 
                                   p_Src_rsc_singleport_we, 
                                   p_nbus_Dst_rsc_singleport_data_in, 
                                   p_Dst_rsc_singleport_re, 
                                   p_Dst_rsc_singleport_we, 
                                   p_Vga_rsc_singleport_we, 
                                   p_nbus_Src_rsc_singleport_data_out, 
                                   p_nbus_Dst_rsc_singleport_data_out, 
                                   p_nbus_nbLevels_rsc_z, 
                                   p_nbus_Vga_rsc_singleport_data_in, 
                                   p_nbus_Vga_rsc_singleport_addr, p_rst, p_clk, 
                                   p_Vga_rsc_singleport_re, px1028 ) ;

    input p_start ;
    output p_Vga_triosy_lz ;
    output [16:0]p_nbus_Src_rsc_singleport_addr ;
    output [16:0]p_nbus_Dst_rsc_singleport_addr ;
    output [7:0]p_nbus_Src_rsc_singleport_data_in ;
    output p_Src_rsc_singleport_re ;
    output p_Src_rsc_singleport_we ;
    output [7:0]p_nbus_Dst_rsc_singleport_data_in ;
    output p_Dst_rsc_singleport_re ;
    output p_Dst_rsc_singleport_we ;
    output p_Vga_rsc_singleport_we ;
    input [7:0]p_nbus_Src_rsc_singleport_data_out ;
    input [7:0]p_nbus_Dst_rsc_singleport_data_out ;
    input [2:0]p_nbus_nbLevels_rsc_z ;
    output [7:0]p_nbus_Vga_rsc_singleport_data_in ;
    output [16:0]p_nbus_Vga_rsc_singleport_addr ;
    input p_rst ;
    input p_clk ;
    input p_Vga_rsc_singleport_re ;
    input px1028 ;

    wire nx27124z8, nx27124z10, nx27124z13, nx28310z3, nx57164z4, nx12188z35, 
         nx39518z4, nx39519z5, nx50040z3, nx39520z5, nx12188z38, nx50038z3, 
         nx32631z2, nx50040z5, nx32631z3, nx9010z2, nx12188z180, nx37767z7, 
         nx12188z46, nx12188z63, nx12188z150, nx12188z151, nx12188z152, 
         nx28307z3, nx28309z3, nx28309z5, nx28311z5, nx28311z3, nx50045z2, 
         nx39517z5, nx39519z6, nx39520z4, nx50040z4, nx50039z3, nx50039z4, 
         nx27120z4, nx27122z3, nx27123z3, nx27124z12, nx27124z4, nx39519z7, 
         nx39519z3, nx39517z9, nx39517z6, nx39517z4, nx27124z11, nx27124z5, 
         nx12188z165, nx27124z9, nx27124z7, nx27124z6, nx12188z179, nx12188z181, 
         nx12188z182, nx12188z183, nx12188z184, nx12188z185, nx12188z186, 
         nx12188z187, nx12188z188;
    wire \fsm_output(2)  , \fsm_output(9)  , \fsm_output(11)  ;
    wire \fsm_output(13)  ;
    wire \fsm_output(15)  ;
    wire \fsm_output(16)  ;
    wire \fsm_output(21)  ;
    wire \fsm_output(23)  ;
    wire \fsm_output(25)  , \fsm_output(30)  ;
    wire \fsm_output(33)  ;
    wire \fsm_output(38)  , 
         \Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)  ;
    wire Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2;
    wire 
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
         ;
    wire nx37767z6, nx22393z3, nx22392z3, nx22391z3, nx22390z3, nx22389z3, 
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
         nx12188z136, nx48317z1, nx12188z133, nx21432z1, nx16297z1;
    wire nx50039z8;
    wire nx11162z1;
    wire nx50040z9;
    wire nx59509z1;
    wire nx39520z7;
    wire nx64644z1;
    wire nx39517z8;
    wire nx4243z2, nx12188z25, nx33923z1, nx28788z1, nx23653z1, nx12188z84, 
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
         nx12188z40, nx61846z2, nx12188z36, nx62843z1, nx61846z1, nx12188z41, 
         nx40831z1, nx12188z90, nx41828z1, nx12188z91, nx1249z1, nx12188z79, 
         nx2246z2, nx12188z6, nx3243z1, nx12188z8, nx4240z1, nx12188z11, 
         nx5237z1, nx12188z34, nx6234z1, nx12188z17, nx7231z1, nx12188z20, 
         nx8228z1, nx2246z1, nx12188z23, nx8036z1, nx7039z1, nx6042z1, nx5045z1, 
         nx4048z1, nx3051z1, nx2054z1, nx12188z39, nx1057z2, nx12188z37, nx60z1, 
         nx1057z1, nx12188z42, nx53015z2;
    wire nx12188z27;
    wire nx54012z1;
    wire nx39517z10;
    wire nx55009z1;
    wire nx39518z5;
    wire nx56006z1;
    wire nx39519z8;
    wire nx57003z1;
    wire nx39520z6;
    wire nx58000z1;
    wire nx50040z8;
    wire nx58997z1, nx53015z1, nx21806z1, nx20809z1, nx19812z1, nx18815z1, 
         nx17818z1, nx16821z1, nx15824z2;
    wire nx12188z18;
    wire nx14827z1, nx15824z1;
    wire nx12188z21;
    wire nx37767z3, nx22393z5, nx22392z5, nx22391z5, nx22390z5, nx22389z5, 
         nx22388z5, nx22387z5, nx9498z1, nx12188z77, nx8501z1, nx12188z76, 
         nx7504z1, nx12188z75, nx6507z1, nx12188z74, nx5510z1, nx12188z73, 
         nx4513z1, nx12188z72, nx3516z1, nx12188z71, nx2519z1, nx12188z70, 
         nx63082z1, nx12188z178, nx62085z1, nx12188z177, nx61088z1, nx12188z176, 
         nx60091z1, nx12188z175, nx59094z1, nx12188z174, nx58097z1, nx12188z173, 
         nx57100z1, nx12188z172, nx56103z1, nx12188z171, nx36142z1, nx12188z124, 
         nx37139z1, nx12188z122, nx38136z1, nx12188z120, nx39133z1, nx12188z118, 
         nx40130z1, nx12188z116, nx41127z3, nx12188z114, nx42124z1, nx12188z112, 
         nx43121z1, nx12188z110, nx2972z1, nx12188z68, nx1975z1, nx12188z67, 
         nx978z1, nx12188z66, nx65517z1, nx12188z65, nx64520z1, nx12188z64, 
         nx63523z2, nx12188z1, nx62526z1, nx61529z1, nx63523z1, nx59915z2, 
         nx60912z1, nx61909z1, nx62906z1, nx63903z1, nx64900z1, nx59915z1, 
         nx14906z1, nx13909z1, nx12912z1, nx11915z1, nx10918z1, nx9921z1, 
         nx8924z2, nx8924z1, nx49828z1, nx12188z61, nx50825z1, nx12188z60, 
         nx51822z1, nx12188z59, nx52819z1, nx12188z58, nx53816z1, nx12188z57, 
         nx54813z1, nx12188z56, nx55810z1, nx12188z55, nx56807z1, nx12188z54, 
         nx25173z1, nx12188z107, nx24176z1, nx12188z105, nx23179z1, nx12188z102, 
         nx22182z1, nx12188z100, nx21185z1, nx12188z99, nx20188z1, nx12188z97, 
         nx19191z1, nx12188z95, nx18194z1, nx12188z92, nx8403z1, nx12188z164, 
         nx9400z1, nx12188z163, nx10397z1, nx12188z103, nx11394z1, nx12188z101, 
         nx12391z1, nx12188z160, nx13388z1, nx12188z159, nx14385z1, nx12188z158, 
         nx15382z1, nx12188z93, nx32648z1, nx12188z52, nx33645z1, nx12188z51, 
         nx34642z1, nx12188z50, nx35639z1, nx12188z49, nx36636z1, nx12188z48, 
         nx37633z1, nx12188z47, nx38630z1, nx12188z45, nx39627z2, nx39627z1, 
         nx12188z44, nx51911z1, nx12188z85;
    wire nx50040z7;
    wire nx12188z153, nx12188z86, nx12188z132, nx12188z131, nx12188z130, 
         nx12188z129, nx12188z128, nx12188z127, nx12188z126, nx12188z125, 
         nx57765z1, Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0, nx45428z1, 
         Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1;
    wire nx30297z1, exit_passe_y_sva;
    wire [16:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp;
    wire [15:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm;
    wire [7:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp;
    wire nx2454z1;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp;
    wire exit_passe_y_1_sva;
    wire [15:0]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm;
    wire [7:0]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp;
    wire [14:6]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva;
    wire nx39610z1;
    wire [7:0]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp;
    wire nx38613z1, nx37616z1, nx36619z1, nx35622z1, nx34625z1, nx33628z1, 
         nx32631z1, nx7264z1;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1;
    wire nx8261z1, nx9258z1, nx10255z1, nx11252z1, nx12249z1, nx13246z1, 
         nx14243z1, nx15240z2, nx15240z1;
    wire [1:0]Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7;
    wire nx12188z108;
    wire [1:0]Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6;
    wire nx11735z1, nx31484z1;
    wire [1:0]Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7;
    wire nx30487z1, nx60014z1;
    wire [1:0]Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5;
    wire nx47320z1, nx30894z1, \reg_passe_y_1_acc_44_sdt_tmp_6(1)  ;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2;
    wire nx50039z7;
    wire nx27120z2, nx27119z1, nx27120z3, nx27120z1, nx27121z3, nx27121z1, 
         nx27122z4, nx27122z1, nx27123z4, nx27123z1, nx27124z3, nx27124z1, 
         nx27125z3, nx278z1, nx277z1, nx276z2, nx276z1, nx275z2, nx275z1, 
         nx274z2, nx274z1, nx273z2, nx273z1, nx272z1;
    wire nx50039z6;
    wire [7:1]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm;
    wire nx51874z2;
    wire nx50040z6;
    wire nx51874z1, nx51875z2;
    wire nx51876z3;
    wire nx51875z1, nx51876z2;
    wire nx51877z3;
    wire nx51876z1, nx51877z2;
    wire nx57253z2;
    wire nx51877z1, nx57253z3;
    wire nx39517z7;
    wire nx57253z1, nx57254z1;
    wire nx12188z26;
    wire nx44612z2, nx15577z3, nx12188z31, nx44612z1, nx44612z3, nx16726z2;
    wire nx50039z5;
    wire nx50037z2, nx12188z30, nx50038z2, nx39523z1, nx50037z1, nx12188z29, 
         nx50039z2, nx39522z1, nx50038z1, nx12188z28, nx50040z2, nx39521z1, 
         nx50039z1, nx12188z149, nx39520z3, nx39520z2, nx50040z1, nx12188z148, 
         nx39519z4, nx39519z2, nx39520z1, nx12188z147, nx39518z3, nx39518z2, 
         nx39519z1, nx39517z3, nx39517z1, nx39518z1, nx50045z1;
    wire Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_z_out_17;
    wire nx57161z2, nx57161z1, nx57162z2, nx57163z2, nx57162z1, nx57163z3, 
         nx57164z2, nx57163z1, nx57164z3, nx57165z2, nx57164z1, nx57165z3, 
         nx57166z2, nx57165z1, nx57166z3, nx57167z2, nx57166z1, nx57167z3, 
         nx57168z1, nx57167z1, nx57168z2, nx28313z2, nx28312z2, nx28313z1, 
         nx28312z3, nx28311z2, nx28312z1, nx28311z4, nx28310z2, nx28311z1, 
         nx28310z4, nx28309z2, nx28310z1, nx28309z4, nx28308z2, nx28309z1, 
         nx28308z3, nx28307z1, nx28308z1, nx28307z2, nx25232z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_11;
    wire nx25232z3, nx25233z2, nx25232z1, nx25233z3, nx25234z2, nx25233z1, 
         nx25234z3, nx25235z2, nx25234z1, nx25235z3, nx25236z2, nx25235z1, 
         nx25236z3, nx25237z2, nx25236z1, nx25237z3, nx25238z2, nx25237z1, 
         nx25238z3, nx25239z2, nx25239z1, nx25238z1, nx52942z1;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_10;
    wire nx7219z2, nx52941z2, nx7219z1, nx52941z3, nx52940z2, nx52941z1, 
         nx52940z3, nx52939z2, nx52940z1, nx52939z3, nx52938z2, nx52939z1, 
         nx52938z3, nx52937z2, nx52938z1, nx52937z3, nx52936z2, nx52937z1, 
         nx52936z3, nx52935z2, nx52935z1, nx52936z1, nx26275z3, nx15382z2, 
         nx33885z4, nx10448z1, nx33884z4, nx10449z1, nx33883z4, nx10450z1, 
         nx33882z4, nx10451z1, nx33881z4, nx10452z1, nx33880z4, nx10453z1, 
         nx33879z3, nx10454z1, nx3056z1, nx12188z78, \z_out_14(8)  , nx3057z2, 
         nx2319z1, \z_out_14(7)  , nx3058z2, nx3057z1, \z_out_14(6)  , nx3059z2, 
         nx3058z1, \z_out_14(5)  , nx3060z2, nx3059z1, \z_out_14(4)  , nx3061z2, 
         nx3060z1, \z_out_14(3)  , nx3062z2, nx3061z1, \z_out_14(2)  , nx3063z1, 
         nx3062z1, \z_out_14(1)  , nx15577z2, nx15578z2, nx15577z1, nx15578z3, 
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
         nx18374z2, nx18374z1, nx18375z1, nx22387z4;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_9;
    wire nx22387z2, nx22387z1, nx22388z2, nx22388z1, nx22389z2, nx22389z1, 
         nx22390z2, nx22390z1, nx22391z2, nx22391z1, nx22392z2, nx22392z1, 
         nx22393z2, nx37767z5, nx22393z1, nx16626z3, nx16626z2, nx12188z156, 
         nx16625z3, nx16625z2, nx16626z1, nx16624z2, nx12188z69, nx16625z1, 
         nx16623z3, nx16623z2, nx16624z1, nx16622z3, nx16622z2, nx16623z1, 
         nx16621z3, nx16621z2, nx16622z1, nx16620z3, nx16620z2, nx16621z1, 
         nx16619z1, \image_copy_1_y_1_sva_1(0)  , nx16620z1, nx55217z3, 
         nx55217z2, nx9010z3, nx55218z3, nx55218z2, nx55217z1, nx55219z2, 
         nx12188z53, nx55218z1, nx55220z3, nx55220z2, nx55219z1, nx55221z3, 
         nx55221z2, nx55220z1, nx55222z3, nx55222z2, nx55221z1, nx55223z3, 
         nx55223z2, nx55222z1, nx55224z1, \image_copy_1_x_1_sva_1(0)  , 
         nx55223z1, nx44433z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_6;
    wire nx44433z1, nx39057z2, nx39057z1, nx39056z2, nx39056z1, nx39055z2, 
         nx39055z1, nx39054z2, nx39054z1, nx39053z2, nx39053z1, nx39052z2, 
         nx39052z1, nx39051z1, nx26275z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_7;
    wire nx33885z2, nx26275z1, nx33885z3, nx33884z2, nx33885z1, nx33884z3, 
         nx33883z2, nx33884z1, nx33883z3, nx33882z2, nx33883z1, nx33882z3, 
         nx33881z2, nx33882z1, nx33881z3, nx33880z2, nx33881z1, nx33880z3, 
         nx33879z1, nx33880z1, nx33879z2, nx31447z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_8;
    wire nx28713z2, nx31447z1, nx28713z3, nx28712z2, nx28713z1, nx28712z3, 
         nx28711z2, nx28712z1, nx28711z3, nx28710z2, nx28711z1, nx28710z3, 
         nx28709z2, nx28710z1, nx28709z3, nx28708z2, nx28709z1, nx28708z3, 
         nx28707z1, nx28708z1, nx28707z2, nx24129z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_5;
    wire nx46783z2, nx24129z1, nx46783z3, nx46784z2, nx46783z1, nx46784z3, 
         nx46785z2, nx46784z1, nx46785z3, nx46786z2, nx46785z1, nx46786z3, 
         nx46787z2, nx46786z1, nx46787z3, nx46788z2, nx46787z1, nx46788z3, 
         nx46789z1, nx46788z1, nx46789z2, nx2319z2;
    wire [8:1]Main_Trans_Ond_Opt_core_inst_z_out_3;
    wire nx22388z4, nx33786z1, nx3057z3, nx22389z4, nx39162z1, nx3058z3, 
         nx22390z4, nx39163z1, nx3059z3, nx22391z4, nx39164z1, nx3060z3, 
         nx22392z4, nx39165z1, nx3061z3, nx22393z4, nx39166z1, nx3062z3, 
         nx37767z2, nx39167z1, nx3063z2;
    wire [9:1]Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm;
    wire \passe_y_1_acc_7_itm_7n1s2(14)  , nx57032z1, 
         \passe_y_1_acc_7_itm_7n1s2(13)  , nx41956z1, 
         \passe_y_1_acc_7_itm_7n1s2(12)  , nx41957z1, 
         \passe_y_1_acc_7_itm_7n1s2(11)  , nx41958z1, 
         \passe_y_1_acc_7_itm_7n1s2(10)  , nx41959z1, 
         \passe_y_1_acc_7_itm_7n1s2(9)  , nx32701z1, 
         \passe_y_1_acc_7_itm_7n1s2(8)  , nx32700z1, 
         \passe_y_1_acc_7_itm_7n1s2(7)  , nx32699z1, nx32698z2, 
         \passe_y_1_acc_7_itm_7n1s2(6)  , nx32697z2, nx39517z2, nx32698z1, 
         nx32696z2, nx56440z3, nx32697z1, nx32695z2, nx56439z3, nx32696z1, 
         nx32694z2, nx56438z3, nx32695z1, nx32693z2, nx56437z3, nx32694z1, 
         nx32692z1, nx56436z2, nx32693z1;
    wire [8:0]Main_Trans_Ond_Opt_core_inst_z_out_2;
    wire [16:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2;
    wire nx8788z1, nx23864z1, nx23863z1, nx23862z1, nx23861z1, nx23860z1, 
         nx23859z1, nx24881z1;
    wire [1:0]Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0;
    wire nx24882z1, nx24883z2, nx24883z1, nx24884z2, nx56441z3, nx24884z1, 
         nx24885z2, nx56440z4, nx24885z1, nx24886z2, nx56439z4, nx24886z1, 
         nx24887z2, nx56438z4, nx24887z1, nx24888z2, nx56437z4, nx24888z1, 
         nx24889z2, nx56436z3, nx24889z1, nx24890z1;
    wire [7:0]Main_Trans_Ond_Opt_core_inst_z_out_15;
    wire [15:0]Main_Trans_Ond_Opt_core_inst_z_out_1;
    wire nx22777z1, nx37853z1, nx37852z1, nx37851z1, nx37850z1, nx37849z1, 
         nx56445z1, nx56443z2, nx56444z1, nx56443z3, nx56442z2, nx56443z1, 
         nx56442z3, nx56441z2, nx56442z1, nx56441z4, nx56440z2, nx56441z1, 
         nx56440z5, nx56439z2, nx56440z1, nx56439z5, nx56438z2, nx56439z1, 
         nx56438z5, nx56437z2, nx56438z1, nx56437z5, nx56436z1, nx56437z1, 
         nx56436z4, nx12188z2;
    wire [7:0]Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1;
    wire nx19032z1, nx12188z62, nx27121z2, nx41128z1, nx41127z2, nx27122z2, 
         nx41127z1, nx41126z2, nx27123z2, nx41126z1, nx41125z2, nx27124z2, 
         nx41125z1, nx41124z2, nx27125z2, nx41124z1, nx41123z2, nx27125z1, 
         nx41123z1, nx41122z1, nx16349z1, nx64, nx66, nx68, nx70, nx72, nx74, 
         nx76, nx78, nx80;



    assign p_nbus_Vga_rsc_singleport_data_in[7] = 
    p_nbus_Dst_rsc_singleport_data_out[7] ;
    assign p_nbus_Vga_rsc_singleport_data_in[6] = 
    p_nbus_Dst_rsc_singleport_data_out[6] ;
    assign p_nbus_Vga_rsc_singleport_data_in[5] = 
    p_nbus_Dst_rsc_singleport_data_out[5] ;
    assign p_nbus_Vga_rsc_singleport_data_in[4] = 
    p_nbus_Dst_rsc_singleport_data_out[4] ;
    assign p_nbus_Vga_rsc_singleport_data_in[3] = 
    p_nbus_Dst_rsc_singleport_data_out[3] ;
    assign p_nbus_Vga_rsc_singleport_data_in[2] = 
    p_nbus_Dst_rsc_singleport_data_out[2] ;
    assign p_nbus_Vga_rsc_singleport_data_in[1] = 
    p_nbus_Dst_rsc_singleport_data_out[1] ;
    assign p_nbus_Vga_rsc_singleport_data_in[0] = 
    p_nbus_Dst_rsc_singleport_data_out[0] ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_0 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[0]), .CI (px1028), .LI (
          nx41122z1)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_1 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[1]), .CI (nx41123z1), 
          .LI (nx41123z2)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_2 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[2]), .CI (nx41124z1), 
          .LI (nx41124z2)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_3 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[3]), .CI (nx41125z1), 
          .LI (nx41125z2)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_4 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[4]), .CI (nx41126z1), 
          .LI (nx41126z2)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[5]), .CI (nx41127z1), 
          .LI (nx41127z2)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_6 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[6]), .CI (nx41128z1), 
          .LI (nx12188z62)) ;
    XORCY copy_y_1_acc_psp_1_add8_0_xorcy_7 (.O (
          Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[7]), .CI (nx19032z1), 
          .LI (nx12188z2)) ;
    XORCY z_out_1_add16_1_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[0])
          , .CI (px1028), .LI (nx56436z4)) ;
    XORCY z_out_1_add16_1_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[1])
          , .CI (nx56437z1), .LI (nx56437z5)) ;
    XORCY z_out_1_add16_1_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[2])
          , .CI (nx56438z1), .LI (nx56438z5)) ;
    XORCY z_out_1_add16_1_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[3])
          , .CI (nx56439z1), .LI (nx56439z5)) ;
    XORCY z_out_1_add16_1_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[4])
          , .CI (nx56440z1), .LI (nx56440z5)) ;
    XORCY z_out_1_add16_1_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[5])
          , .CI (nx56441z1), .LI (nx56441z4)) ;
    XORCY z_out_1_add16_1_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[6])
          , .CI (nx56442z1), .LI (nx56442z3)) ;
    XORCY z_out_1_add16_1_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[7])
          , .CI (nx56443z1), .LI (nx56443z3)) ;
    XORCY z_out_1_add16_1_xorcy_8 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[8])
          , .CI (nx56444z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[0])) ;
    XORCY z_out_1_add16_1_xorcy_9 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[9])
          , .CI (nx56445z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[1])) ;
    XORCY z_out_1_add16_1_xorcy_10 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[10]
          ), .CI (nx37849z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[2])) ;
    XORCY z_out_1_add16_1_xorcy_11 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[11]
          ), .CI (nx37850z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[3])) ;
    XORCY z_out_1_add16_1_xorcy_12 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[12]
          ), .CI (nx37851z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[4])) ;
    XORCY z_out_1_add16_1_xorcy_13 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[13]
          ), .CI (nx37852z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[5])) ;
    XORCY z_out_1_add16_1_xorcy_14 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[14]
          ), .CI (nx37853z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[6])) ;
    XORCY z_out_1_add16_1_xorcy_15 (.O (Main_Trans_Ond_Opt_core_inst_z_out_1[15]
          ), .CI (nx22777z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_15[7])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_0 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[0]), .CI (px1028
          ), .LI (nx24890z1)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_1 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[1]), .CI (
          nx24889z1), .LI (nx24889z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_2 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[2]), .CI (
          nx24888z1), .LI (nx24888z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_3 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[3]), .CI (
          nx24887z1), .LI (nx24887z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_4 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[4]), .CI (
          nx24886z1), .LI (nx24886z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[5]), .CI (
          nx24885z1), .LI (nx24885z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_6 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[6]), .CI (
          nx24884z1), .LI (nx24884z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_7 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[7]), .CI (
          nx24883z1), .LI (nx24883z2)) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_8 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[8]), .CI (
          nx24882z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[0])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_9 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[9]), .CI (
          nx24881z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[1])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_10 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[10]), .CI (
          nx23859z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[2])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_11 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[11]), .CI (
          nx23860z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[3])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_12 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[12]), .CI (
          nx23861z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[4])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_13 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[13]), .CI (
          nx23862z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[5])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_14 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[14]), .CI (
          nx23863z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[6])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_15 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[15]), .CI (
          nx23864z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[7])) ;
    XORCY passe_y_acc_13_itm_add17_7i1_xorcy_16 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[16]), .CI (
          nx8788z1), .LI (Main_Trans_Ond_Opt_core_inst_z_out_2[8])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_6 (.O (
          \passe_y_1_acc_7_itm_7n1s2(6)  ), .CI (nx32698z1), .LI (nx32698z2)) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_7 (.O (
          \passe_y_1_acc_7_itm_7n1s2(7)  ), .CI (nx32699z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_8 (.O (
          \passe_y_1_acc_7_itm_7n1s2(8)  ), .CI (nx32700z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_9 (.O (
          \passe_y_1_acc_7_itm_7n1s2(9)  ), .CI (nx32701z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_10 (.O (
          \passe_y_1_acc_7_itm_7n1s2(10)  ), .CI (nx41959z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_11 (.O (
          \passe_y_1_acc_7_itm_7n1s2(11)  ), .CI (nx41958z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_12 (.O (
          \passe_y_1_acc_7_itm_7n1s2(12)  ), .CI (nx41957z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_13 (.O (
          \passe_y_1_acc_7_itm_7n1s2(13)  ), .CI (nx41956z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8])) ;
    XORCY passe_y_1_acc_7_itm_add15_7i2_xorcy_14 (.O (
          \passe_y_1_acc_7_itm_7n1s2(14)  ), .CI (nx57032z1), .LI (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[9])) ;
    XORCY z_out_3_add8_2_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[1]), 
          .CI (p_Vga_rsc_singleport_re), .LI (nx80)) ;
    XORCY z_out_3_add8_2_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[2]), 
          .CI (nx39167z1), .LI (nx78)) ;
    XORCY z_out_3_add8_2_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[3]), 
          .CI (nx39166z1), .LI (nx76)) ;
    XORCY z_out_3_add8_2_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[4]), 
          .CI (nx39165z1), .LI (nx74)) ;
    XORCY z_out_3_add8_2_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[5]), 
          .CI (nx39164z1), .LI (nx72)) ;
    XORCY z_out_3_add8_2_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[6]), 
          .CI (nx39163z1), .LI (nx70)) ;
    XORCY z_out_3_add8_2_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[7]), 
          .CI (nx39162z1), .LI (nx68)) ;
    XORCY z_out_3_add8_2_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_3[8]), 
          .CI (nx33786z1), .LI (nx2319z2)) ;
    XORCY z_out_5_add8_3_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[1]), 
          .CI (p_Vga_rsc_singleport_re), .LI (nx46789z2)) ;
    XORCY z_out_5_add8_3_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[2]), 
          .CI (nx46788z1), .LI (nx46788z3)) ;
    XORCY z_out_5_add8_3_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[3]), 
          .CI (nx46787z1), .LI (nx46787z3)) ;
    XORCY z_out_5_add8_3_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[4]), 
          .CI (nx46786z1), .LI (nx46786z3)) ;
    XORCY z_out_5_add8_3_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[5]), 
          .CI (nx46785z1), .LI (nx46785z3)) ;
    XORCY z_out_5_add8_3_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[6]), 
          .CI (nx46784z1), .LI (nx46784z3)) ;
    XORCY z_out_5_add8_3_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[7]), 
          .CI (nx46783z1), .LI (nx46783z3)) ;
    XORCY z_out_5_add8_3_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_5[8]), 
          .CI (nx24129z1), .LI (nx24129z2)) ;
    XORCY z_out_8_add8_4_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[1]), 
          .CI (p_Vga_rsc_singleport_re), .LI (nx66)) ;
    XORCY z_out_8_add8_4_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[2]), 
          .CI (nx28708z1), .LI (nx28708z3)) ;
    XORCY z_out_8_add8_4_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[3]), 
          .CI (nx28709z1), .LI (nx28709z3)) ;
    XORCY z_out_8_add8_4_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[4]), 
          .CI (nx28710z1), .LI (nx28710z3)) ;
    XORCY z_out_8_add8_4_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[5]), 
          .CI (nx28711z1), .LI (nx28711z3)) ;
    XORCY z_out_8_add8_4_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[6]), 
          .CI (nx28712z1), .LI (nx28712z3)) ;
    XORCY z_out_8_add8_4_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[7]), 
          .CI (nx28713z1), .LI (nx28713z3)) ;
    XORCY z_out_8_add8_4_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_8[8]), 
          .CI (nx31447z1), .LI (nx31447z2)) ;
    XORCY z_out_7_add8_5_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[1]), 
          .CI (p_Vga_rsc_singleport_re), .LI (nx33879z2)) ;
    XORCY z_out_7_add8_5_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[2]), 
          .CI (nx33880z1), .LI (nx33880z3)) ;
    XORCY z_out_7_add8_5_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[3]), 
          .CI (nx33881z1), .LI (nx33881z3)) ;
    XORCY z_out_7_add8_5_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[4]), 
          .CI (nx33882z1), .LI (nx33882z3)) ;
    XORCY z_out_7_add8_5_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[5]), 
          .CI (nx33883z1), .LI (nx33883z3)) ;
    XORCY z_out_7_add8_5_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[6]), 
          .CI (nx33884z1), .LI (nx33884z3)) ;
    XORCY z_out_7_add8_5_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[7]), 
          .CI (nx33885z1), .LI (nx33885z3)) ;
    XORCY z_out_7_add8_5_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_7[8]), 
          .CI (nx26275z1), .LI (nx26275z2)) ;
    XORCY z_out_6_add8_6_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[1]), 
          .CI (p_Vga_rsc_singleport_re), .LI (nx39051z1)) ;
    XORCY z_out_6_add8_6_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[2]), 
          .CI (nx39052z1), .LI (nx39052z2)) ;
    XORCY z_out_6_add8_6_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[3]), 
          .CI (nx39053z1), .LI (nx39053z2)) ;
    XORCY z_out_6_add8_6_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[4]), 
          .CI (nx39054z1), .LI (nx39054z2)) ;
    XORCY z_out_6_add8_6_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[5]), 
          .CI (nx39055z1), .LI (nx39055z2)) ;
    XORCY z_out_6_add8_6_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[6]), 
          .CI (nx39056z1), .LI (nx39056z2)) ;
    XORCY z_out_6_add8_6_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[7]), 
          .CI (nx39057z1), .LI (nx39057z2)) ;
    XORCY z_out_6_add8_6_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_6[8]), 
          .CI (nx44433z1), .LI (nx44433z2)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_7 (.O (nx9010z3), .CI (nx55217z1), .DI (
          nx55217z2), .S (nx55217z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_7 (.O (nx12188z156), .CI (nx16626z1)
          , .DI (nx16626z2), .S (nx16626z3)) ;
    XORCY z_out_9_add8_16_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[1])
          , .CI (nx22393z1), .LI (nx22393z2)) ;
    XORCY z_out_9_add8_16_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[2])
          , .CI (nx22392z1), .LI (nx22392z2)) ;
    XORCY z_out_9_add8_16_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[3])
          , .CI (nx22391z1), .LI (nx22391z2)) ;
    XORCY z_out_9_add8_16_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[4])
          , .CI (nx22390z1), .LI (nx22390z2)) ;
    XORCY z_out_9_add8_16_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[5])
          , .CI (nx22389z1), .LI (nx22389z2)) ;
    XORCY z_out_9_add8_16_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[6])
          , .CI (nx22388z1), .LI (nx22388z2)) ;
    XORCY z_out_9_add8_16_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[7])
          , .CI (nx22387z1), .LI (nx22387z2)) ;
    MUXCY z_out_9_add8_16_muxcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_9[8])
          , .CI (nx22387z1), .DI (nx22387z4), .S (nx22387z2)) ;
    MUXCY z_out_12_add8_17_muxcy_7 (.O (nx18194z2), .CI (nx18381z1), .DI (
          nx18381z2), .S (nx18381z3)) ;
    MUXCY z_out_22_add7_18_muxcy_6 (.O (nx51265z1), .CI (nx55083z1), .DI (
          mux_109_nl), .S (nx55083z2)) ;
    XORCY z_out_2_add8_21_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[0])
          , .CI (px1028), .LI (nx15584z2)) ;
    XORCY z_out_2_add8_21_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[1])
          , .CI (nx15583z1), .LI (nx15583z3)) ;
    XORCY z_out_2_add8_21_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[2])
          , .CI (nx15582z1), .LI (nx15582z3)) ;
    XORCY z_out_2_add8_21_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[3])
          , .CI (nx15581z1), .LI (nx15581z3)) ;
    XORCY z_out_2_add8_21_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[4])
          , .CI (nx15580z1), .LI (nx15580z3)) ;
    XORCY z_out_2_add8_21_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[5])
          , .CI (nx15579z1), .LI (nx15579z3)) ;
    XORCY z_out_2_add8_21_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[6])
          , .CI (nx15578z1), .LI (nx15578z3)) ;
    XORCY z_out_2_add8_21_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[7])
          , .CI (nx15577z1), .LI (nx15577z2)) ;
    MUXCY z_out_2_add8_21_muxcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_2[8])
          , .CI (nx15577z1), .DI (nx15577z2), .S (nx15577z2)) ;
    XORCY z_out_14_add8_23_xorcy_0 (.O (\z_out_14(1)  ), .CI (
          p_Vga_rsc_singleport_re), .LI (nx3063z2)) ;
    XORCY z_out_14_add8_23_xorcy_1 (.O (\z_out_14(2)  ), .CI (nx3062z1), .LI (
          nx3062z3)) ;
    XORCY z_out_14_add8_23_xorcy_2 (.O (\z_out_14(3)  ), .CI (nx3061z1), .LI (
          nx3061z3)) ;
    XORCY z_out_14_add8_23_xorcy_3 (.O (\z_out_14(4)  ), .CI (nx3060z1), .LI (
          nx3060z3)) ;
    XORCY z_out_14_add8_23_xorcy_4 (.O (\z_out_14(5)  ), .CI (nx3059z1), .LI (
          nx3059z3)) ;
    XORCY z_out_14_add8_23_xorcy_5 (.O (\z_out_14(6)  ), .CI (nx3058z1), .LI (
          nx3058z3)) ;
    XORCY z_out_14_add8_23_xorcy_6 (.O (\z_out_14(7)  ), .CI (nx3057z1), .LI (
          nx3057z3)) ;
    XORCY z_out_14_add8_23_xorcy_7 (.O (\z_out_14(8)  ), .CI (nx2319z1), .LI (
          nx2319z2)) ;
    MUXCY z_out_14_add8_23_muxcy_7 (.O (nx12188z78), .CI (nx2319z1), .DI (
          nx3056z1), .S (nx2319z2)) ;
    MUXCY z_out_13_add8_24_muxcy_7 (.O (nx15382z2), .CI (nx10448z1), .DI (
          nx26275z3), .S (nx64)) ;
    XORCY z_out_10_add8_25_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[1]
          ), .CI (nx52936z1), .LI (nx52936z3)) ;
    XORCY z_out_10_add8_25_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[2]
          ), .CI (nx52937z1), .LI (nx52937z3)) ;
    XORCY z_out_10_add8_25_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[3]
          ), .CI (nx52938z1), .LI (nx52938z3)) ;
    XORCY z_out_10_add8_25_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[4]
          ), .CI (nx52939z1), .LI (nx52939z3)) ;
    XORCY z_out_10_add8_25_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[5]
          ), .CI (nx52940z1), .LI (nx52940z3)) ;
    XORCY z_out_10_add8_25_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[6]
          ), .CI (nx52941z1), .LI (nx52941z3)) ;
    XORCY z_out_10_add8_25_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[7]
          ), .CI (nx7219z1), .LI (nx7219z2)) ;
    MUXCY z_out_10_add8_25_muxcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_10[8]
          ), .CI (nx7219z1), .DI (nx52942z1), .S (nx7219z2)) ;
    XORCY z_out_11_add8_26_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[1]
          ), .CI (nx25238z1), .LI (nx25238z3)) ;
    XORCY z_out_11_add8_26_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[2]
          ), .CI (nx25237z1), .LI (nx25237z3)) ;
    XORCY z_out_11_add8_26_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[3]
          ), .CI (nx25236z1), .LI (nx25236z3)) ;
    XORCY z_out_11_add8_26_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[4]
          ), .CI (nx25235z1), .LI (nx25235z3)) ;
    XORCY z_out_11_add8_26_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[5]
          ), .CI (nx25234z1), .LI (nx25234z3)) ;
    XORCY z_out_11_add8_26_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[6]
          ), .CI (nx25233z1), .LI (nx25233z3)) ;
    XORCY z_out_11_add8_26_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[7]
          ), .CI (nx25232z1), .LI (nx25232z3)) ;
    MUXCY z_out_11_add8_26_muxcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_11[8]
          ), .CI (nx25232z1), .DI (nx25232z2), .S (nx25232z3)) ;
    XORCY z_out_15_add7_29_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[0]
          ), .CI (px1028), .LI (nx28307z2)) ;
    XORCY z_out_15_add7_29_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[1]
          ), .CI (nx28308z1), .LI (nx28308z3)) ;
    XORCY z_out_15_add7_29_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[2]
          ), .CI (nx28309z1), .LI (nx28309z4)) ;
    XORCY z_out_15_add7_29_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[3]
          ), .CI (nx28310z1), .LI (nx28310z4)) ;
    XORCY z_out_15_add7_29_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[4]
          ), .CI (nx28311z1), .LI (nx28311z4)) ;
    XORCY z_out_15_add7_29_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[5]
          ), .CI (nx28312z1), .LI (nx28312z3)) ;
    XORCY z_out_15_add7_29_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[6]
          ), .CI (nx28313z1), .LI (nx28313z2)) ;
    MUXCY z_out_15_add7_29_muxcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_15[7]
          ), .CI (nx28313z1), .DI (nx28313z2), .S (nx28313z2)) ;
    XORCY z_out_17_add8_32_xorcy_0 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[0]
          ), .CI (px1028), .LI (nx57168z2)) ;
    XORCY z_out_17_add8_32_xorcy_1 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[1]
          ), .CI (nx57167z1), .LI (nx57167z3)) ;
    XORCY z_out_17_add8_32_xorcy_2 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[2]
          ), .CI (nx57166z1), .LI (nx57166z3)) ;
    XORCY z_out_17_add8_32_xorcy_3 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[3]
          ), .CI (nx57165z1), .LI (nx57165z3)) ;
    XORCY z_out_17_add8_32_xorcy_4 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[4]
          ), .CI (nx57164z1), .LI (nx57164z3)) ;
    XORCY z_out_17_add8_32_xorcy_5 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[5]
          ), .CI (nx57163z1), .LI (nx57163z3)) ;
    XORCY z_out_17_add8_32_xorcy_6 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[6]
          ), .CI (nx57162z1), .LI (nx57162z2)) ;
    XORCY z_out_17_add8_32_xorcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[7]
          ), .CI (nx57161z1), .LI (nx57161z2)) ;
    MUXCY z_out_17_add8_32_muxcy_7 (.O (Main_Trans_Ond_Opt_core_inst_z_out_17[8]
          ), .CI (nx57161z1), .DI (nx57161z2), .S (nx57161z2)) ;
    GND ps_gnd (.G (
        Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)) ;
    XORCY xorcy_0_0 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[0]), .CI (
          Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .LI (
          nx50045z1)) ;
    XORCY xorcy_0_1 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[1]), .CI (
          Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .LI (
          nx39517z3)) ;
    XORCY xorcy_0_2 (.O (nx12188z147), .CI (nx39518z1), .LI (nx39518z3)) ;
    XORCY xorcy_0_3 (.O (nx12188z148), .CI (nx39519z1), .LI (nx39519z4)) ;
    XORCY xorcy_0_4 (.O (nx12188z149), .CI (nx39520z1), .LI (nx39520z3)) ;
    XORCY xorcy_0_5 (.O (nx12188z28), .CI (nx50040z1), .LI (nx50040z2)) ;
    XORCY xorcy_0_6 (.O (nx12188z29), .CI (nx50039z1), .LI (nx50039z2)) ;
    XORCY xorcy_0_7 (.O (nx12188z30), .CI (nx50038z1), .LI (nx50038z2)) ;
    (* HLUTNM = "Main_Trans_Ond_Opt_core_inst_modgen_adderblock_slut_0_8" *)
    LUT4 slut_0_8 (.O (nx50037z2), .I0 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx50039z5), .I3 (nx16726z2)) ;
         defparam slut_0_8.INIT = 16'h6996;
    (* HLUTNM = "Main_Trans_Ond_Opt_core_inst_modgen_adderblock_slut_0_8" *)
    LUT3 clut_0_8 (.O (nx44612z3), .I0 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx50039z5)) ;
         defparam clut_0_8.INIT = 8'hE8;
    XORCY xorcy_0_8 (.O (nx12188z31), .CI (nx50037z1), .LI (nx50037z2)) ;
    XORCY xorcy_0_10 (.O (nx15577z3), .CI (nx44612z1), .LI (nx44612z2)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_0 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[1]), .CI (nx12188z26
          ), .LI (nx57254z1)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_1 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[2]), .CI (nx57253z1)
          , .LI (nx57253z3)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_2 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[3]), .CI (nx51877z1)
          , .LI (nx51877z2)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_3 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[4]), .CI (nx51876z1)
          , .LI (nx51876z2)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_4 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[5]), .CI (nx51875z1)
          , .LI (nx51875z2)) ;
    XORCY passe_y_1_acc_45_itm_add7_27_xorcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[6]), .CI (nx51874z1)
          , .LI (nx51874z2)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[7]), .CI (nx51874z1)
          , .DI (nx50039z6), .S (nx51874z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_0 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1]), .CI (nx12188z26
          ), .LI (nx39517z7)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_1 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2]), .CI (nx272z1), 
          .LI (nx57253z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_2 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3]), .CI (nx273z1), 
          .LI (nx273z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_3 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4]), .CI (nx274z1), 
          .LI (nx274z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_4 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5]), .CI (nx275z1), 
          .LI (nx275z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6]), .CI (nx276z1), 
          .LI (nx276z2)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_6 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7]), .CI (nx277z1), 
          .LI (nx50040z6)) ;
    XORCY passe_y_1_acc_43_itm_add9_30_xorcy_7 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8]), .CI (nx278z1), 
          .LI (nx50039z6)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_7 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[9]), .CI (nx278z1), 
          .DI (nx50039z6), .S (nx50039z6)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_0 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[1]), .CI (
          nx27125z1), .LI (nx27125z3)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_1 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[2]), .CI (
          nx27124z1), .LI (nx27124z3)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_2 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[3]), .CI (
          nx27123z1), .LI (nx27123z4)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_3 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[4]), .CI (
          nx27122z1), .LI (nx27122z4)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_4 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[5]), .CI (
          nx27121z1), .LI (nx27121z3)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_5 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[6]), .CI (
          nx27120z1), .LI (nx27120z3)) ;
    XORCY passe_y_acc_49_psp_add8_7i17_xorcy_6 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[7]), .CI (
          nx27119z1), .LI (nx50039z7)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_6 (.O (
          Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[8]), .CI (
          nx27119z1), .DI (nx50039z7), .S (nx50039z7)) ;
    FDRE \reg_reg_passe_y_1_acc_44_sdt_tmp_6(1)  (.Q (
         \reg_passe_y_1_acc_44_sdt_tmp_6(1)  ), .C (p_clk), .CE (nx30894z1), .D (
         nx47320z1), .R (p_rst)) ;
    FDRE \reg_reg_slc_slc_tmp_5(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[0]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[2]), 
         .R (p_rst)) ;
    FDRE \reg_reg_slc_slc_tmp_5(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[1]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[1]), 
         .R (p_rst)) ;
    FDRE \reg_reg_passe_y_acc_44_sdt_tmp_7(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[0]), .C (
         p_clk), .CE (nx60014z1), .D (nx30487z1), .R (p_rst)) ;
    FDRE \reg_reg_passe_y_acc_44_sdt_tmp_7(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[1]), .C (
         p_clk), .CE (nx60014z1), .D (nx31484z1), .R (p_rst)) ;
    FDRE \reg_reg_passe_y_acc_43_sdt_tmp_6(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[0]), .C (
         p_clk), .CE (nx60014z1), .D (nx11735z1), .R (p_rst)) ;
    FDRE \reg_reg_passe_y_acc_43_sdt_tmp_6(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[1]), .C (
         p_clk), .CE (nx60014z1), .D (nx12188z108), .R (p_rst)) ;
    FDRE \reg_reg_passe_y_acc_46_sdt_tmp_7(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7[0]), .C (
         p_clk), .CE (nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[1]), .R (p_rst)
         ) ;
    FDRE \reg_reg_passe_y_acc_46_sdt_tmp_7(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7[1]), .C (
         p_clk), .CE (nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[0]), .R (p_rst)
         ) ;
    FDRE \reg_image_copy_2_x_1_sva_1(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[0]), .C (p_clk), .CE (
         nx15240z1), .D (nx15240z2), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[1]), .C (p_clk), .CE (
         nx15240z1), .D (nx14243z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[2]), .C (p_clk), .CE (
         nx15240z1), .D (nx13246z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[3]), .C (p_clk), .CE (
         nx15240z1), .D (nx12249z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[4]), .C (p_clk), .CE (
         nx15240z1), .D (nx11252z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[5]), .C (p_clk), .CE (
         nx15240z1), .D (nx10255z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[6]), .C (p_clk), .CE (
         nx15240z1), .D (nx9258z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[7]), .C (p_clk), .CE (
         nx15240z1), .D (nx8261z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva_1(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[8]), .C (p_clk), .CE (
         nx15240z1), .D (nx7264z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[0]), .C (p_clk), .CE (
         nx30894z1), .D (nx32631z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[1]), .C (p_clk), .CE (
         nx30894z1), .D (nx33628z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[2]), .C (p_clk), .CE (
         nx30894z1), .D (nx34625z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[3]), .C (p_clk), .CE (
         nx30894z1), .D (nx35622z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[4]), .C (p_clk), .CE (
         nx30894z1), .D (nx36619z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[5]), .C (p_clk), .CE (
         nx30894z1), .D (nx37616z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[6]), .C (p_clk), .CE (
         nx30894z1), .D (nx38613z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_psp(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[7]), .C (p_clk), .CE (
         nx30894z1), .D (nx39610z1), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[0]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[9]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[1]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[2]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[3]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[4]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[5]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[6]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[7]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_1_cse_1_sva(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[8]), .C (p_clk)
         , .CE (nx30894z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(14)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[6]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(14)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(13)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[7]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(13)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(12)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[8]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(12)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(11)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[9]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(11)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(10)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[10]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(10)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(9)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[11]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(9)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[12]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(8)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[13]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(7)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_7_itm(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[14]), .C (p_clk), .CE (
         nx30894z1), .D (\passe_y_1_acc_7_itm_7n1s2(6)  ), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_49_psp(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[0]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[7]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[1]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[6]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[2]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[5]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[3]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[4]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[4]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[3]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[5]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[2]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[6]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[1]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_49_psp(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[7]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[0]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(15)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[0]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[15]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(14)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[1]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[14]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(13)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[2]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[13]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(12)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[3]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[12]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(11)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[4]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[11]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(10)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[5]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[10]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_1_acc_13_itm(9)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[6]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[9]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[7]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[8]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[8]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[7]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[9]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[6]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[10]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[5]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[11]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[4]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[12]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[3]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[13]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[2]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[14]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[1]), .R (p_rst)) ;
    FDRE \reg_passe_y_1_acc_13_itm(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[15]), .C (p_clk), .CE (
         nx30894z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[0]), .R (p_rst)) ;
    FDRE reg_exit_passe_y_1_sva (.Q (exit_passe_y_1_sva), .C (p_clk), .CE (
         nx30894z1), .D (nx51265z1), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_49_psp(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[0]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[8]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[1]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[7]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[2]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[6]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[3]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[5]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[4]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[4]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[5]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[3]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[6]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[2]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[7]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp_7n1s2[1]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_49_psp(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[8]), .C (p_clk), .CE (
         nx60014z1), .D (nx2454z1), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_psp(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[0]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[7]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[1]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[6]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[2]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[5]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[3]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[4]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[4]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[3]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[5]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[2]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[6]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[1]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_psp(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[7]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_15[0]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(15)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[0]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[15]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(14)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[1]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[14]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(13)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[2]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[13]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(12)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[3]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[12]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(11)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[4]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[11]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(10)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[5]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[10]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_7_itm(9)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[6]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[9]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[7]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[8]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[8]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[7]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[9]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[6]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[10]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[5]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[11]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[4]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[12]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[3]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[13]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[2]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[14]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[1]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_7_itm(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[15]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_1[0]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[0]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[8]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[1]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[7]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[2]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[6]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[3]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[5]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[4]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[4]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[5]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[3]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[6]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[2]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[7]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[1]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_51_psp(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[8]), .C (p_clk), .CE (
         nx60014z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_2[0]), .R (p_rst)) ;
    FDRE \reg_passe_y_acc_13_itm(16)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[0]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[16]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(15)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[1]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[15]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(14)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[2]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[14]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(13)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[3]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[13]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(12)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[4]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[12]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(11)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[5]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[11]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(10)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[6]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[10]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(9)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[7]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[9]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[8]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[8]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[9]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[7]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[10]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[6]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[11]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[5]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[12]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[4]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[13]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[3]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[14]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[2]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[15]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[1]), .R (p_rst)
         ) ;
    FDRE \reg_passe_y_acc_13_itm(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[16]), .C (p_clk), .CE (
         nx60014z1), .D (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm_7n1s2[0]), .R (p_rst)
         ) ;
    FDRE reg_exit_passe_y_sva (.Q (exit_passe_y_sva), .C (p_clk), .CE (nx60014z1
         ), .D (nx18194z2), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(8)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[0]), .C (p_clk), .CE (
         nx30297z1), .D (nx15240z2), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(7)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[1]), .C (p_clk), .CE (
         nx30297z1), .D (nx14243z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(6)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[2]), .C (p_clk), .CE (
         nx30297z1), .D (nx13246z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(5)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[3]), .C (p_clk), .CE (
         nx30297z1), .D (nx12249z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(4)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[4]), .C (p_clk), .CE (
         nx30297z1), .D (nx11252z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(3)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[5]), .C (p_clk), .CE (
         nx30297z1), .D (nx10255z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(2)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[6]), .C (p_clk), .CE (
         nx30297z1), .D (nx9258z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(1)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[7]), .C (p_clk), .CE (
         nx30297z1), .D (nx8261z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva_1(0)  (.Q (
         Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[8]), .C (p_clk), .CE (
         nx30297z1), .D (nx7264z1), .R (p_rst)) ;
    FDSE reg_Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0 (.Q (
         Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0), .C (p_clk), .CE (
         nx15240z1), .D (nx45428z1), .S (p_rst)) ;
    FDSE reg_Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0 (.Q (
         Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0), .C (p_clk), .CE (
         nx30297z1), .D (nx45428z1), .S (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_7_psp_6_cse(1)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[0]), .C (p_clk), .CE (nx57765z1), .D (
         nx30487z1), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_7_psp_6_cse(0)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[1]), .C (p_clk), .CE (nx57765z1), .D (
         nx31484z1), .R (p_rst)) ;
    FDRE \reg_copy_y_1_acc_psp(7)  (.Q (nx12188z125), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[7]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(6)  (.Q (nx12188z126), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[6]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(5)  (.Q (nx12188z127), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[5]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(4)  (.Q (nx12188z128), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[4]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(3)  (.Q (nx12188z129), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[3]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(2)  (.Q (nx12188z130), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[2]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(1)  (.Q (nx12188z131), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[1]), .R (p_rst)
         ) ;
    FDRE \reg_copy_y_1_acc_psp(0)  (.Q (nx12188z132), .C (p_clk), .CE (nx57765z1
         ), .D (Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[0]), .R (p_rst)
         ) ;
    FDRE reg_levels_asn_3_itm (.Q (nx12188z86), .C (p_clk), .CE (nx57765z1), .D (
         nx50039z5), .R (p_rst)) ;
    FDRE reg_levels_asn_4_itm (.Q (nx12188z153), .C (p_clk), .CE (nx57765z1), .D (
         nx50040z7), .R (p_rst)) ;
    FDRE reg_levels_asn_15_itm (.Q (nx12188z85), .C (p_clk), .CE (nx57765z1), .D (
         nx51911z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(7)  (.Q (nx12188z44), .C (p_clk), .CE (
         nx39627z1), .D (nx39627z2), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(6)  (.Q (nx12188z45), .C (p_clk), .CE (
         nx39627z1), .D (nx38630z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(5)  (.Q (nx12188z47), .C (p_clk), .CE (
         nx39627z1), .D (nx37633z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(4)  (.Q (nx12188z48), .C (p_clk), .CE (
         nx39627z1), .D (nx36636z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(3)  (.Q (nx12188z49), .C (p_clk), .CE (
         nx39627z1), .D (nx35639z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(2)  (.Q (nx12188z50), .C (p_clk), .CE (
         nx39627z1), .D (nx34642z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(1)  (.Q (nx12188z51), .C (p_clk), .CE (
         nx39627z1), .D (nx33645z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_1_sva_2(0)  (.Q (nx12188z52), .C (p_clk), .CE (
         nx39627z1), .D (nx32648z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(7)  (.Q (nx12188z93), .C (p_clk), .CE (nx57765z1), 
         .D (nx15382z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(6)  (.Q (nx12188z158), .C (p_clk), .CE (nx57765z1)
         , .D (nx14385z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(5)  (.Q (nx12188z159), .C (p_clk), .CE (nx57765z1)
         , .D (nx13388z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(4)  (.Q (nx12188z160), .C (p_clk), .CE (nx57765z1)
         , .D (nx12391z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(3)  (.Q (nx12188z101), .C (p_clk), .CE (nx57765z1)
         , .D (nx11394z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(2)  (.Q (nx12188z103), .C (p_clk), .CE (nx57765z1)
         , .D (nx10397z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(1)  (.Q (nx12188z163), .C (p_clk), .CE (nx57765z1)
         , .D (nx9400z1), .R (p_rst)) ;
    FDRE \reg_sub_11_mux_itm(0)  (.Q (nx12188z164), .C (p_clk), .CE (nx57765z1)
         , .D (nx8403z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(7)  (.Q (nx12188z92), .C (p_clk), .CE (nx57765z1), .D (
         nx18194z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(6)  (.Q (nx12188z95), .C (p_clk), .CE (nx57765z1), .D (
         nx19191z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(5)  (.Q (nx12188z97), .C (p_clk), .CE (nx57765z1), .D (
         nx20188z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(4)  (.Q (nx12188z99), .C (p_clk), .CE (nx57765z1), .D (
         nx21185z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(3)  (.Q (nx12188z100), .C (p_clk), .CE (nx57765z1), 
         .D (nx22182z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(2)  (.Q (nx12188z102), .C (p_clk), .CE (nx57765z1), 
         .D (nx23179z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(1)  (.Q (nx12188z105), .C (p_clk), .CE (nx57765z1), 
         .D (nx24176z1), .R (p_rst)) ;
    FDRE \reg_sub_6_mux_itm(0)  (.Q (nx12188z107), .C (p_clk), .CE (nx57765z1), 
         .D (nx25173z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(7)  (.Q (nx12188z54), .C (p_clk), .CE (
         nx57765z1), .D (nx56807z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(6)  (.Q (nx12188z55), .C (p_clk), .CE (
         nx57765z1), .D (nx55810z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(5)  (.Q (nx12188z56), .C (p_clk), .CE (
         nx57765z1), .D (nx54813z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(4)  (.Q (nx12188z57), .C (p_clk), .CE (
         nx57765z1), .D (nx53816z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(3)  (.Q (nx12188z58), .C (p_clk), .CE (
         nx57765z1), .D (nx52819z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(2)  (.Q (nx12188z59), .C (p_clk), .CE (
         nx57765z1), .D (nx51822z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(1)  (.Q (nx12188z60), .C (p_clk), .CE (
         nx57765z1), .D (nx50825z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_9_lpi_3_dfm(0)  (.Q (nx12188z61), .C (p_clk), .CE (
         nx57765z1), .D (nx49828z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(6)  (.Q (nx12188z26), .C (p_clk), .CE (
         nx8924z1), .D (nx8924z2), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(5)  (.Q (nx39517z2), .C (p_clk), .CE (nx8924z1
         ), .D (nx9921z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(4)  (.Q (nx56440z3), .C (p_clk), .CE (nx8924z1
         ), .D (nx10918z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(3)  (.Q (nx56439z3), .C (p_clk), .CE (nx8924z1
         ), .D (nx11915z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(2)  (.Q (nx56438z3), .C (p_clk), .CE (nx8924z1
         ), .D (nx12912z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(1)  (.Q (nx56437z3), .C (p_clk), .CE (nx8924z1
         ), .D (nx13909z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_1_sva(0)  (.Q (nx56436z2), .C (p_clk), .CE (nx8924z1
         ), .D (nx14906z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(5)  (.Q (nx50039z6), .C (p_clk), .CE (
         nx59915z1), .D (nx64900z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(4)  (.Q (nx50040z6), .C (p_clk), .CE (
         nx59915z1), .D (nx63903z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(3)  (.Q (nx51876z3), .C (p_clk), .CE (
         nx59915z1), .D (nx62906z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(2)  (.Q (nx51877z3), .C (p_clk), .CE (
         nx59915z1), .D (nx61909z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(1)  (.Q (nx57253z2), .C (p_clk), .CE (
         nx59915z1), .D (nx60912z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_y_1_sva(0)  (.Q (nx39517z7), .C (p_clk), .CE (
         nx59915z1), .D (nx59915z2), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(7)  (.Q (nx12188z2), .C (p_clk), .CE (
         nx63523z1), .D (nx61529z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(6)  (.Q (nx12188z62), .C (p_clk), .CE (
         nx63523z1), .D (nx62526z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(5)  (.Q (nx12188z1), .C (p_clk), .CE (
         nx63523z1), .D (nx63523z2), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(4)  (.Q (nx12188z64), .C (p_clk), .CE (
         nx63523z1), .D (nx64520z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(3)  (.Q (nx12188z65), .C (p_clk), .CE (
         nx63523z1), .D (nx65517z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(2)  (.Q (nx12188z66), .C (p_clk), .CE (
         nx63523z1), .D (nx978z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(1)  (.Q (nx12188z67), .C (p_clk), .CE (
         nx63523z1), .D (nx1975z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_y_1_sva(0)  (.Q (nx12188z68), .C (p_clk), .CE (
         nx63523z1), .D (nx2972z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(7)  (.Q (nx12188z110), .C (p_clk), .CE (nx57765z1), 
         .D (nx43121z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(6)  (.Q (nx12188z112), .C (p_clk), .CE (nx57765z1), 
         .D (nx42124z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(5)  (.Q (nx12188z114), .C (p_clk), .CE (nx57765z1), 
         .D (nx41127z3), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(4)  (.Q (nx12188z116), .C (p_clk), .CE (nx57765z1), 
         .D (nx40130z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(3)  (.Q (nx12188z118), .C (p_clk), .CE (nx57765z1), 
         .D (nx39133z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(2)  (.Q (nx12188z120), .C (p_clk), .CE (nx57765z1), 
         .D (nx38136z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(1)  (.Q (nx12188z122), .C (p_clk), .CE (nx57765z1), 
         .D (nx37139z1), .R (p_rst)) ;
    FDRE \reg_sub_5_mux_itm(0)  (.Q (nx12188z124), .C (p_clk), .CE (nx57765z1), 
         .D (nx36142z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(7)  (.Q (nx12188z171), .C (p_clk), .CE (nx57765z1), .D (
         nx56103z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(6)  (.Q (nx12188z172), .C (p_clk), .CE (nx57765z1), .D (
         nx57100z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(5)  (.Q (nx12188z173), .C (p_clk), .CE (nx57765z1), .D (
         nx58097z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(4)  (.Q (nx12188z174), .C (p_clk), .CE (nx57765z1), .D (
         nx59094z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(3)  (.Q (nx12188z175), .C (p_clk), .CE (nx57765z1), .D (
         nx60091z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(2)  (.Q (nx12188z176), .C (p_clk), .CE (nx57765z1), .D (
         nx61088z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(1)  (.Q (nx12188z177), .C (p_clk), .CE (nx57765z1), .D (
         nx62085z1), .R (p_rst)) ;
    FDRE \reg_sub_mux_itm(0)  (.Q (nx12188z178), .C (p_clk), .CE (nx57765z1), .D (
         nx63082z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(7)  (.Q (nx12188z70), .C (p_clk), .CE (
         nx57765z1), .D (nx2519z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(6)  (.Q (nx12188z71), .C (p_clk), .CE (
         nx57765z1), .D (nx3516z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(5)  (.Q (nx12188z72), .C (p_clk), .CE (
         nx57765z1), .D (nx4513z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(4)  (.Q (nx12188z73), .C (p_clk), .CE (
         nx57765z1), .D (nx5510z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(3)  (.Q (nx12188z74), .C (p_clk), .CE (
         nx57765z1), .D (nx6507z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(2)  (.Q (nx12188z75), .C (p_clk), .CE (
         nx57765z1), .D (nx7504z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(1)  (.Q (nx12188z76), .C (p_clk), .CE (
         nx57765z1), .D (nx8501z1), .R (p_rst)) ;
    FDRE \reg_sub_sub_return_3_lpi_3_dfm(0)  (.Q (nx12188z77), .C (p_clk), .CE (
         nx57765z1), .D (nx9498z1), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(7)  (.Q (nx22387z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[0]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(6)  (.Q (nx22388z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[1]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(5)  (.Q (nx22389z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[2]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(4)  (.Q (nx22390z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[3]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(3)  (.Q (nx22391z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[4]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(2)  (.Q (nx22392z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[5]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(1)  (.Q (nx22393z5), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[6]), .R (p_rst)) ;
    FDRE \reg_moy_slc_Src_cse_sva(0)  (.Q (nx37767z3), .C (p_clk), .CE (
         nx57765z1), .D (p_nbus_Src_rsc_singleport_data_out[7]), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(7)  (.Q (nx12188z21), .C (p_clk), .CE (nx15824z1
         ), .D (nx14827z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(6)  (.Q (nx12188z18), .C (p_clk), .CE (nx15824z1
         ), .D (nx15824z2), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(5)  (.Q (nx56441z3), .C (p_clk), .CE (nx15824z1)
         , .D (nx16821z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(4)  (.Q (nx56440z4), .C (p_clk), .CE (nx15824z1)
         , .D (nx17818z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(3)  (.Q (nx56439z4), .C (p_clk), .CE (nx15824z1)
         , .D (nx18815z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(2)  (.Q (nx56438z4), .C (p_clk), .CE (nx15824z1)
         , .D (nx19812z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(1)  (.Q (nx56437z4), .C (p_clk), .CE (nx15824z1)
         , .D (nx20809z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_x_1_sva(0)  (.Q (nx56436z3), .C (p_clk), .CE (nx15824z1)
         , .D (nx21806z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(6)  (.Q (nx50039z7), .C (p_clk), .CE (nx53015z1)
         , .D (nx58997z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(5)  (.Q (nx50040z8), .C (p_clk), .CE (nx53015z1)
         , .D (nx58000z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(4)  (.Q (nx39520z6), .C (p_clk), .CE (nx53015z1)
         , .D (nx57003z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(3)  (.Q (nx39519z8), .C (p_clk), .CE (nx53015z1)
         , .D (nx56006z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(2)  (.Q (nx39518z5), .C (p_clk), .CE (nx53015z1)
         , .D (nx55009z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(1)  (.Q (nx39517z10), .C (p_clk), .CE (nx53015z1
         ), .D (nx54012z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_y_1_sva(0)  (.Q (nx12188z27), .C (p_clk), .CE (nx53015z1
         ), .D (nx53015z2), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(8)  (.Q (nx12188z42), .C (p_clk), .CE (
         nx1057z1), .D (nx60z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(7)  (.Q (nx12188z37), .C (p_clk), .CE (
         nx1057z1), .D (nx1057z2), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(6)  (.Q (nx12188z39), .C (p_clk), .CE (
         nx1057z1), .D (nx2054z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(5)  (.Q (p_nbus_Vga_rsc_singleport_addr[2]), 
         .C (p_clk), .CE (nx1057z1), .D (nx3051z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(4)  (.Q (p_nbus_Vga_rsc_singleport_addr[3]), 
         .C (p_clk), .CE (nx1057z1), .D (nx4048z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(3)  (.Q (p_nbus_Vga_rsc_singleport_addr[4]), 
         .C (p_clk), .CE (nx1057z1), .D (nx5045z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(2)  (.Q (p_nbus_Vga_rsc_singleport_addr[5]), 
         .C (p_clk), .CE (nx1057z1), .D (nx6042z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(1)  (.Q (p_nbus_Vga_rsc_singleport_addr[6]), 
         .C (p_clk), .CE (nx1057z1), .D (nx7039z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_x_1_sva(0)  (.Q (p_nbus_Vga_rsc_singleport_addr[7]), 
         .C (p_clk), .CE (nx1057z1), .D (nx8036z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(7)  (.Q (nx12188z23), .C (p_clk), .CE (
         nx2246z1), .D (nx8228z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(6)  (.Q (nx12188z20), .C (p_clk), .CE (
         nx2246z1), .D (nx7231z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(5)  (.Q (nx12188z17), .C (p_clk), .CE (
         nx2246z1), .D (nx6234z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(4)  (.Q (nx12188z34), .C (p_clk), .CE (
         nx2246z1), .D (nx5237z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(3)  (.Q (nx12188z11), .C (p_clk), .CE (
         nx2246z1), .D (nx4240z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(2)  (.Q (nx12188z8), .C (p_clk), .CE (
         nx2246z1), .D (nx3243z1), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(1)  (.Q (nx12188z6), .C (p_clk), .CE (
         nx2246z1), .D (nx2246z2), .R (p_rst)) ;
    FDRE \reg_image_copy_2_y_1_sva(0)  (.Q (nx12188z79), .C (p_clk), .CE (
         nx2246z1), .D (nx1249z1), .R (p_rst)) ;
    FDRE \reg_i_1_sg1_sva_2(1)  (.Q (nx12188z91), .C (p_clk), .CE (nx57765z1), .D (
         nx41828z1), .R (p_rst)) ;
    FDRE \reg_i_1_sg1_sva_2(0)  (.Q (nx12188z90), .C (p_clk), .CE (nx57765z1), .D (
         nx40831z1), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(8)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[8]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[8]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(7)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[9]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[7]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(6)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[10]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[6]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(5)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[11]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[5]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(4)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[12]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[4]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(3)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[13]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[3]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(2)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[14]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[2]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(1)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[15]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[1]), .R (p_rst)) ;
    FDRE \reg_reg_copy_y_acc_8_psp_cse(0)  (.Q (
         p_nbus_Vga_rsc_singleport_addr[16]), .C (p_clk), .CE (nx57765z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_17[0]), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(8)  (.Q (nx12188z41), .C (p_clk), .CE (
         nx61846z1), .D (nx62843z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(7)  (.Q (nx12188z36), .C (p_clk), .CE (
         nx61846z1), .D (nx61846z2), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(6)  (.Q (nx12188z40), .C (p_clk), .CE (
         nx61846z1), .D (nx60849z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(5)  (.Q (nx12188z134), .C (p_clk), .CE (
         nx61846z1), .D (nx59852z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(4)  (.Q (nx12188z137), .C (p_clk), .CE (
         nx61846z1), .D (nx58855z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(3)  (.Q (nx12188z139), .C (p_clk), .CE (
         nx61846z1), .D (nx57858z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(2)  (.Q (nx12188z141), .C (p_clk), .CE (
         nx61846z1), .D (nx56861z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(1)  (.Q (nx12188z143), .C (p_clk), .CE (
         nx61846z1), .D (nx55864z1), .R (p_rst)) ;
    FDRE \reg_image_copy_x_1_sva(0)  (.Q (nx12188z146), .C (p_clk), .CE (
         nx61846z1), .D (nx54867z1), .R (p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(7)  (.Q (nx22387z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[0]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(6)  (.Q (nx22388z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[1]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(5)  (.Q (nx22389z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[2]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(4)  (.Q (nx22390z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[3]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(3)  (.Q (nx22391z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[4]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(2)  (.Q (nx22392z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[5]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(1)  (.Q (nx22393z6), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[6]), .R (
         p_rst)) ;
    FDRE \reg_reg_Vga_rsc_singleport_data_in_core_cse(0)  (.Q (nx37767z4), .C (
         p_clk), .CE (nx57765z1), .D (p_nbus_Dst_rsc_singleport_data_out[7]), .R (
         p_rst)) ;
    FDRE reg_reg_Src_rsc_singleport_iswt0_cse (.Q (Src_rsc_singleport_oswt), .C (
         p_clk), .CE (nx57765z1), .D (nx34441z1), .R (p_rst)) ;
    FDRE reg_reg_Dst_rsc_singleport_iswt0_cse (.Q (Dst_rsc_singleport_oswt), .C (
         p_clk), .CE (nx57765z1), .D (nx41294z1), .R (p_rst)) ;
    FDRE reg_reg_start_sync_mgc_bsync_vld_iswt0_cse (.Q (
         mgc_start_sync_mgc_bsync_vld_oswt), .C (p_clk), .CE (nx57765z1), .D (
         nx57765z2), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(7)  (.Q (nx12188z22), .C (p_clk), .CE (nx387z1)
         , .D (nx59941z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(6)  (.Q (nx12188z19), .C (p_clk), .CE (nx387z1)
         , .D (nx60938z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(5)  (.Q (nx12188z16), .C (p_clk), .CE (nx387z1)
         , .D (nx61935z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(4)  (.Q (nx12188z33), .C (p_clk), .CE (nx387z1)
         , .D (nx62932z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(3)  (.Q (nx12188z10), .C (p_clk), .CE (nx387z1)
         , .D (nx63929z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(2)  (.Q (nx12188z7), .C (p_clk), .CE (nx387z1)
         , .D (nx64926z1), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(1)  (.Q (nx12188z5), .C (p_clk), .CE (nx387z1)
         , .D (nx387z2), .R (p_rst)) ;
    FDRE \reg_image_copy_y_1_sva(0)  (.Q (nx12188z32), .C (p_clk), .CE (nx387z1)
         , .D (nx1384z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg1_sva (.Q (nx12188z43), .C (p_clk), .CE (nx4243z1), .D (
         nx2022z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg2_sva (.Q (nx12188z80), .C (p_clk), .CE (nx4243z1), .D (
         nx62423z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg3_sva (.Q (nx12188z81), .C (p_clk), .CE (nx4243z1), .D (
         nx57288z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg4_sva (.Q (nx12188z82), .C (p_clk), .CE (nx4243z1), .D (
         nx52153z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg5_sva (.Q (nx12188z83), .C (p_clk), .CE (nx4243z1), .D (
         nx47018z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg6_sva (.Q (nx12188z84), .C (p_clk), .CE (nx57765z1), .D (
         nx23653z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg7_sva (.Q (nx51911z1), .C (p_clk), .CE (nx57765z1), .D (
         nx28788z1), .R (p_rst)) ;
    FDRE reg_wi_7_sg8_sva (.Q (nx50039z5), .C (p_clk), .CE (nx57765z1), .D (
         nx33923z1), .R (p_rst)) ;
    FDRE reg_hi_7_sg1_sva (.Q (nx12188z25), .C (p_clk), .CE (nx4243z1), .D (
         nx4243z2), .R (p_rst)) ;
    FDRE reg_hi_7_sg2_sva (.Q (nx39517z8), .C (p_clk), .CE (nx4243z1), .D (
         nx64644z1), .R (p_rst)) ;
    FDRE reg_hi_7_sg3_sva (.Q (nx39520z7), .C (p_clk), .CE (nx4243z1), .D (
         nx59509z1), .R (p_rst)) ;
    FDRE reg_hi_7_sg4_sva (.Q (nx50040z9), .C (p_clk), .CE (nx57765z1), .D (
         nx11162z1), .R (p_rst)) ;
    FDRE reg_hi_7_sg5_sva (.Q (nx50039z8), .C (p_clk), .CE (nx57765z1), .D (
         nx16297z1), .R (p_rst)) ;
    FDRE reg_hi_7_sg6_sva (.Q (nx50040z7), .C (p_clk), .CE (nx57765z1), .D (
         nx21432z1), .R (p_rst)) ;
    FDRE \reg_reg_passe_y_1_acc_44_sdt_tmp_6(0)  (.Q (nx12188z133), .C (p_clk), 
         .CE (nx30894z1), .D (nx48317z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(5)  (.Q (nx12188z136), .C (
         p_clk), .CE (nx50304z1), .D (nx50304z2), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(4)  (.Q (nx12188z138), .C (
         p_clk), .CE (nx50304z1), .D (nx49307z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(3)  (.Q (nx12188z140), .C (
         p_clk), .CE (nx50304z1), .D (nx48310z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(2)  (.Q (nx12188z142), .C (
         p_clk), .CE (nx50304z1), .D (nx47313z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(1)  (.Q (nx12188z144), .C (
         p_clk), .CE (nx50304z1), .D (nx46316z1), .R (p_rst)) ;
    FDRE \reg_image_copy_1_x_slc_image_copy_1_x_1_itm(0)  (.Q (nx12188z145), .C (
         p_clk), .CE (nx50304z1), .D (nx45319z1), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(7)  (.Q (nx12188z157), .C (p_clk), .CE (nx2736z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[8]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(6)  (.Q (nx12188z94), .C (p_clk), .CE (nx2736z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_10[7]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(5)  (.Q (nx12188z96), .C (p_clk), .CE (nx2736z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_10[6]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(4)  (.Q (nx12188z98), .C (p_clk), .CE (nx2736z1), .D (
         Main_Trans_Ond_Opt_core_inst_z_out_10[5]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(3)  (.Q (nx12188z161), .C (p_clk), .CE (nx2736z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[4]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(2)  (.Q (nx12188z162), .C (p_clk), .CE (nx2736z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[3]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(1)  (.Q (nx12188z104), .C (p_clk), .CE (nx2736z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[2]), .R (p_rst)) ;
    FDRE \reg_moy_11_slc_itm(0)  (.Q (nx12188z106), .C (p_clk), .CE (nx2736z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[1]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(7)  (.Q (nx44433z3), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(6)  (.Q (nx39057z3), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(5)  (.Q (nx39056z3), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(4)  (.Q (nx12188z15), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(3)  (.Q (nx12188z13), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(2)  (.Q (nx39053z3), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(1)  (.Q (nx39052z3), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .R (p_rst)) ;
    FDRE \reg_moy_6_acc_cse_sg1_sva(0)  (.Q (nx12188z4), .C (p_clk), .CE (
         nx23913z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(5)  (.Q (nx12188z189), .C (
         p_clk), .CE (nx57354z1), .D (nx57354z2), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(4)  (.Q (nx12188z190), .C (
         p_clk), .CE (nx57354z1), .D (nx58351z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(3)  (.Q (nx12188z191), .C (
         p_clk), .CE (nx57354z1), .D (nx59348z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(2)  (.Q (nx12188z192), .C (
         p_clk), .CE (nx57354z1), .D (nx60345z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(1)  (.Q (nx12188z193), .C (
         p_clk), .CE (nx57354z1), .D (nx61342z1), .R (p_rst)) ;
    FDRE \reg_Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(0)  (.Q (nx12188z194), .C (
         p_clk), .CE (nx57354z1), .D (nx62339z1), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(7)  (.Q (nx12188z109), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[8]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(6)  (.Q (nx12188z111), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[7]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(5)  (.Q (nx12188z113), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[6]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(4)  (.Q (nx12188z115), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[5]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(3)  (.Q (nx12188z117), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[4]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(2)  (.Q (nx12188z119), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[3]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(1)  (.Q (nx12188z121), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[2]), .R (p_rst)) ;
    FDRE \reg_moy_5_slc_itm(0)  (.Q (nx12188z123), .C (p_clk), .CE (nx33068z1), 
         .D (Main_Trans_Ond_Opt_core_inst_z_out_10[1]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(7)  (.Q (nx12188z24), .C (p_clk), .CE (
         nx5050z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(6)  (.Q (nx39057z4), .C (p_clk), .CE (nx5050z1
         ), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(5)  (.Q (nx39056z4), .C (p_clk), .CE (nx5050z1
         ), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(4)  (.Q (nx12188z14), .C (p_clk), .CE (
         nx5050z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(3)  (.Q (nx12188z12), .C (p_clk), .CE (
         nx5050z1), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(2)  (.Q (nx12188z9), .C (p_clk), .CE (nx5050z1
         ), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(1)  (.Q (nx39052z4), .C (p_clk), .CE (nx5050z1
         ), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .R (p_rst)) ;
    FDRE \reg_moy_acc_cse_sg1_sva(0)  (.Q (nx12188z3), .C (p_clk), .CE (nx5050z1
         ), .D (Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_1_itm(4)  (.Q (nx12188z166), .C (p_clk)
         , .CE (nx42765z1), .D (nx5238z1), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_1_itm(3)  (.Q (nx12188z167), .C (p_clk)
         , .CE (nx42765z1), .D (nx6235z1), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_1_itm(2)  (.Q (nx12188z168), .C (p_clk)
         , .CE (nx42765z1), .D (nx7232z1), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_1_itm(1)  (.Q (nx12188z169), .C (p_clk)
         , .CE (nx42765z1), .D (nx8229z1), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_1_itm(0)  (.Q (nx12188z170), .C (p_clk)
         , .CE (nx42765z1), .D (nx9226z1), .R (p_rst)) ;
    FDRE \reg_passe_y_slc_Trans_Ond_x_1_itm(5)  (.Q (nx12188z135), .C (p_clk), .CE (
         nx42765z1), .D (nx42765z2), .R (p_rst)) ;
    FDRE \reg_nbLevels_1_sva(2)  (.Q (nx12188z89), .C (p_clk), .CE (nx59090z1), 
         .D (p_nbus_nbLevels_rsc_z[0]), .R (p_rst)) ;
    FDRE \reg_nbLevels_1_sva(1)  (.Q (nx12188z88), .C (p_clk), .CE (nx59090z1), 
         .D (p_nbus_nbLevels_rsc_z[1]), .R (p_rst)) ;
    FDRE \reg_nbLevels_1_sva(0)  (.Q (nx12188z87), .C (p_clk), .CE (nx59090z1), 
         .D (p_nbus_nbLevels_rsc_z[2]), .R (p_rst)) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(7)  (.Q (nx22387z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[0]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(6)  (.Q (nx22388z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[1]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(5)  (.Q (nx22389z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[2]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(4)  (.Q (nx22390z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[3]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(3)  (.Q (nx22391z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[4]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(2)  (.Q (nx22392z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[5]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(1)  (.Q (nx22393z3), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[6]), .R (p_rst)
         ) ;
    FDRE \reg_Src_rsc_singleport_data_out_bfwt(0)  (.Q (nx37767z6), .C (p_clk), 
         .CE (nx16349z1), .D (p_nbus_Src_rsc_singleport_data_out[7]), .R (p_rst)
         ) ;
    INV ix16619z1315 (.O (\image_copy_1_y_1_sva_1(0)  ), .I (nx12188z68)) ;
    INV ix55224z1315 (.O (\image_copy_1_x_1_sva_1(0)  ), .I (nx12188z52)) ;
    INV mux_109_nl_rename14 (.O (mux_109_nl), .I (nx50039z5)) ;
    INV ix48317z1315 (.O (nx48317z1), .I (nx39517z2)) ;
    LUT3 ix63082z1516 (.O (nx63082z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[1]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[1]), .I2 (nx18194z2)) ;
         defparam ix63082z1516.INIT = 8'hCA;
    LUT3 ix62085z1516 (.O (nx62085z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[2]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[2]), .I2 (nx18194z2)) ;
         defparam ix62085z1516.INIT = 8'hCA;
    LUT3 ix61088z1516 (.O (nx61088z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[3]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[3]), .I2 (nx18194z2)) ;
         defparam ix61088z1516.INIT = 8'hCA;
    LUT3 ix60091z1516 (.O (nx60091z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[4]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[4]), .I2 (nx18194z2)) ;
         defparam ix60091z1516.INIT = 8'hCA;
    LUT3 ix59094z1516 (.O (nx59094z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[5]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[5]), .I2 (nx18194z2)) ;
         defparam ix59094z1516.INIT = 8'hCA;
    LUT3 ix58097z1516 (.O (nx58097z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[6]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[6]), .I2 (nx18194z2)) ;
         defparam ix58097z1516.INIT = 8'hCA;
    LUT3 ix57100z1516 (.O (nx57100z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[7]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[7]), .I2 (nx18194z2)) ;
         defparam ix57100z1516.INIT = 8'hCA;
    LUT3 ix56103z1516 (.O (nx56103z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[8]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[8]), .I2 (nx18194z2)) ;
         defparam ix56103z1516.INIT = 8'hCA;
    LUT3 ix25173z1486 (.O (nx25173z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[1]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[1]), .I2 (nx18194z2)) ;
         defparam ix25173z1486.INIT = 8'hAC;
    LUT3 ix24176z1486 (.O (nx24176z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[2]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[2]), .I2 (nx18194z2)) ;
         defparam ix24176z1486.INIT = 8'hAC;
    LUT3 ix23179z1486 (.O (nx23179z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[3]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[3]), .I2 (nx18194z2)) ;
         defparam ix23179z1486.INIT = 8'hAC;
    LUT3 ix22182z1486 (.O (nx22182z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[4]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[4]), .I2 (nx18194z2)) ;
         defparam ix22182z1486.INIT = 8'hAC;
    LUT3 ix21185z1486 (.O (nx21185z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[5]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[5]), .I2 (nx18194z2)) ;
         defparam ix21185z1486.INIT = 8'hAC;
    LUT3 ix20188z1486 (.O (nx20188z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[6]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[6]), .I2 (nx18194z2)) ;
         defparam ix20188z1486.INIT = 8'hAC;
    LUT3 ix19191z1486 (.O (nx19191z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[7]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[7]), .I2 (nx18194z2)) ;
         defparam ix19191z1486.INIT = 8'hAC;
    LUT3 ix18194z1486 (.O (nx18194z1), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_6[8]), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[8]), .I2 (nx18194z2)) ;
         defparam ix18194z1486.INIT = 8'hAC;
    LUT6 ix38613z1113 (.O (nx38613z1), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39519z7), .I5 (nx39517z7)) ;
         defparam ix38613z1113.INIT = 64'hFF3700C800C8FF37;
    LUT4 ix11735z39804 (.O (nx11735z1), .I0 (nx12188z21), .I1 (nx12188z18), .I2 (
         nx39517z10), .I3 (nx12188z27)) ;
         defparam ix11735z39804.INIT = 16'h965A;
    LUT6 ix27120z1316 (.O (nx27120z3), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3), .I4 (nx27120z4), .I5 (nx50040z8)) ;
         defparam ix27120z1316.INIT = 64'hFFFFFFFD00000002;
    LUT2 ix27125z1320 (.O (nx27125z3), .I0 (nx27125z2), .I1 (nx12188z27)) ;
         defparam ix27125z1320.INIT = 4'h6;
    LUT3 ix39523z1526 (.O (nx39523z1), .I0 (nx50039z4), .I1 (nx50039z7), .I2 (
         nx50039z8)) ;
         defparam ix39523z1526.INIT = 8'hD4;
    LUT4 ix50039z28344 (.O (nx50039z2), .I0 (nx50039z3), .I1 (nx50039z4), .I2 (
         nx50039z7), .I3 (nx50039z8)) ;
         defparam ix50039z28344.INIT = 16'h6996;
    LUT6 ix39522z64930 (.O (nx39522z1), .I0 (\fsm_output(21)  ), .I1 (nx50040z6)
         , .I2 (nx50040z8), .I3 (nx50040z9), .I4 (nx50040z7), .I5 (nx50040z4)) ;
         defparam ix39522z64930.INIT = 64'hF220F770FDD0F880;
    LUT3 ix39521z1546 (.O (nx39521z1), .I0 (nx39520z4), .I1 (nx39520z6), .I2 (
         nx39520z7)) ;
         defparam ix39521z1546.INIT = 8'hE8;
    LUT3 ix39520z1546 (.O (nx39520z2), .I0 (nx39519z6), .I1 (nx39519z8), .I2 (
         nx39517z8)) ;
         defparam ix39520z1546.INIT = 8'hE8;
    LUT6 ix39519z1314 (.O (nx39519z2), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39518z5), .I5 (nx12188z25)) ;
         defparam ix39519z1314.INIT = 64'hFFFFC837C8370000;
    LUT6 ix39517z27577 (.O (nx39517z3), .I0 (nx39517z4), .I1 (nx39517z5), .I2 (
         nx39517z6), .I3 (nx39517z9), .I4 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I5 (
         nx39517z10)) ;
         defparam ix39517z27577.INIT = 64'h6696996999696696;
    LUT6 ix39517z20778 (.O (nx39517z1), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx39517z2), .I3 (nx12188z18), .I4 (nx12188z27), .I5 (nx12188z25)) ;
         defparam ix39517z20778.INIT = 64'hCEDF084CDFCE4C08;
    LUT6 ix50045z25284 (.O (nx50045z1), .I0 (nx39517z4), .I1 (nx50045z2), .I2 (
         \fsm_output(21)  ), .I3 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I5 (
         nx12188z27)) ;
         defparam ix50045z25284.INIT = 64'h5DA2A25DA25D5DA2;
    LUT3 ix57161z1530 (.O (nx57161z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z23)
         , .I2 (nx12188z22)) ;
         defparam ix57161z1530.INIT = 8'hD8;
    LUT3 ix57162z1530 (.O (nx57162z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z20)
         , .I2 (nx12188z19)) ;
         defparam ix57162z1530.INIT = 8'hD8;
    LUT3 ix57163z1530 (.O (nx57163z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z17)
         , .I2 (nx12188z16)) ;
         defparam ix57163z1530.INIT = 8'hD8;
    LUT3 ix57164z1530 (.O (nx57164z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z34)
         , .I2 (nx12188z33)) ;
         defparam ix57164z1530.INIT = 8'hD8;
    LUT3 ix57165z1530 (.O (nx57165z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z11)
         , .I2 (nx12188z10)) ;
         defparam ix57165z1530.INIT = 8'hD8;
    LUT3 ix57166z1530 (.O (nx57166z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z8)
         , .I2 (nx12188z7)) ;
         defparam ix57166z1530.INIT = 8'hD8;
    LUT3 ix57167z1530 (.O (nx57167z2), .I0 (\fsm_output(38)  ), .I1 (nx12188z6)
         , .I2 (nx12188z5)) ;
         defparam ix57167z1530.INIT = 8'hD8;
    LUT3 ix57168z1530 (.O (nx57168z1), .I0 (\fsm_output(38)  ), .I1 (nx12188z79)
         , .I2 (nx12188z32)) ;
         defparam ix57168z1530.INIT = 8'hD8;
    LUT6 ix28313z14370 (.O (nx28313z2), .I0 (nx28311z3), .I1 (\fsm_output(21)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[7]), .I3 (
         nx50039z7), .I4 (nx50039z5), .I5 (nx50040z7)) ;
         defparam ix28313z14370.INIT = 64'hF7C4330073403300;
    LUT5 ix28312z24525 (.O (nx28312z3), .I0 (nx28312z2), .I1 (nx28311z5), .I2 (
         \fsm_output(21)  ), .I3 (nx50039z6), .I4 (nx50039z7)) ;
         defparam ix28312z24525.INIT = 32'h56A65AAA;
    LUT5 ix28311z23498 (.O (nx28311z4), .I0 (nx28311z2), .I1 (nx28311z5), .I2 (
         \fsm_output(21)  ), .I3 (nx50040z6), .I4 (nx50039z7)) ;
         defparam ix28311z23498.INIT = 32'h59A956A6;
    LUT6 ix28310z24526 (.O (nx28310z4), .I0 (nx28310z2), .I1 (nx28309z5), .I2 (
         \fsm_output(21)  ), .I3 (nx51876z3), .I4 (nx50040z8), .I5 (nx39520z6)
         ) ;
         defparam ix28310z24526.INIT = 64'h59A956A655A55AAA;
    LUT6 ix28309z16366 (.O (nx28309z4), .I0 (nx28309z5), .I1 (nx28309z3), .I2 (
         \fsm_output(21)  ), .I3 (nx51877z3), .I4 (nx39520z6), .I5 (nx39518z5)
         ) ;
         defparam ix28309z16366.INIT = 64'h3ACA35C535C53ACA;
    LUT6 ix28308z16879 (.O (nx28308z3), .I0 (nx28307z3), .I1 (nx28308z2), .I2 (
         \fsm_output(21)  ), .I3 (nx57253z2), .I4 (nx39519z8), .I5 (nx39518z5)
         ) ;
         defparam ix28308z16879.INIT = 64'h36C639C933C33CCC;
    LUT5 ix28307z24268 (.O (nx28307z2), .I0 (nx28307z1), .I1 (nx28307z3), .I2 (
         \fsm_output(21)  ), .I3 (nx39517z7), .I4 (nx39518z5)) ;
         defparam ix28307z24268.INIT = 32'h56A659A9;
    LUT2 ix15577z1328 (.O (nx15577z2), .I0 (\fsm_output(30)  ), .I1 (nx15577z3)
         ) ;
         defparam ix15577z1328.INIT = 4'hE;
    LUT3 ix55084z1353 (.O (nx55084z2), .I0 (\fsm_output(21)  ), .I1 (nx51911z1)
         , .I2 (nx50040z7)) ;
         defparam ix55084z1353.INIT = 8'h27;
    LUT3 ix55085z1353 (.O (nx55085z2), .I0 (\fsm_output(21)  ), .I1 (nx12188z84)
         , .I2 (nx50039z8)) ;
         defparam ix55085z1353.INIT = 8'h27;
    LUT3 ix55086z1353 (.O (nx55086z2), .I0 (\fsm_output(21)  ), .I1 (nx12188z83)
         , .I2 (nx50040z9)) ;
         defparam ix55086z1353.INIT = 8'h27;
    LUT3 ix55087z1353 (.O (nx55087z2), .I0 (\fsm_output(21)  ), .I1 (nx12188z82)
         , .I2 (nx39520z7)) ;
         defparam ix55087z1353.INIT = 8'h27;
    LUT3 ix55088z1353 (.O (nx55088z2), .I0 (\fsm_output(21)  ), .I1 (nx12188z81)
         , .I2 (nx39517z8)) ;
         defparam ix55088z1353.INIT = 8'h27;
    LUT3 ix55089z1353 (.O (nx55089z1), .I0 (\fsm_output(21)  ), .I1 (nx12188z80)
         , .I2 (nx12188z25)) ;
         defparam ix55089z1353.INIT = 8'h27;
    LUT2 ix16626z1326 (.O (nx16626z3), .I0 (nx12188z63), .I1 (nx12188z62)) ;
         defparam ix16626z1326.INIT = 4'h7;
    LUT2 ix16624z1323 (.O (nx16624z2), .I0 (nx12188z69), .I1 (nx50040z7)) ;
         defparam ix16624z1323.INIT = 4'h9;
    LUT6 ix16623z23160 (.O (nx16623z3), .I0 (nx12188z64), .I1 (nx12188z65), .I2 (
         nx12188z66), .I3 (nx12188z67), .I4 (nx12188z68), .I5 (nx50039z8)) ;
         defparam ix16623z23160.INIT = 64'h6AAAAAAA95555555;
    LUT4 ix16621z28600 (.O (nx16621z3), .I0 (nx12188z66), .I1 (nx12188z67), .I2 (
         nx12188z68), .I3 (nx39520z7)) ;
         defparam ix16621z28600.INIT = 16'h6A95;
    LUT4 ix55217z29110 (.O (nx55217z3), .I0 (nx12188z46), .I1 (nx12188z44), .I2 (
         nx12188z45), .I3 (nx50039z5)) ;
         defparam ix55217z29110.INIT = 16'h6C93;
    LUT2 ix55219z1323 (.O (nx55219z2), .I0 (nx12188z53), .I1 (nx12188z84)) ;
         defparam ix55219z1323.INIT = 4'h9;
    LUT6 ix55220z23160 (.O (nx55220z3), .I0 (nx12188z48), .I1 (nx12188z49), .I2 (
         nx12188z50), .I3 (nx12188z51), .I4 (nx12188z52), .I5 (nx12188z83)) ;
         defparam ix55220z23160.INIT = 64'h6AAAAAAA95555555;
    LUT4 ix55222z28600 (.O (nx55222z3), .I0 (nx12188z50), .I1 (nx12188z51), .I2 (
         nx12188z52), .I3 (nx12188z81)) ;
         defparam ix55222z28600.INIT = 16'h6A95;
    LUT4 ix44433z52149 (.O (nx44433z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .I2 (nx44433z3), .I3 (
         nx12188z24)) ;
         defparam ix44433z52149.INIT = 16'hC693;
    LUT4 ix39057z52149 (.O (nx39057z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .I2 (nx39057z3), .I3 (
         nx39057z4)) ;
         defparam ix39057z52149.INIT = 16'hC693;
    LUT4 ix39056z52149 (.O (nx39056z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .I2 (nx39056z3), .I3 (
         nx39056z4)) ;
         defparam ix39056z52149.INIT = 16'hC693;
    LUT4 ix39055z52149 (.O (nx39055z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .I2 (nx12188z15), .I3 (
         nx12188z14)) ;
         defparam ix39055z52149.INIT = 16'hC693;
    LUT4 ix39054z52149 (.O (nx39054z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .I2 (nx12188z13), .I3 (
         nx12188z12)) ;
         defparam ix39054z52149.INIT = 16'hC693;
    LUT4 ix39053z52149 (.O (nx39053z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .I2 (nx39053z3), .I3 (
         nx12188z9)) ;
         defparam ix39053z52149.INIT = 16'hC693;
    LUT4 ix39052z52149 (.O (nx39052z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .I2 (nx39052z3), .I3 (
         nx39052z4)) ;
         defparam ix39052z52149.INIT = 16'hC693;
    LUT4 ix39051z52149 (.O (nx39051z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .I2 (nx12188z4), .I3 (
         nx12188z3)) ;
         defparam ix39051z52149.INIT = 16'hC693;
    LUT5 ix26275z13119 (.O (nx26275z2), .I0 (nx26275z3), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .I3 (nx12188z70), .I4 (
         nx44433z3)) ;
         defparam ix26275z13119.INIT = 32'hE2D12E1D;
    LUT5 ix33885z37450 (.O (nx33885z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .I2 (nx12188z71), .I3 (
         nx39057z3), .I4 (nx33885z4)) ;
         defparam ix33885z37450.INIT = 32'hD8728D27;
    LUT5 ix33884z37450 (.O (nx33884z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .I2 (nx12188z72), .I3 (
         nx39056z3), .I4 (nx33884z4)) ;
         defparam ix33884z37450.INIT = 32'hD8728D27;
    LUT5 ix33883z37450 (.O (nx33883z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .I2 (nx12188z73), .I3 (
         nx12188z15), .I4 (nx33883z4)) ;
         defparam ix33883z37450.INIT = 32'hD8728D27;
    LUT5 ix33882z37450 (.O (nx33882z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .I2 (nx12188z74), .I3 (
         nx12188z13), .I4 (nx33882z4)) ;
         defparam ix33882z37450.INIT = 32'hD8728D27;
    LUT5 ix33881z37450 (.O (nx33881z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .I2 (nx12188z75), .I3 (
         nx39053z3), .I4 (nx33881z4)) ;
         defparam ix33881z37450.INIT = 32'hD8728D27;
    LUT5 ix33880z37450 (.O (nx33880z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .I2 (nx12188z76), .I3 (
         nx39052z3), .I4 (nx33880z4)) ;
         defparam ix33880z37450.INIT = 32'hD8728D27;
    LUT5 ix33879z37450 (.O (nx33879z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .I2 (nx12188z77), .I3 (
         nx12188z4), .I4 (nx33879z3)) ;
         defparam ix33879z37450.INIT = 32'hD8728D27;
    LUT6 ix31447z5205 (.O (nx31447z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I2 (\z_out_14(8)  ), .I3 (
         nx12188z78), .I4 (nx12188z54), .I5 (nx12188z70)) ;
         defparam ix31447z5205.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28713z21862 (.O (nx28713z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\z_out_14(7)  ), .I3 (
         nx12188z78), .I4 (nx12188z55)) ;
         defparam ix28713z21862.INIT = 32'hFAEE5044;
    LUT6 ix28713z5206 (.O (nx28713z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\z_out_14(7)  ), .I3 (
         nx12188z78), .I4 (nx12188z55), .I5 (nx12188z71)) ;
         defparam ix28713z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28712z21862 (.O (nx28712z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\z_out_14(6)  ), .I3 (
         nx12188z78), .I4 (nx12188z56)) ;
         defparam ix28712z21862.INIT = 32'hFAEE5044;
    LUT6 ix28712z5206 (.O (nx28712z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\z_out_14(6)  ), .I3 (
         nx12188z78), .I4 (nx12188z56), .I5 (nx12188z72)) ;
         defparam ix28712z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28711z21862 (.O (nx28711z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\z_out_14(5)  ), .I3 (
         nx12188z78), .I4 (nx12188z57)) ;
         defparam ix28711z21862.INIT = 32'hFAEE5044;
    LUT6 ix28711z5206 (.O (nx28711z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\z_out_14(5)  ), .I3 (
         nx12188z78), .I4 (nx12188z57), .I5 (nx12188z73)) ;
         defparam ix28711z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28710z21862 (.O (nx28710z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\z_out_14(4)  ), .I3 (
         nx12188z78), .I4 (nx12188z58)) ;
         defparam ix28710z21862.INIT = 32'hFAEE5044;
    LUT6 ix28710z5206 (.O (nx28710z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\z_out_14(4)  ), .I3 (
         nx12188z78), .I4 (nx12188z58), .I5 (nx12188z74)) ;
         defparam ix28710z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28709z21862 (.O (nx28709z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\z_out_14(3)  ), .I3 (
         nx12188z78), .I4 (nx12188z59)) ;
         defparam ix28709z21862.INIT = 32'hFAEE5044;
    LUT6 ix28709z5206 (.O (nx28709z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\z_out_14(3)  ), .I3 (
         nx12188z78), .I4 (nx12188z59), .I5 (nx12188z75)) ;
         defparam ix28709z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28708z21862 (.O (nx28708z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\z_out_14(2)  ), .I3 (
         nx12188z78), .I4 (nx12188z60)) ;
         defparam ix28708z21862.INIT = 32'hFAEE5044;
    LUT6 ix28708z5206 (.O (nx28708z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\z_out_14(2)  ), .I3 (
         nx12188z78), .I4 (nx12188z60), .I5 (nx12188z76)) ;
         defparam ix28708z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix28707z21862 (.O (nx28707z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\z_out_14(1)  ), .I3 (
         nx12188z78), .I4 (nx12188z61)) ;
         defparam ix28707z21862.INIT = 32'hFAEE5044;
    LUT6 ix28707z5206 (.O (nx28707z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\z_out_14(1)  ), .I3 (
         nx12188z78), .I4 (nx12188z61), .I5 (nx12188z77)) ;
         defparam ix28707z5206.INIT = 64'hF0CC5A66A5990F33;
    LUT5 ix24129z36969 (.O (nx24129z2), .I0 (nx26275z3), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .I3 (nx12188z54), .I4 (
         nx12188z24)) ;
         defparam ix24129z36969.INIT = 32'hB8748B47;
    LUT4 ix46783z44680 (.O (nx46783z3), .I0 (nx46783z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .I3 (nx12188z55)) ;
         defparam ix46783z44680.INIT = 16'hA965;
    LUT4 ix46784z44680 (.O (nx46784z3), .I0 (nx46784z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .I3 (nx12188z56)) ;
         defparam ix46784z44680.INIT = 16'hA965;
    LUT4 ix46785z44680 (.O (nx46785z3), .I0 (nx46785z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .I3 (nx12188z57)) ;
         defparam ix46785z44680.INIT = 16'hA965;
    LUT4 ix46786z44680 (.O (nx46786z3), .I0 (nx46786z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .I3 (nx12188z58)) ;
         defparam ix46786z44680.INIT = 16'hA965;
    LUT4 ix46787z44680 (.O (nx46787z3), .I0 (nx46787z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .I3 (nx12188z59)) ;
         defparam ix46787z44680.INIT = 16'hA965;
    LUT4 ix46788z44680 (.O (nx46788z3), .I0 (nx46788z2), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .I3 (nx12188z60)) ;
         defparam ix46788z44680.INIT = 16'hA965;
    LUT4 ix46789z44680 (.O (nx46789z2), .I0 (nx46789z1), .I1 (\fsm_output(25)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .I3 (nx12188z61)) ;
         defparam ix46789z44680.INIT = 16'hA965;
    LUT6 ix2319z8993 (.O (nx2319z2), .I0 (p_nbus_Src_rsc_singleport_data_out[0])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22387z3), .I3 (nx37767z7), .I4 (nx22387z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[0])) ;
         defparam ix2319z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3057z8993 (.O (nx3057z3), .I0 (p_nbus_Src_rsc_singleport_data_out[1])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22388z3), .I3 (nx37767z7), .I4 (nx22388z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[1])) ;
         defparam ix3057z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3058z8993 (.O (nx3058z3), .I0 (p_nbus_Src_rsc_singleport_data_out[2])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22389z3), .I3 (nx37767z7), .I4 (nx22389z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[2])) ;
         defparam ix3058z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3059z8993 (.O (nx3059z3), .I0 (p_nbus_Src_rsc_singleport_data_out[3])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22390z3), .I3 (nx37767z7), .I4 (nx22390z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[3])) ;
         defparam ix3059z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3060z8993 (.O (nx3060z3), .I0 (p_nbus_Src_rsc_singleport_data_out[4])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22391z3), .I3 (nx37767z7), .I4 (nx22391z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[4])) ;
         defparam ix3060z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3061z8993 (.O (nx3061z3), .I0 (p_nbus_Src_rsc_singleport_data_out[5])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22392z3), .I3 (nx37767z7), .I4 (nx22392z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[5])) ;
         defparam ix3061z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3062z8993 (.O (nx3062z3), .I0 (p_nbus_Src_rsc_singleport_data_out[6])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx22393z3), .I3 (nx37767z7), .I4 (nx22393z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[6])) ;
         defparam ix3062z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 ix3063z8993 (.O (nx3063z2), .I0 (p_nbus_Src_rsc_singleport_data_out[7])
         , .I1 (Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt)
         , .I2 (nx37767z6), .I3 (nx37767z7), .I4 (nx37767z2), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[7])) ;
         defparam ix3063z8993.INIT = 64'hE2FF1D00E2001DFF;
    LUT3 ix56443z1469 (.O (nx56443z3), .I0 (nx56443z2), .I1 (\fsm_output(21)  )
         , .I2 (nx50039z5)) ;
         defparam ix56443z1469.INIT = 8'h9A;
    LUT6 ix56442z37627 (.O (nx56442z3), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[1]), .I2 (nx12188z18)
         , .I3 (nx12188z27), .I4 (nx51911z1), .I5 (nx50039z5)) ;
         defparam ix56442z37627.INIT = 64'h72272772D88D8DD8;
    LUT3 ix56441z1530 (.O (nx56441z2), .I0 (\fsm_output(21)  ), .I1 (nx39517z2)
         , .I2 (nx56441z3)) ;
         defparam ix56441z1530.INIT = 8'hD8;
    LUT5 ix56441z37627 (.O (nx56441z4), .I0 (\fsm_output(21)  ), .I1 (nx39517z2)
         , .I2 (nx56441z3), .I3 (nx12188z84), .I4 (nx51911z1)) ;
         defparam ix56441z37627.INIT = 32'h27728DD8;
    LUT3 ix56440z1530 (.O (nx56440z2), .I0 (\fsm_output(21)  ), .I1 (nx56440z3)
         , .I2 (nx56440z4)) ;
         defparam ix56440z1530.INIT = 8'hD8;
    LUT5 ix56440z37627 (.O (nx56440z5), .I0 (\fsm_output(21)  ), .I1 (nx56440z3)
         , .I2 (nx56440z4), .I3 (nx12188z83), .I4 (nx12188z84)) ;
         defparam ix56440z37627.INIT = 32'h27728DD8;
    LUT3 ix56439z1530 (.O (nx56439z2), .I0 (\fsm_output(21)  ), .I1 (nx56439z3)
         , .I2 (nx56439z4)) ;
         defparam ix56439z1530.INIT = 8'hD8;
    LUT5 ix56439z37627 (.O (nx56439z5), .I0 (\fsm_output(21)  ), .I1 (nx56439z3)
         , .I2 (nx56439z4), .I3 (nx12188z82), .I4 (nx12188z83)) ;
         defparam ix56439z37627.INIT = 32'h27728DD8;
    LUT3 ix56438z1530 (.O (nx56438z2), .I0 (\fsm_output(21)  ), .I1 (nx56438z3)
         , .I2 (nx56438z4)) ;
         defparam ix56438z1530.INIT = 8'hD8;
    LUT5 ix56438z37627 (.O (nx56438z5), .I0 (\fsm_output(21)  ), .I1 (nx56438z3)
         , .I2 (nx56438z4), .I3 (nx12188z81), .I4 (nx12188z82)) ;
         defparam ix56438z37627.INIT = 32'h27728DD8;
    LUT3 ix56437z1530 (.O (nx56437z2), .I0 (\fsm_output(21)  ), .I1 (nx56437z3)
         , .I2 (nx56437z4)) ;
         defparam ix56437z1530.INIT = 8'hD8;
    LUT5 ix56437z37627 (.O (nx56437z5), .I0 (\fsm_output(21)  ), .I1 (nx56437z3)
         , .I2 (nx56437z4), .I3 (nx12188z80), .I4 (nx12188z81)) ;
         defparam ix56437z37627.INIT = 32'h27728DD8;
    LUT3 ix56436z1530 (.O (nx56436z1), .I0 (\fsm_output(21)  ), .I1 (nx56436z2)
         , .I2 (nx56436z3)) ;
         defparam ix56436z1530.INIT = 8'hD8;
    LUT5 ix56436z37627 (.O (nx56436z4), .I0 (\fsm_output(21)  ), .I1 (nx56436z2)
         , .I2 (nx56436z3), .I3 (nx12188z43), .I4 (nx12188z80)) ;
         defparam ix56436z37627.INIT = 32'h27728DD8;
    LUT6 ix41127z1311 (.O (nx41127z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3), .I4 (nx27120z4), .I5 (nx12188z1)) ;
         defparam ix41127z1311.INIT = 64'hFFFD00020002FFFD;
    LUT2 ix41123z1320 (.O (nx41123z2), .I0 (nx27125z2), .I1 (nx12188z67)) ;
         defparam ix41123z1320.INIT = 4'h6;
    LUT6 ix12188z23348 (.O (nx12188z188), .I0 (\fsm_output(16)  ), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[9]), .I4 (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7[0]), .I5 (
         Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[0])) ;
         defparam ix12188z23348.INIT = 64'h0103050F113355FF;
    LUT6 ix12188z5427 (.O (nx12188z187), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[7]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[8]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[7])) ;
         defparam ix12188z5427.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5426 (.O (nx12188z186), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[6]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[7]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[6])) ;
         defparam ix12188z5426.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5425 (.O (nx12188z185), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[5]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[6]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[5])) ;
         defparam ix12188z5425.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5424 (.O (nx12188z184), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[4]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[5]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[4])) ;
         defparam ix12188z5424.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5423 (.O (nx12188z183), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[3]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[4]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[3])) ;
         defparam ix12188z5423.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5422 (.O (nx12188z182), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[2]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[3]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[2])) ;
         defparam ix12188z5422.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5421 (.O (nx12188z181), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[1]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[2]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[1])) ;
         defparam ix12188z5421.INIT = 64'h02220AAA03330FFF;
    LUT6 ix12188z5420 (.O (nx12188z179), .I0 (nx12188z180), .I1 (
         \fsm_output(15)  ), .I2 (\fsm_output(13)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[0]), .I4 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[1]), .I5 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_psp[0])) ;
         defparam ix12188z5420.INIT = 64'h02220AAA03330FFF;
    LUT2 ix5050z1322 (.O (nx5050z1), .I0 (nx57765z1), .I1 (\fsm_output(11)  )) ;
         defparam ix5050z1322.INIT = 4'h8;
    LUT2 ix33068z1322 (.O (nx33068z1), .I0 (nx57765z1), .I1 (\fsm_output(13)  )
         ) ;
         defparam ix33068z1322.INIT = 4'h8;
    LUT2 ix23913z1322 (.O (nx23913z1), .I0 (nx57765z1), .I1 (\fsm_output(23)  )
         ) ;
         defparam ix23913z1322.INIT = 4'h8;
    LUT2 ix2736z1322 (.O (nx2736z1), .I0 (nx57765z1), .I1 (\fsm_output(25)  )) ;
         defparam ix2736z1322.INIT = 4'h8;
    LUT4 ix9010z6230 (.O (nx9010z2), .I0 (nx12188z46), .I1 (nx9010z3), .I2 (
         nx12188z44), .I3 (nx12188z45)) ;
         defparam ix9010z6230.INIT = 16'h1333;
    LUT4 ix9010z33858 (.O (nx9010z1), .I0 (nx57765z1), .I1 (nx9010z2), .I2 (
         \fsm_output(33)  ), .I3 (st_copy_y_1_2_tr0)) ;
         defparam ix9010z33858.INIT = 16'h7F20;
    LUT5 ix36142z42410 (.O (nx36142z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[1]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[1]), .I3 (nx15382z2), .I4 (
         nx12188z124)) ;
         defparam ix36142z42410.INIT = 32'hF5DDA088;
    LUT5 ix37139z42410 (.O (nx37139z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[2]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[2]), .I3 (nx15382z2), .I4 (
         nx12188z122)) ;
         defparam ix37139z42410.INIT = 32'hF5DDA088;
    LUT5 ix38136z42410 (.O (nx38136z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[3]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[3]), .I3 (nx15382z2), .I4 (
         nx12188z120)) ;
         defparam ix38136z42410.INIT = 32'hF5DDA088;
    LUT5 ix39133z42410 (.O (nx39133z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[4]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[4]), .I3 (nx15382z2), .I4 (
         nx12188z118)) ;
         defparam ix39133z42410.INIT = 32'hF5DDA088;
    LUT5 ix40130z42410 (.O (nx40130z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[5]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[5]), .I3 (nx15382z2), .I4 (
         nx12188z116)) ;
         defparam ix40130z42410.INIT = 32'hF5DDA088;
    LUT5 ix41127z42410 (.O (nx41127z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[6]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[6]), .I3 (nx15382z2), .I4 (
         nx12188z114)) ;
         defparam ix41127z42410.INIT = 32'hF5DDA088;
    LUT5 ix42124z42410 (.O (nx42124z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[7]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[7]), .I3 (nx15382z2), .I4 (
         nx12188z112)) ;
         defparam ix42124z42410.INIT = 32'hF5DDA088;
    LUT5 ix43121z42410 (.O (nx43121z1), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_7[8]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[8]), .I3 (nx15382z2), .I4 (
         nx12188z110)) ;
         defparam ix43121z42410.INIT = 32'hF5DDA088;
    LUT5 ix8403z36290 (.O (nx8403z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[1]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[1]), .I3 (nx15382z2), .I4 (
         nx12188z164)) ;
         defparam ix8403z36290.INIT = 32'hDDF588A0;
    LUT5 ix9400z36290 (.O (nx9400z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[2]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[2]), .I3 (nx15382z2), .I4 (
         nx12188z163)) ;
         defparam ix9400z36290.INIT = 32'hDDF588A0;
    LUT5 ix10397z36290 (.O (nx10397z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[3]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[3]), .I3 (nx15382z2), .I4 (
         nx12188z103)) ;
         defparam ix10397z36290.INIT = 32'hDDF588A0;
    LUT5 ix11394z36290 (.O (nx11394z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[4]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[4]), .I3 (nx15382z2), .I4 (
         nx12188z101)) ;
         defparam ix11394z36290.INIT = 32'hDDF588A0;
    LUT5 ix12391z36290 (.O (nx12391z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[5]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[5]), .I3 (nx15382z2), .I4 (
         nx12188z160)) ;
         defparam ix12391z36290.INIT = 32'hDDF588A0;
    LUT5 ix13388z36290 (.O (nx13388z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[6]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[6]), .I3 (nx15382z2), .I4 (
         nx12188z159)) ;
         defparam ix13388z36290.INIT = 32'hDDF588A0;
    LUT5 ix14385z36290 (.O (nx14385z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[7]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[7]), .I3 (nx15382z2), .I4 (
         nx12188z158)) ;
         defparam ix14385z36290.INIT = 32'hDDF588A0;
    LUT5 ix15382z36290 (.O (nx15382z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_5[8]), .I2 (
         Main_Trans_Ond_Opt_core_inst_z_out_8[8]), .I3 (nx15382z2), .I4 (
         nx12188z93)) ;
         defparam ix15382z36290.INIT = 32'hDDF588A0;
    LUT2 ix30297z1322 (.O (nx30297z1), .I0 (nx57765z1), .I1 (\fsm_output(2)  )
         ) ;
         defparam ix30297z1322.INIT = 4'h8;
    LUT3 ix37616z1419 (.O (nx37616z1), .I0 (nx39520z4), .I1 (nx32631z3), .I2 (
         nx57253z2)) ;
         defparam ix37616z1419.INIT = 8'h69;
    LUT6 ix36619z24264 (.O (nx36619z1), .I0 (nx50040z4), .I1 (nx39520z4), .I2 (
         nx32631z3), .I3 (nx50040z5), .I4 (nx51877z3), .I5 (nx57253z2)) ;
         defparam ix36619z24264.INIT = 64'h659A9A65A65959A6;
    LUT3 ix35622z1464 (.O (nx35622z1), .I0 (nx50039z4), .I1 (nx32631z2), .I2 (
         nx51876z3)) ;
         defparam ix35622z1464.INIT = 8'h96;
    LUT5 ix34625z14315 (.O (nx34625z1), .I0 (nx50039z4), .I1 (nx50038z3), .I2 (
         nx32631z2), .I3 (nx50040z6), .I4 (nx51876z3)) ;
         defparam ix34625z14315.INIT = 32'h209332C9;
    LUT6 ix33628z38 (.O (nx33628z1), .I0 (nx50039z4), .I1 (nx50038z3), .I2 (
         nx32631z2), .I3 (nx50039z6), .I4 (nx50040z6), .I5 (nx51876z3)) ;
         defparam ix33628z38.INIT = 64'h20DFB34C32CDFB04;
    LUT6 ix32631z1315 (.O (nx32631z3), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39519z7), .I5 (nx39517z7)) ;
         defparam ix32631z1315.INIT = 64'h370000C837C8FFFF;
    LUT6 ix32631z282 (.O (nx32631z2), .I0 (nx50040z4), .I1 (nx39520z4), .I2 (
         nx32631z3), .I3 (nx50040z5), .I4 (nx51877z3), .I5 (nx57253z2)) ;
         defparam ix32631z282.INIT = 64'h2010BA75A251FBF7;
    LUT6 ix32631z2338 (.O (nx32631z1), .I0 (nx50039z4), .I1 (nx50038z3), .I2 (
         nx32631z2), .I3 (nx50039z6), .I4 (nx50040z6), .I5 (nx51876z3)) ;
         defparam ix32631z2338.INIT = 64'hDF004C00CD000400;
    LUT2 ix15240z1322 (.O (nx15240z1), .I0 (nx57765z1), .I1 (\fsm_output(38)  )
         ) ;
         defparam ix15240z1322.INIT = 4'h8;
    LUT2 ix12188z1326 (.O (nx12188z108), .I0 (nx12188z18), .I1 (nx12188z27)) ;
         defparam ix12188z1326.INIT = 4'h6;
    LUT4 ix12188z28369 (.O (nx12188z165), .I0 (nx12188z21), .I1 (nx12188z18), .I2 (
         nx39517z10), .I3 (nx12188z27)) ;
         defparam ix12188z28369.INIT = 16'h69A5;
    LUT3 ix30487z1464 (.O (nx30487z1), .I0 (nx27124z6), .I1 (nx27124z7), .I2 (
         nx27124z9)) ;
         defparam ix30487z1464.INIT = 8'h96;
    LUT2 ix60014z1322 (.O (nx60014z1), .I0 (nx57765z1), .I1 (\fsm_output(9)  )
         ) ;
         defparam ix60014z1322.INIT = 4'h8;
    LUT6 ix47320z56746 (.O (nx47320z1), .I0 (\fsm_output(21)  ), .I1 (nx39517z2)
         , .I2 (nx12188z18), .I3 (nx12188z25), .I4 (nx39517z6), .I5 (nx39517z9)
         ) ;
         defparam ix47320z56746.INIT = 64'hD888D8882777D888;
    LUT2 ix30894z1322 (.O (nx30894z1), .I0 (nx57765z1), .I1 (\fsm_output(21)  )
         ) ;
         defparam ix30894z1322.INIT = 4'h8;
    LUT5 ix27122z2080 (.O (nx27122z4), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3), .I4 (nx39519z8)) ;
         defparam ix27122z2080.INIT = 32'hFD0202FD;
    LUT4 ix27123z55120 (.O (nx27123z4), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx39518z5)) ;
         defparam ix27123z55120.INIT = 16'hD22D;
    LUT3 ix27124z1419 (.O (nx27124z3), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx39517z10)) ;
         defparam ix27124z1419.INIT = 8'h69;
    LUT2 ix276z1320 (.O (nx276z2), .I0 (nx50039z6), .I1 (nx51876z3)) ;
         defparam ix276z1320.INIT = 4'h6;
    LUT2 ix275z1320 (.O (nx275z2), .I0 (nx50040z6), .I1 (nx51877z3)) ;
         defparam ix275z1320.INIT = 4'h6;
    LUT2 ix274z1320 (.O (nx274z2), .I0 (nx51876z3), .I1 (nx57253z2)) ;
         defparam ix274z1320.INIT = 4'h6;
    LUT2 ix273z1320 (.O (nx273z2), .I0 (nx51877z3), .I1 (nx39517z7)) ;
         defparam ix273z1320.INIT = 4'h6;
    LUT2 ix51874z1320 (.O (nx51874z2), .I0 (nx50039z6), .I1 (nx50039z5)) ;
         defparam ix51874z1320.INIT = 4'h6;
    LUT2 ix51875z1320 (.O (nx51875z2), .I0 (nx50040z6), .I1 (nx50040z7)) ;
         defparam ix51875z1320.INIT = 4'h6;
    LUT2 ix51876z1320 (.O (nx51876z2), .I0 (nx51876z3), .I1 (nx50039z8)) ;
         defparam ix51876z1320.INIT = 4'h6;
    LUT2 ix51877z1320 (.O (nx51877z2), .I0 (nx51877z3), .I1 (nx50040z9)) ;
         defparam ix51877z1320.INIT = 4'h6;
    LUT2 ix57253z1320 (.O (nx57253z3), .I0 (nx57253z2), .I1 (nx39520z7)) ;
         defparam ix57253z1320.INIT = 4'h6;
    LUT2 ix57254z1320 (.O (nx57254z1), .I0 (nx39517z7), .I1 (nx39517z8)) ;
         defparam ix57254z1320.INIT = 4'h6;
    LUT2 ix44612z1320 (.O (nx44612z2), .I0 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I1 (
         nx44612z3)) ;
         defparam ix44612z1320.INIT = 4'h6;
    LUT3 ix16726z1547 (.O (nx16726z2), .I0 (nx50038z3), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx50040z7)) ;
         defparam ix16726z1547.INIT = 8'hE8;
    LUT6 ix50038z28254 (.O (nx50038z2), .I0 (nx50039z4), .I1 (nx50038z3), .I2 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I3 (
         nx50039z7), .I4 (nx50039z8), .I5 (nx50040z7)) ;
         defparam ix50038z28254.INIT = 64'h3C9696C3C369693C;
    LUT6 ix50039z3234 (.O (nx50039z3), .I0 (\fsm_output(21)  ), .I1 (nx50040z6)
         , .I2 (nx50040z8), .I3 (nx50040z9), .I4 (nx50040z7), .I5 (nx50040z4)) ;
         defparam ix50039z3234.INIT = 64'h0DDF088F022F077F;
    LUT3 ix50040z1533 (.O (nx50040z5), .I0 (\fsm_output(21)  ), .I1 (nx50040z6)
         , .I2 (nx50040z7)) ;
         defparam ix50040z1533.INIT = 8'hD8;
    LUT6 ix50040z1316 (.O (nx50040z4), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39519z7), .I5 (nx39520z5)) ;
         defparam ix50040z1316.INIT = 64'h3700000000000000;
    LUT5 ix50040z39819 (.O (nx50040z2), .I0 (nx50040z3), .I1 (nx50040z4), .I2 (
         nx50040z5), .I3 (nx50040z8), .I4 (nx50040z9)) ;
         defparam ix50040z39819.INIT = 32'h69969669;
    LUT3 ix50040z1338 (.O (nx50040z3), .I0 (nx39520z4), .I1 (nx39520z6), .I2 (
         nx39520z7)) ;
         defparam ix50040z1338.INIT = 8'h17;
    LUT6 ix39520z1316 (.O (nx39520z4), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39519z7), .I5 (nx39520z5)) ;
         defparam ix39520z1316.INIT = 64'hC8FFFFFF37000000;
    LUT6 ix39520z39775 (.O (nx39520z3), .I0 (nx39519z6), .I1 (nx39520z4), .I2 (
         nx39520z6), .I3 (nx39519z8), .I4 (nx39517z8), .I5 (nx39520z7)) ;
         defparam ix39520z39775.INIT = 64'h3C6969C3C396963C;
    LUT5 ix39519z15397 (.O (nx39519z6), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39519z7)) ;
         defparam ix39519z15397.INIT = 32'hC8FF3700;
    LUT4 ix39519z39820 (.O (nx39519z4), .I0 (nx39519z5), .I1 (nx39519z6), .I2 (
         nx39519z8), .I3 (nx39517z8)) ;
         defparam ix39519z39820.INIT = 16'h9669;
    LUT6 ix39519z1315 (.O (nx39519z5), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (nx39519z3), .I4 (nx39518z5), .I5 (nx12188z25)) ;
         defparam ix39519z1315.INIT = 64'h000037C837C8FFFF;
    LUT4 ix39518z28345 (.O (nx39518z3), .I0 (nx39518z2), .I1 (nx39518z4), .I2 (
         nx39518z5), .I3 (nx12188z25)) ;
         defparam ix39518z28345.INIT = 16'h6996;
    LUT5 ix39518z24098 (.O (nx39518z2), .I0 (nx39517z4), .I1 (nx39517z6), .I2 (
         nx39517z9), .I3 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         nx39517z10)) ;
         defparam ix39518z24098.INIT = 32'hFF595900;
    LUT5 ix39517z1918 (.O (nx39517z9), .I0 (\fsm_output(21)  ), .I1 (nx12188z26)
         , .I2 (nx39517z7), .I3 (nx12188z21), .I4 (nx39517z8)) ;
         defparam ix39517z1918.INIT = 32'h02020257;
    LUT5 ix39517z33957 (.O (nx39517z6), .I0 (\fsm_output(21)  ), .I1 (nx12188z26
         ), .I2 (nx39517z7), .I3 (nx12188z21), .I4 (nx39517z8)) ;
         defparam ix39517z33957.INIT = 32'h2A7F7F7F;
    LUT6 ix39517z47388 (.O (nx39517z5), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx39517z2), .I3 (nx12188z18), .I4 (nx12188z27), .I5 (nx12188z25)) ;
         defparam ix39517z47388.INIT = 64'h3120F7B32031B3F7;
    LUT2 ix50045z1316 (.O (nx50045z2), .I0 (nx12188z18), .I1 (nx12188z25)) ;
         defparam ix50045z1316.INIT = 4'h1;
    LUT4 ix39517z11419 (.O (nx39517z4), .I0 (\fsm_output(21)  ), .I1 (nx39517z2)
         , .I2 (nx12188z18), .I3 (nx12188z25)) ;
         defparam ix39517z11419.INIT = 16'h2777;
    LUT3 ix12188z1353 (.O (nx12188z35), .I0 (\fsm_output(38)  ), .I1 (nx12188z17
         ), .I2 (nx12188z16)) ;
         defparam ix12188z1353.INIT = 8'h27;
    LUT5 ix57164z549 (.O (nx57164z3), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3), .I4 (nx57164z4)) ;
         defparam ix57164z549.INIT = 32'h02FDFD02;
    LUT6 ix57165z56650 (.O (nx57165z3), .I0 (\fsm_output(38)  ), .I1 (nx12188z11
         ), .I2 (nx12188z10), .I3 (nx27124z4), .I4 (nx27124z12), .I5 (nx27123z3)
         ) ;
         defparam ix57165z56650.INIT = 64'hD8D827D82727D827;
    LUT5 ix57166z56650 (.O (nx57166z3), .I0 (\fsm_output(38)  ), .I1 (nx12188z8)
         , .I2 (nx12188z7), .I3 (nx27124z4), .I4 (nx27124z12)) ;
         defparam ix57166z56650.INIT = 32'h27D8D827;
    LUT4 ix57167z11515 (.O (nx57167z3), .I0 (\fsm_output(38)  ), .I1 (nx12188z6)
         , .I2 (nx12188z5), .I3 (nx27125z2)) ;
         defparam ix57167z11515.INIT = 16'h27D8;
    LUT6 ix28312z30818 (.O (nx28312z2), .I0 (nx28311z3), .I1 (\fsm_output(21)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[7]), .I3 (
         nx50040z8), .I4 (nx50039z5), .I5 (nx50040z7)) ;
         defparam ix28312z30818.INIT = 64'h3B08F7C4BF8C7340;
    LUT3 ix28311z1445 (.O (nx28311z5), .I0 (nx28309z5), .I1 (nx50040z8), .I2 (
         nx39520z6)) ;
         defparam ix28311z1445.INIT = 8'h80;
    LUT3 ix28311z1358 (.O (nx28311z3), .I0 (nx28310z3), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[6]), .I2 (nx50039z8)
         ) ;
         defparam ix28311z1358.INIT = 8'h2B;
    LUT5 ix28311z48294 (.O (nx28311z2), .I0 (nx28311z3), .I1 (\fsm_output(21)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[7]), .I3 (
         nx39520z6), .I4 (nx50040z7)) ;
         defparam ix28311z48294.INIT = 32'h7B48B784;
    LUT6 ix28310z34082 (.O (nx28310z3), .I0 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[5]), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[4]), .I2 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[3]), .I3 (nx39517z8)
         , .I4 (nx39520z7), .I5 (nx50040z9)) ;
         defparam ix28310z34082.INIT = 64'h0111155557777FFF;
    LUT5 ix28310z48294 (.O (nx28310z2), .I0 (nx28310z3), .I1 (\fsm_output(21)  )
         , .I2 (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[6]), .I3 (
         nx39519z8), .I4 (nx50039z8)) ;
         defparam ix28310z48294.INIT = 32'h7B48B784;
    LUT3 ix28309z1498 (.O (nx28309z2), .I0 (nx28309z3), .I1 (\fsm_output(21)  )
         , .I2 (nx39518z5)) ;
         defparam ix28309z1498.INIT = 8'hB8;
    LUT6 ix28309z28621 (.O (nx28309z3), .I0 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[5]), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[4]), .I2 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[3]), .I3 (nx39517z8)
         , .I4 (nx39520z7), .I5 (nx50040z9)) ;
         defparam ix28309z28621.INIT = 64'hA999955556666AAA;
    LUT6 ix28309z1317 (.O (nx28309z5), .I0 (nx12188z21), .I1 (nx12188z18), .I2 (
         nx39519z8), .I3 (nx39518z5), .I4 (nx39517z10), .I5 (nx12188z27)) ;
         defparam ix28309z1317.INIT = 64'hE0008000A0000000;
    LUT6 ix28308z58026 (.O (nx28308z2), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[4]), .I2 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[3]), .I3 (nx39517z10)
         , .I4 (nx39517z8), .I5 (nx39520z7)) ;
         defparam ix28308z58026.INIT = 64'hD78277227D28DD88;
    LUT4 ix28307z7299 (.O (nx28307z3), .I0 (nx12188z21), .I1 (nx12188z18), .I2 (
         nx39517z10), .I3 (nx12188z27)) ;
         defparam ix28307z7299.INIT = 16'h175F;
    LUT4 ix28307z30714 (.O (nx28307z1), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[3]), .I2 (nx12188z27)
         , .I3 (nx39517z8)) ;
         defparam ix28307z30714.INIT = 16'h72D8;
    LUT3 ix25232z1542 (.O (nx25232z2), .I0 (\fsm_output(13)  ), .I1 (nx44433z3)
         , .I2 (nx12188z24)) ;
         defparam ix25232z1542.INIT = 8'hE4;
    LUT4 ix25232z15295 (.O (nx25232z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .I2 (nx44433z3), .I3 (
         nx12188z24)) ;
         defparam ix25232z15295.INIT = 16'h369C;
    LUT3 ix25233z1542 (.O (nx25233z2), .I0 (\fsm_output(13)  ), .I1 (nx39057z3)
         , .I2 (nx39057z4)) ;
         defparam ix25233z1542.INIT = 8'hE4;
    LUT4 ix25233z15295 (.O (nx25233z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .I2 (nx39057z3), .I3 (
         nx39057z4)) ;
         defparam ix25233z15295.INIT = 16'h369C;
    LUT3 ix25234z1542 (.O (nx25234z2), .I0 (\fsm_output(13)  ), .I1 (nx39056z3)
         , .I2 (nx39056z4)) ;
         defparam ix25234z1542.INIT = 8'hE4;
    LUT4 ix25234z15295 (.O (nx25234z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .I2 (nx39056z3), .I3 (
         nx39056z4)) ;
         defparam ix25234z15295.INIT = 16'h369C;
    LUT3 ix25235z1542 (.O (nx25235z2), .I0 (\fsm_output(13)  ), .I1 (nx12188z15)
         , .I2 (nx12188z14)) ;
         defparam ix25235z1542.INIT = 8'hE4;
    LUT4 ix25235z15295 (.O (nx25235z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .I2 (nx12188z15), .I3 (
         nx12188z14)) ;
         defparam ix25235z15295.INIT = 16'h369C;
    LUT3 ix25236z1542 (.O (nx25236z2), .I0 (\fsm_output(13)  ), .I1 (nx12188z13)
         , .I2 (nx12188z12)) ;
         defparam ix25236z1542.INIT = 8'hE4;
    LUT4 ix25236z15295 (.O (nx25236z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .I2 (nx12188z13), .I3 (
         nx12188z12)) ;
         defparam ix25236z15295.INIT = 16'h369C;
    LUT3 ix25237z1542 (.O (nx25237z2), .I0 (\fsm_output(13)  ), .I1 (nx39053z3)
         , .I2 (nx12188z9)) ;
         defparam ix25237z1542.INIT = 8'hE4;
    LUT4 ix25237z15295 (.O (nx25237z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .I2 (nx39053z3), .I3 (
         nx12188z9)) ;
         defparam ix25237z15295.INIT = 16'h369C;
    LUT3 ix25238z1542 (.O (nx25238z2), .I0 (\fsm_output(13)  ), .I1 (nx39052z3)
         , .I2 (nx39052z4)) ;
         defparam ix25238z1542.INIT = 8'hE4;
    LUT4 ix25238z15295 (.O (nx25238z3), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .I2 (nx39052z3), .I3 (
         nx39052z4)) ;
         defparam ix25238z15295.INIT = 16'h369C;
    LUT4 ix25239z15295 (.O (nx25239z2), .I0 (\fsm_output(13)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .I2 (nx12188z4), .I3 (
         nx12188z3)) ;
         defparam ix25239z15295.INIT = 16'h369C;
    LUT3 ix25239z1542 (.O (nx25239z1), .I0 (\fsm_output(13)  ), .I1 (nx12188z4)
         , .I2 (nx12188z3)) ;
         defparam ix25239z1542.INIT = 8'hE4;
    LUT3 ix52942z1530 (.O (nx52942z1), .I0 (\fsm_output(25)  ), .I1 (nx12188z54)
         , .I2 (nx12188z70)) ;
         defparam ix52942z1530.INIT = 8'hD8;
    LUT3 ix52941z1530 (.O (nx52941z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z55)
         , .I2 (nx12188z71)) ;
         defparam ix52941z1530.INIT = 8'hD8;
    LUT3 ix52940z1530 (.O (nx52940z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z56)
         , .I2 (nx12188z72)) ;
         defparam ix52940z1530.INIT = 8'hD8;
    LUT3 ix52939z1530 (.O (nx52939z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z57)
         , .I2 (nx12188z73)) ;
         defparam ix52939z1530.INIT = 8'hD8;
    LUT3 ix52938z1530 (.O (nx52938z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z58)
         , .I2 (nx12188z74)) ;
         defparam ix52938z1530.INIT = 8'hD8;
    LUT3 ix52937z1530 (.O (nx52937z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z59)
         , .I2 (nx12188z75)) ;
         defparam ix52937z1530.INIT = 8'hD8;
    LUT3 ix52936z1530 (.O (nx52936z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z60)
         , .I2 (nx12188z76)) ;
         defparam ix52936z1530.INIT = 8'hD8;
    LUT3 ix52935z1530 (.O (nx52935z1), .I0 (\fsm_output(25)  ), .I1 (nx12188z61)
         , .I2 (nx12188z77)) ;
         defparam ix52935z1530.INIT = 8'hD8;
    LUT3 ix12188z1450 (.O (nx12188z151), .I0 (nx50040z6), .I1 (nx51876z3), .I2 (
         nx51877z3)) ;
         defparam ix12188z1450.INIT = 8'h80;
    LUT2 ix12188z1329 (.O (nx12188z150), .I0 (nx51876z3), .I1 (nx51877z3)) ;
         defparam ix12188z1329.INIT = 4'h8;
    LUT2 ix12188z1331 (.O (nx12188z152), .I0 (nx57253z2), .I1 (nx39517z7)) ;
         defparam ix12188z1331.INIT = 4'h8;
    LUT2 ix16626z1322 (.O (nx16626z2), .I0 (nx12188z63), .I1 (nx12188z62)) ;
         defparam ix16626z1322.INIT = 4'h8;
    LUT3 ix16625z1420 (.O (nx16625z3), .I0 (nx12188z63), .I1 (nx12188z62), .I2 (
         nx50039z5)) ;
         defparam ix16625z1420.INIT = 8'h69;
    LUT6 ix12188z1318 (.O (nx12188z63), .I0 (nx12188z1), .I1 (nx12188z64), .I2 (
         nx12188z65), .I3 (nx12188z66), .I4 (nx12188z67), .I5 (nx12188z68)) ;
         defparam ix12188z1318.INIT = 64'h8000000000000000;
    LUT2 ix16625z1320 (.O (nx16625z2), .I0 (nx12188z63), .I1 (nx12188z62)) ;
         defparam ix16625z1320.INIT = 4'h6;
    LUT6 ix12188z45009 (.O (nx12188z69), .I0 (nx12188z1), .I1 (nx12188z64), .I2 (
         nx12188z65), .I3 (nx12188z66), .I4 (nx12188z67), .I5 (nx12188z68)) ;
         defparam ix12188z45009.INIT = 64'h6AAAAAAAAAAAAAAA;
    LUT5 ix16623z45004 (.O (nx16623z2), .I0 (nx12188z64), .I1 (nx12188z65), .I2 (
         nx12188z66), .I3 (nx12188z67), .I4 (nx12188z68)) ;
         defparam ix16623z45004.INIT = 32'h6AAAAAAA;
    LUT5 ix16622z39544 (.O (nx16622z3), .I0 (nx12188z65), .I1 (nx12188z66), .I2 (
         nx12188z67), .I3 (nx12188z68), .I4 (nx50040z9)) ;
         defparam ix16622z39544.INIT = 32'h6AAA9555;
    LUT4 ix16622z28620 (.O (nx16622z2), .I0 (nx12188z65), .I1 (nx12188z66), .I2 (
         nx12188z67), .I3 (nx12188z68)) ;
         defparam ix16622z28620.INIT = 16'h6AAA;
    LUT3 ix16621z1420 (.O (nx16621z2), .I0 (nx12188z66), .I1 (nx12188z67), .I2 (
         nx12188z68)) ;
         defparam ix16621z1420.INIT = 8'h6A;
    LUT3 ix16620z1420 (.O (nx16620z3), .I0 (nx12188z67), .I1 (nx12188z68), .I2 (
         nx39517z8)) ;
         defparam ix16620z1420.INIT = 8'h69;
    LUT2 ix16620z1320 (.O (nx16620z2), .I0 (nx12188z67), .I1 (nx12188z68)) ;
         defparam ix16620z1320.INIT = 4'h6;
    LUT2 ix16619z1321 (.O (nx16619z1), .I0 (nx12188z68), .I1 (nx12188z25)) ;
         defparam ix16619z1321.INIT = 4'h6;
    LUT3 ix55217z1422 (.O (nx55217z2), .I0 (nx12188z46), .I1 (nx12188z44), .I2 (
         nx12188z45)) ;
         defparam ix55217z1422.INIT = 8'h6C;
    LUT3 ix55218z1420 (.O (nx55218z3), .I0 (nx12188z46), .I1 (nx12188z45), .I2 (
         nx51911z1)) ;
         defparam ix55218z1420.INIT = 8'h69;
    LUT6 ix12188z1316 (.O (nx12188z46), .I0 (nx12188z47), .I1 (nx12188z48), .I2 (
         nx12188z49), .I3 (nx12188z50), .I4 (nx12188z51), .I5 (nx12188z52)) ;
         defparam ix12188z1316.INIT = 64'h8000000000000000;
    LUT2 ix55218z1320 (.O (nx55218z2), .I0 (nx12188z46), .I1 (nx12188z45)) ;
         defparam ix55218z1320.INIT = 4'h6;
    LUT6 ix12188z45007 (.O (nx12188z53), .I0 (nx12188z47), .I1 (nx12188z48), .I2 (
         nx12188z49), .I3 (nx12188z50), .I4 (nx12188z51), .I5 (nx12188z52)) ;
         defparam ix12188z45007.INIT = 64'h6AAAAAAAAAAAAAAA;
    LUT5 ix55220z45004 (.O (nx55220z2), .I0 (nx12188z48), .I1 (nx12188z49), .I2 (
         nx12188z50), .I3 (nx12188z51), .I4 (nx12188z52)) ;
         defparam ix55220z45004.INIT = 32'h6AAAAAAA;
    LUT5 ix55221z39544 (.O (nx55221z3), .I0 (nx12188z49), .I1 (nx12188z50), .I2 (
         nx12188z51), .I3 (nx12188z52), .I4 (nx12188z82)) ;
         defparam ix55221z39544.INIT = 32'h6AAA9555;
    LUT4 ix55221z28620 (.O (nx55221z2), .I0 (nx12188z49), .I1 (nx12188z50), .I2 (
         nx12188z51), .I3 (nx12188z52)) ;
         defparam ix55221z28620.INIT = 16'h6AAA;
    LUT3 ix55222z1420 (.O (nx55222z2), .I0 (nx12188z50), .I1 (nx12188z51), .I2 (
         nx12188z52)) ;
         defparam ix55222z1420.INIT = 8'h6A;
    LUT3 ix55223z1420 (.O (nx55223z3), .I0 (nx12188z51), .I1 (nx12188z52), .I2 (
         nx12188z80)) ;
         defparam ix55223z1420.INIT = 8'h69;
    LUT2 ix55223z1320 (.O (nx55223z2), .I0 (nx12188z51), .I1 (nx12188z52)) ;
         defparam ix55223z1320.INIT = 4'h6;
    LUT2 ix55224z1321 (.O (nx55224z1), .I0 (nx12188z52), .I1 (nx12188z43)) ;
         defparam ix55224z1321.INIT = 4'h6;
    LUT3 ix33885z1542 (.O (nx33885z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z71)
         , .I2 (nx39057z3)) ;
         defparam ix33885z1542.INIT = 8'hE4;
    LUT3 ix33885z1518 (.O (nx33885z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I1 (\z_out_14(7)  ), .I2 (
         nx12188z78)) ;
         defparam ix33885z1518.INIT = 8'hCA;
    LUT3 ix33884z1542 (.O (nx33884z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z72)
         , .I2 (nx39056z3)) ;
         defparam ix33884z1542.INIT = 8'hE4;
    LUT3 ix33884z1518 (.O (nx33884z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I1 (\z_out_14(6)  ), .I2 (
         nx12188z78)) ;
         defparam ix33884z1518.INIT = 8'hCA;
    LUT3 ix33883z1542 (.O (nx33883z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z73)
         , .I2 (nx12188z15)) ;
         defparam ix33883z1542.INIT = 8'hE4;
    LUT3 ix33883z1518 (.O (nx33883z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I1 (\z_out_14(5)  ), .I2 (
         nx12188z78)) ;
         defparam ix33883z1518.INIT = 8'hCA;
    LUT3 ix33882z1542 (.O (nx33882z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z74)
         , .I2 (nx12188z13)) ;
         defparam ix33882z1542.INIT = 8'hE4;
    LUT3 ix33882z1518 (.O (nx33882z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I1 (\z_out_14(4)  ), .I2 (
         nx12188z78)) ;
         defparam ix33882z1518.INIT = 8'hCA;
    LUT3 ix33881z1542 (.O (nx33881z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z75)
         , .I2 (nx39053z3)) ;
         defparam ix33881z1542.INIT = 8'hE4;
    LUT3 ix33881z1518 (.O (nx33881z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I1 (\z_out_14(3)  ), .I2 (
         nx12188z78)) ;
         defparam ix33881z1518.INIT = 8'hCA;
    LUT3 ix33880z1542 (.O (nx33880z2), .I0 (\fsm_output(25)  ), .I1 (nx12188z76)
         , .I2 (nx39052z3)) ;
         defparam ix33880z1542.INIT = 8'hE4;
    LUT3 ix33880z1518 (.O (nx33880z4), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I1 (\z_out_14(2)  ), .I2 (
         nx12188z78)) ;
         defparam ix33880z1518.INIT = 8'hCA;
    LUT3 ix33879z1542 (.O (nx33879z1), .I0 (\fsm_output(25)  ), .I1 (nx12188z77)
         , .I2 (nx12188z4)) ;
         defparam ix33879z1542.INIT = 8'hE4;
    LUT3 ix33879z1518 (.O (nx33879z3), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I1 (\z_out_14(1)  ), .I2 (
         nx12188z78)) ;
         defparam ix33879z1518.INIT = 8'hCA;
    LUT6 ix7219z62958 (.O (nx7219z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I2 (\z_out_14(8)  ), .I3 (
         nx12188z78), .I4 (nx12188z54), .I5 (nx12188z70)) ;
         defparam ix7219z62958.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52941z62959 (.O (nx52941z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\z_out_14(7)  ), .I3 (
         nx12188z78), .I4 (nx12188z55), .I5 (nx12188z71)) ;
         defparam ix52941z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52940z62959 (.O (nx52940z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\z_out_14(6)  ), .I3 (
         nx12188z78), .I4 (nx12188z56), .I5 (nx12188z72)) ;
         defparam ix52940z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52939z62959 (.O (nx52939z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\z_out_14(5)  ), .I3 (
         nx12188z78), .I4 (nx12188z57), .I5 (nx12188z73)) ;
         defparam ix52939z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52938z62959 (.O (nx52938z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\z_out_14(4)  ), .I3 (
         nx12188z78), .I4 (nx12188z58), .I5 (nx12188z74)) ;
         defparam ix52938z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52937z62959 (.O (nx52937z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\z_out_14(3)  ), .I3 (
         nx12188z78), .I4 (nx12188z59), .I5 (nx12188z75)) ;
         defparam ix52937z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52936z62959 (.O (nx52936z3), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\z_out_14(2)  ), .I3 (
         nx12188z78), .I4 (nx12188z60), .I5 (nx12188z76)) ;
         defparam ix52936z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT6 ix52935z62959 (.O (nx52935z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\z_out_14(1)  ), .I3 (
         nx12188z78), .I4 (nx12188z61), .I5 (nx12188z77)) ;
         defparam ix52935z62959.INIT = 64'h0F33A5995A66F0CC;
    LUT3 ix26275z1517 (.O (nx26275z3), .I0 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I1 (\z_out_14(8)  ), .I2 (
         nx12188z78)) ;
         defparam ix26275z1517.INIT = 8'hCA;
    LUT5 ix46783z42410 (.O (nx46783z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\z_out_14(7)  ), .I3 (
         nx12188z78), .I4 (nx39057z4)) ;
         defparam ix46783z42410.INIT = 32'hF5DDA088;
    LUT5 ix46784z42410 (.O (nx46784z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\z_out_14(6)  ), .I3 (
         nx12188z78), .I4 (nx39056z4)) ;
         defparam ix46784z42410.INIT = 32'hF5DDA088;
    LUT5 ix46785z42410 (.O (nx46785z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\z_out_14(5)  ), .I3 (
         nx12188z78), .I4 (nx12188z14)) ;
         defparam ix46785z42410.INIT = 32'hF5DDA088;
    LUT5 ix46786z42410 (.O (nx46786z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\z_out_14(4)  ), .I3 (
         nx12188z78), .I4 (nx12188z12)) ;
         defparam ix46786z42410.INIT = 32'hF5DDA088;
    LUT5 ix46787z42410 (.O (nx46787z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\z_out_14(3)  ), .I3 (
         nx12188z78), .I4 (nx12188z9)) ;
         defparam ix46787z42410.INIT = 32'hF5DDA088;
    LUT5 ix46788z42410 (.O (nx46788z2), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\z_out_14(2)  ), .I3 (
         nx12188z78), .I4 (nx39052z4)) ;
         defparam ix46788z42410.INIT = 32'hF5DDA088;
    LUT5 ix46789z42410 (.O (nx46789z1), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\z_out_14(1)  ), .I3 (
         nx12188z78), .I4 (nx12188z3)) ;
         defparam ix46789z42410.INIT = 32'hF5DDA088;
    LUT4 ix22387z819 (.O (nx22387z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22387z5), .I3 (nx22387z6)) ;
         defparam ix22387z819.INIT = 16'hFE10;
    LUT6 ix22387z59170 (.O (nx22387z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[0]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22387z3), .I3 (nx37767z7), .I4 (nx22387z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[0])) ;
         defparam ix22387z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22388z819 (.O (nx22388z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22388z5), .I3 (nx22388z6)) ;
         defparam ix22388z819.INIT = 16'hFE10;
    LUT6 ix22388z59170 (.O (nx22388z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[1]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22388z3), .I3 (nx37767z7), .I4 (nx22388z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[1])) ;
         defparam ix22388z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22389z819 (.O (nx22389z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22389z5), .I3 (nx22389z6)) ;
         defparam ix22389z819.INIT = 16'hFE10;
    LUT6 ix22389z59170 (.O (nx22389z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[2]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22389z3), .I3 (nx37767z7), .I4 (nx22389z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[2])) ;
         defparam ix22389z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22390z819 (.O (nx22390z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22390z5), .I3 (nx22390z6)) ;
         defparam ix22390z819.INIT = 16'hFE10;
    LUT6 ix22390z59170 (.O (nx22390z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[3]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22390z3), .I3 (nx37767z7), .I4 (nx22390z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[3])) ;
         defparam ix22390z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22391z819 (.O (nx22391z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22391z5), .I3 (nx22391z6)) ;
         defparam ix22391z819.INIT = 16'hFE10;
    LUT6 ix22391z59170 (.O (nx22391z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[4]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22391z3), .I3 (nx37767z7), .I4 (nx22391z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[4])) ;
         defparam ix22391z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22392z819 (.O (nx22392z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22392z5), .I3 (nx22392z6)) ;
         defparam ix22392z819.INIT = 16'hFE10;
    LUT6 ix22392z59170 (.O (nx22392z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[5]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22392z3), .I3 (nx37767z7), .I4 (nx22392z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[5])) ;
         defparam ix22392z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix22393z819 (.O (nx22393z4), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx22393z5), .I3 (nx22393z6)) ;
         defparam ix22393z819.INIT = 16'hFE10;
    LUT6 ix22393z59170 (.O (nx22393z2), .I0 (
         p_nbus_Src_rsc_singleport_data_out[6]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22393z3), .I3 (nx37767z7), .I4 (nx22393z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[6])) ;
         defparam ix22393z59170.INIT = 64'h1D00E2FF1DFFE200;
    LUT4 ix37767z818 (.O (nx37767z2), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  ), .I2 (nx37767z3), .I3 (nx37767z4)) ;
         defparam ix37767z818.INIT = 16'hFE10;
    LUT2 ix37767z1318 (.O (nx37767z7), .I0 (\fsm_output(25)  ), .I1 (
         \fsm_output(23)  )) ;
         defparam ix37767z1318.INIT = 4'h1;
    LUT6 ix37767z59171 (.O (nx37767z5), .I0 (
         p_nbus_Src_rsc_singleport_data_out[7]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx37767z6), .I3 (nx37767z7), .I4 (nx37767z2), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[7])) ;
         defparam ix37767z59171.INIT = 64'h1D00E2FF1DFFE200;
    LUT2 ix32698z1320 (.O (nx32698z2), .I0 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1]), .I1 (nx50039z5)
         ) ;
         defparam ix32698z1320.INIT = 4'h6;
    LUT2 ix32697z1320 (.O (nx32697z2), .I0 (nx39517z2), .I1 (nx51911z1)) ;
         defparam ix32697z1320.INIT = 4'h6;
    LUT2 ix32696z1320 (.O (nx32696z2), .I0 (nx56440z3), .I1 (nx12188z84)) ;
         defparam ix32696z1320.INIT = 4'h6;
    LUT2 ix32695z1320 (.O (nx32695z2), .I0 (nx56439z3), .I1 (nx12188z83)) ;
         defparam ix32695z1320.INIT = 4'h6;
    LUT2 ix32694z1320 (.O (nx32694z2), .I0 (nx56438z3), .I1 (nx12188z82)) ;
         defparam ix32694z1320.INIT = 4'h6;
    LUT2 ix32693z1320 (.O (nx32693z2), .I0 (nx56437z3), .I1 (nx12188z81)) ;
         defparam ix32693z1320.INIT = 4'h6;
    LUT2 ix32692z1320 (.O (nx32692z1), .I0 (nx56436z2), .I1 (nx12188z80)) ;
         defparam ix32692z1320.INIT = 4'h6;
    LUT2 ix24883z1320 (.O (nx24883z2), .I0 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[1]), .I1 (
         nx50039z5)) ;
         defparam ix24883z1320.INIT = 4'h6;
    LUT2 ix24884z1320 (.O (nx24884z2), .I0 (
         Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[0]), .I1 (
         nx51911z1)) ;
         defparam ix24884z1320.INIT = 4'h6;
    LUT2 ix24885z1320 (.O (nx24885z2), .I0 (nx56441z3), .I1 (nx12188z84)) ;
         defparam ix24885z1320.INIT = 4'h6;
    LUT2 ix24886z1320 (.O (nx24886z2), .I0 (nx56440z4), .I1 (nx12188z83)) ;
         defparam ix24886z1320.INIT = 4'h6;
    LUT2 ix24887z1320 (.O (nx24887z2), .I0 (nx56439z4), .I1 (nx12188z82)) ;
         defparam ix24887z1320.INIT = 4'h6;
    LUT2 ix24888z1320 (.O (nx24888z2), .I0 (nx56438z4), .I1 (nx12188z81)) ;
         defparam ix24888z1320.INIT = 4'h6;
    LUT2 ix24889z1320 (.O (nx24889z2), .I0 (nx56437z4), .I1 (nx12188z80)) ;
         defparam ix24889z1320.INIT = 4'h6;
    LUT2 ix24890z1320 (.O (nx24890z1), .I0 (nx56436z3), .I1 (nx12188z43)) ;
         defparam ix24890z1320.INIT = 4'h6;
    LUT6 ix56443z56826 (.O (nx56443z2), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[2]), .I2 (nx12188z21)
         , .I3 (nx12188z18), .I4 (nx39517z10), .I5 (nx12188z27)) ;
         defparam ix56443z56826.INIT = 64'hD88D8DD88D8DD8D8;
    LUT4 ix56442z37626 (.O (nx56442z2), .I0 (\fsm_output(21)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_45_itm[1]), .I2 (nx12188z18)
         , .I3 (nx12188z27)) ;
         defparam ix56442z37626.INIT = 16'h8DD8;
    LUT4 ix27122z2079 (.O (nx27122z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3)) ;
         defparam ix27122z2079.INIT = 16'h02FD;
    LUT5 ix41126z2079 (.O (nx41126z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx27122z3), .I4 (nx12188z64)) ;
         defparam ix41126z2079.INIT = 32'hFD0202FD;
    LUT3 ix27123z1359 (.O (nx27123z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3)) ;
         defparam ix27123z1359.INIT = 8'h2D;
    LUT4 ix41125z55119 (.O (nx41125z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx27123z3), .I3 (nx12188z65)) ;
         defparam ix41125z55119.INIT = 16'hD22D;
    LUT5 ix27124z10192 (.O (nx27124z12), .I0 (nx27124z13), .I1 (\fsm_output(38)  
         ), .I2 (\fsm_output(2)  ), .I3 (nx12188z34), .I4 (nx12188z33)) ;
         defparam ix27124z10192.INIT = 32'h020A22AA;
    LUT6 ix27124z33914 (.O (nx27124z4), .I0 (nx27124z5), .I1 (nx27124z6), .I2 (
         nx27124z7), .I3 (nx27124z9), .I4 (nx27124z10), .I5 (nx27124z11)) ;
         defparam ix27124z33914.INIT = 64'h0000150100007F57;
    LUT3 ix41124z1419 (.O (nx41124z2), .I0 (nx27124z4), .I1 (nx27124z12), .I2 (
         nx12188z66)) ;
         defparam ix41124z1419.INIT = 8'h69;
    LUT6 ix27124z14628 (.O (nx27124z11), .I0 (\fsm_output(38)  ), .I1 (
         \fsm_output(9)  ), .I2 (\fsm_output(2)  ), .I3 (nx12188z21), .I4 (
         nx12188z42), .I5 (nx12188z41)) ;
         defparam ix27124z14628.INIT = 64'h0105030F115533FF;
    LUT4 ix12188z6274 (.O (nx12188z38), .I0 (\fsm_output(38)  ), .I1 (
         \fsm_output(2)  ), .I2 (nx12188z39), .I3 (nx12188z40)) ;
         defparam ix12188z6274.INIT = 16'h135F;
    LUT5 ix27124z10190 (.O (nx27124z7), .I0 (nx27124z8), .I1 (\fsm_output(9)  )
         , .I2 (\fsm_output(2)  ), .I3 (nx12188z18), .I4 (nx12188z36)) ;
         defparam ix27124z10190.INIT = 32'h020A22AA;
    Main_Trans_Ond_Opt_core_wait_ctrl_0 Main_Trans_Ond_Opt_core_wait_ctrl_inst (
                                        .p_mgc_start_sync_mgc_bsync_vld_oswt (
                                        mgc_start_sync_mgc_bsync_vld_oswt), .p_start (
                                        p_start), .\p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)   (
                                        \Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)  
                                        ), .p_Src_rsc_singleport_icwt (
                                        Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt
                                        ), .p_Vga_triosy_lz (p_Vga_triosy_lz), .px1507 (
                                        nx57765z1), .p_Src_rsc_singleport_tiswt0_0n0s2 (
                                        Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
                                        ), .p_rst (p_rst), .p_clk (p_clk), .p_mgc_start_sync_mgc_bsync_vld_icwt (
                                        Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
                                        )) ;
    Main_Trans_Ond_Opt_core_fsm_0 Main_Trans_Ond_Opt_core_fsm_inst (.px1785 (
                                  nx27124z8), .px1780 (nx27125z1), .px1779 (
                                  nx27125z2), .px1778 (nx27124z10), .px1773 (
                                  nx27124z13), .px1772 (nx27124z2), .px3155 (
                                  nx12188z1), .px3153 (nx12188z2), .px1761 (
                                  nx27121z2), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_9[1],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[2],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[3],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[4],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[5],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[6],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[7],
                                  Main_Trans_Ond_Opt_core_inst_z_out_9[8]}), .px3310 (
                                  nx12188z3), .px3287 (nx12188z4), .px3247 (
                                  nx12188z5), .px3217 (nx12188z6), .px3246 (
                                  nx12188z7), .px3216 (nx12188z8), .px3308 (
                                  nx12188z9), .px3245 (nx12188z10), .px3215 (
                                  nx12188z11), .px3307 (nx12188z12), .px3284 (
                                  nx12188z13), .px3306 (nx12188z14), .px3283 (
                                  nx12188z15), .px3243 (nx12188z16), .px3213 (
                                  nx12188z17), .px3194 (nx12188z18), .px3242 (
                                  nx12188z19), .px3212 (nx12188z20), .px3193 (
                                  nx12188z21), .px3241 (nx12188z22), .px3211 (
                                  nx12188z23), .px3303 (nx12188z24), .px3257 (
                                  nx12188z25), .px1629 (nx55089z2), .px1627 (
                                  nx55088z3), .px1625 (nx55087z3), .px1622 (
                                  nx55086z3), .px1619 (nx55085z3), .px1617 (
                                  nx55084z3), .px1614 (nx55083z2), .px3140 (
                                  nx12188z26), .px3207 (nx12188z27), .px1611 (
                                  nx15584z2), .px1610 (nx15583z2), .px1609 (
                                  nx15582z2), .p_rtlcn19652 (nx12188z28), .p_rtlcn19651 (
                                  nx12188z29), .p_rtlcn19650 (nx12188z30), .p_rtlcn19649 (
                                  nx12188z31), .p_nbus_Vga_rsc_singleport_data_in (
                                  {p_nbus_Dst_rsc_singleport_data_out[7],
                                  p_nbus_Dst_rsc_singleport_data_out[6],
                                  p_nbus_Dst_rsc_singleport_data_out[5],
                                  p_nbus_Dst_rsc_singleport_data_out[4],
                                  p_nbus_Dst_rsc_singleport_data_out[3],
                                  p_nbus_Dst_rsc_singleport_data_out[2],
                                  p_nbus_Dst_rsc_singleport_data_out[1],
                                  p_nbus_Dst_rsc_singleport_data_out[0]}), .px3336 (
                                  nx37767z6), .p_nbus_Src_rsc_singleport_data_out (
                                  {p_nbus_Src_rsc_singleport_data_out[7],
                                  p_nbus_Src_rsc_singleport_data_out[6],
                                  p_nbus_Src_rsc_singleport_data_out[5],
                                  p_nbus_Src_rsc_singleport_data_out[4],
                                  p_nbus_Src_rsc_singleport_data_out[3],
                                  p_nbus_Src_rsc_singleport_data_out[2],
                                  p_nbus_Src_rsc_singleport_data_out[1],
                                  p_nbus_Src_rsc_singleport_data_out[0]}), .px1601 (
                                  nx3063z1), .px3335 (nx22393z3), .px1600 (
                                  nx3062z2), .px3334 (nx22392z3), .px1599 (
                                  nx3061z2), .px3333 (nx22391z3), .px1598 (
                                  nx3060z2), .px3332 (nx22390z3), .px1597 (
                                  nx3059z2), .px3331 (nx22389z3), .px1596 (
                                  nx3058z2), .px3330 (nx22388z3), .px1595 (
                                  nx3057z2), .px3329 (nx22387z3), .px1594 (
                                  nx3056z1), .px1557 (nx57168z2), .px3248 (
                                  nx12188z32), .px3244 (nx12188z33), .px3214 (
                                  nx12188z34), .px1551 (nx57164z4), .px1549 (
                                  nx12188z35), .px1550 (nx57163z3), .px1541 (
                                  nx39518z4), .px1540 (nx39519z3), .px1536 (
                                  nx39519z7), .px1533 (nx39520z5), .px1509 (
                                  nx27120z2), .p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2 (
                                  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
                                  ), .p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt (
                                  Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
                                  ), .p_mgc_start_sync_mgc_bsync_vld_oswt (
                                  mgc_start_sync_mgc_bsync_vld_oswt), .p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt (
                                  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt
                                  ), .p_start (p_start), .p_Dst_rsc_singleport_oswt (
                                  Dst_rsc_singleport_oswt), .p_Src_rsc_singleport_oswt (
                                  Src_rsc_singleport_oswt), .px3222 (nx12188z36)
                                  , .px3209 (nx12188z37), .px1783 (nx12188z38), 
                                  .px3221 (nx12188z41), .px3208 (nx12188z42), .px1481 (
                                  nx12249z1), .px1480 (nx11252z1), .px1479 (
                                  nx10255z1), .px1478 (nx9258z1), .px1477 (
                                  nx8261z1), .px3249 (nx12188z43), .px1476 (
                                  nx7264z1), .px1482 (nx13246z1), .px1483 (
                                  nx14243z1), .px1466 (nx45428z1), .px1465 (
                                  nx39627z1), .px3108 (nx12188z44), .px1464 (
                                  nx39627z2), .px3109 (nx12188z45), .px1679 (
                                  nx12188z46), .px1463 (nx38630z1), .px1681 (
                                  nx12188z53), .px1462 (nx37633z1), .px1461 (
                                  nx36636z1), .px1460 (nx35639z1), .px1459 (
                                  nx34642z1), .px1458 (nx33645z1), .px1457 (
                                  nx32648z1), .px3132 (nx12188z54), .px1448 (
                                  nx56807z1), .px3133 (nx12188z55), .px1447 (
                                  nx55810z1), .px3134 (nx12188z56), .px1446 (
                                  nx54813z1), .px3135 (nx12188z57), .px1445 (
                                  nx53816z1), .px3136 (nx12188z58), .px1444 (
                                  nx52819z1), .px3137 (nx12188z59), .px1443 (
                                  nx51822z1), .px3138 (nx12188z60), .px1442 (
                                  nx50825z1), .px3139 (nx12188z61), .px1441 (
                                  nx49828z1), .px1440 (nx8924z1), .px1437 (
                                  nx8924z2), .px1436 (nx9921z1), .px1435 (
                                  nx10918z1), .px1434 (nx11915z1), .px1433 (
                                  nx12912z1), .px1432 (nx13909z1), .px1431 (
                                  nx14906z1), .px1430 (nx59915z1), .px1429 (
                                  nx64900z1), .px1428 (nx63903z1), .px1427 (
                                  nx62906z1), .px1426 (nx61909z1), .px1425 (
                                  nx60912z1), .px1424 (nx59915z2), .px1423 (
                                  nx63523z1), .px1422 (nx61529z1), .px3154 (
                                  nx12188z62), .px1667 (nx12188z63), .px1421 (
                                  nx62526z1), .px1669 (nx12188z69), .px1420 (
                                  nx63523z2), .px3156 (nx12188z64), .px1419 (
                                  nx64520z1), .px3157 (nx12188z65), .px1418 (
                                  nx65517z1), .px3158 (nx12188z66), .px1417 (
                                  nx978z1), .px3159 (nx12188z67), .px1416 (
                                  nx1975z1), .px1415 (nx2972z1), .px3177 (
                                  nx12188z70), .\p_z_out_14(8)   (\z_out_14(8)  
                                  ), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_3[8],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[7],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[6],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[5],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[4],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[3],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[2],
                                  Main_Trans_Ond_Opt_core_inst_z_out_3[1]}), .px1406 (
                                  nx2519z1), .px3178 (nx12188z71), .\p_z_out_14(7)   (
                                  \z_out_14(7)  ), .px1405 (nx3516z1), .px3179 (
                                  nx12188z72), .\p_z_out_14(6)   (\z_out_14(6)  
                                  ), .px1404 (nx4513z1), .px3180 (nx12188z73), .\p_z_out_14(5)   (
                                  \z_out_14(5)  ), .px1403 (nx5510z1), .px3181 (
                                  nx12188z74), .\p_z_out_14(4)   (\z_out_14(4)  
                                  ), .px1402 (nx6507z1), .px3182 (nx12188z75), .\p_z_out_14(3)   (
                                  \z_out_14(3)  ), .px1401 (nx7504z1), .px3183 (
                                  nx12188z76), .\p_z_out_14(2)   (\z_out_14(2)  
                                  ), .px1400 (nx8501z1), .px3184 (nx12188z77), .p_rtlcn30427 (
                                  nx12188z78), .\p_z_out_14(1)   (\z_out_14(1)  
                                  ), .px1399 (nx9498z1), .px1398 (nx15824z1), .px1395 (
                                  nx14827z1), .px1394 (nx15824z2), .px1393 (
                                  nx16821z1), .px1392 (nx17818z1), .px1391 (
                                  nx18815z1), .px1390 (nx19812z1), .px1389 (
                                  nx20809z1), .px1388 (nx21806z1), .px1387 (
                                  nx53015z1), .px1386 (nx58997z1), .px1385 (
                                  nx58000z1), .px1384 (nx57003z1), .px1383 (
                                  nx56006z1), .px1382 (nx55009z1), .px1381 (
                                  nx54012z1), .px1380 (nx53015z2), .px1379 (
                                  nx1057z1), .p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[8]
                                  }), .px1377 (nx60z1), .px1376 (nx1057z2), .px1375 (
                                  nx2054z1), .px1374 (nx3051z1), .px1373 (
                                  nx4048z1), .px1372 (nx5045z1), .px1371 (
                                  nx6042z1), .px1370 (nx7039z1), .px1369 (
                                  nx8036z1), .px1368 (nx2246z1), .px1367 (
                                  nx8228z1), .px1366 (nx7231z1), .px1365 (
                                  nx6234z1), .px1364 (nx5237z1), .px1363 (
                                  nx4240z1), .px1362 (nx3243z1), .px1361 (
                                  nx2246z2), .px1360 (nx1249z1), .px1359 (
                                  nx41828z1), .px1358 (nx40831z1), .px1357 (
                                  nx61846z1), .p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[8]
                                  }), .px1356 (nx62843z1), .px1355 (nx61846z2), 
                                  .px1354 (nx60849z1), .px1353 (nx59852z1), .px1352 (
                                  nx58855z1), .px1351 (nx57858z1), .px1350 (
                                  nx56861z1), .px1349 (nx55864z1), .px1348 (
                                  nx54867z1), .px1345 (nx57765z2), .px1336 (
                                  nx387z1), .px1335 (nx59941z1), .px1334 (
                                  nx60938z1), .px1333 (nx61935z1), .px1332 (
                                  nx62932z1), .px1331 (nx63929z1), .px1330 (
                                  nx64926z1), .px1329 (nx387z2), .px3218 (
                                  nx12188z79), .px1328 (nx1384z1), .px1327 (
                                  nx4243z1), .px3250 (nx12188z80), .px1326 (
                                  nx2022z1), .px3251 (nx12188z81), .px1325 (
                                  nx62423z1), .px3252 (nx12188z82), .px1324 (
                                  nx57288z1), .px3253 (nx12188z83), .px1323 (
                                  nx52153z1), .px1322 (nx47018z1), .px3254 (
                                  nx12188z84), .px3107 (nx12188z85), .px1321 (
                                  nx23653z1), .px3255 (nx51911z1), .px1320 (
                                  nx28788z1), .px1318 (nx4243z2), .px1317 (
                                  nx64644z1), .px1316 (nx59509z1), .px3104 (
                                  nx12188z86), .px1315 (nx16297z1), .px1314 (
                                  nx50304z1), .px1313 (nx50304z2), .px1312 (
                                  nx49307z1), .px1311 (nx48310z1), .px1310 (
                                  nx47313z1), .px1309 (nx46316z1), .px1308 (
                                  nx45319z1), .px1303 (nx57354z1), .px1302 (
                                  nx57354z2), .px1301 (nx58351z1), .px1300 (
                                  nx59348z1), .px1299 (nx60345z1), .px1298 (
                                  nx61342z1), .px1297 (nx62339z1), .px1293 (
                                  nx42765z1), .px1291 (nx5238z1), .px1290 (
                                  nx6235z1), .px1289 (nx7232z1), .px1288 (
                                  nx8229z1), .px1287 (nx9226z1), .px1286 (
                                  nx42765z2), .px1281 (nx59090z1), .px3320 (
                                  nx12188z87), .px3319 (nx12188z88), .px3318 (
                                  nx12188z89), .px3220 (nx12188z90), .px3219 (
                                  nx12188z91), .px3124 (nx12188z92), .px3116 (
                                  nx12188z93), .px3273 (nx12188z94), .px3125 (
                                  nx12188z95), .px3274 (nx12188z96), .px3126 (
                                  nx12188z97), .px3275 (nx12188z98), .px3127 (
                                  nx12188z99), .px3128 (nx12188z100), .px3120 (
                                  nx12188z101), .px3129 (nx12188z102), .px3121 (
                                  nx12188z103), .px3278 (nx12188z104), .px3130 (
                                  nx12188z105), .px3279 (nx12188z106), .px3131 (
                                  nx12188z107), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[8]
                                  }), .p_nbus_Src_rsc_singleport_addr ({
                                  p_nbus_Src_rsc_singleport_addr[16],
                                  p_nbus_Src_rsc_singleport_addr[15],
                                  p_nbus_Src_rsc_singleport_addr[14],
                                  p_nbus_Src_rsc_singleport_addr[13],
                                  p_nbus_Src_rsc_singleport_addr[12],
                                  p_nbus_Src_rsc_singleport_addr[11],
                                  p_nbus_Src_rsc_singleport_addr[10],
                                  p_nbus_Src_rsc_singleport_addr[9],
                                  p_nbus_Src_rsc_singleport_addr[8],
                                  p_nbus_Src_rsc_singleport_addr[7],
                                  p_nbus_Src_rsc_singleport_addr[6],
                                  p_nbus_Src_rsc_singleport_addr[5],
                                  p_nbus_Src_rsc_singleport_addr[4],
                                  p_nbus_Src_rsc_singleport_addr[3],
                                  p_nbus_Src_rsc_singleport_addr[2],
                                  p_nbus_Src_rsc_singleport_addr[1],
                                  p_nbus_Src_rsc_singleport_addr[0]}), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_15[7],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[6],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[5],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[4],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[3],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[2],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[1],
                                  Main_Trans_Ond_Opt_core_inst_z_out_15[0]}), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[7]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[0]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[8]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[9]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[12]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[13]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[14]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[15]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[10]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[11]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[6]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[8]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[9]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[10]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[11]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[12]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[13]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[14]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[1]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[1]
                                  }), .px1500 (nx12188z108), .p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[1]
                                  }), .px3195 (nx56441z3), .px3196 (nx56440z4), 
                                  .px3110 (nx12188z47), .px3197 (nx56439z4), .px3111 (
                                  nx12188z48), .px3198 (nx56438z4), .px3112 (
                                  nx12188z49), .px3199 (nx56437z4), .px3113 (
                                  nx12188z50), .px3200 (nx56436z3), .px3114 (
                                  nx12188z51), .px3115 (nx12188z52), .px3295 (
                                  nx12188z109), .px3161 (nx12188z110), .px3296 (
                                  nx12188z111), .px3162 (nx12188z112), .px3297 (
                                  nx12188z113), .px3163 (nx12188z114), .px3298 (
                                  nx12188z115), .px3164 (nx12188z116), .px3299 (
                                  nx12188z117), .px3165 (nx12188z118), .px3300 (
                                  nx12188z119), .px3166 (nx12188z120), .px3301 (
                                  nx12188z121), .px3167 (nx12188z122), .px3302 (
                                  nx12188z123), .px3168 (nx12188z124), .p_nbus_Dst_rsc_singleport_addr (
                                  {p_nbus_Dst_rsc_singleport_addr[16],
                                  p_nbus_Dst_rsc_singleport_addr[15],
                                  p_nbus_Dst_rsc_singleport_addr[14],
                                  p_nbus_Dst_rsc_singleport_addr[13],
                                  p_nbus_Dst_rsc_singleport_addr[12],
                                  p_nbus_Dst_rsc_singleport_addr[11],
                                  p_nbus_Dst_rsc_singleport_addr[10],
                                  p_nbus_Dst_rsc_singleport_addr[9],
                                  p_nbus_Dst_rsc_singleport_addr[8],
                                  p_nbus_Dst_rsc_singleport_addr[7],
                                  p_nbus_Dst_rsc_singleport_addr[6],
                                  p_nbus_Dst_rsc_singleport_addr[5],
                                  p_nbus_Dst_rsc_singleport_addr[4],
                                  p_nbus_Dst_rsc_singleport_addr[3],
                                  p_nbus_Dst_rsc_singleport_addr[2],
                                  p_nbus_Dst_rsc_singleport_addr[1],
                                  p_nbus_Dst_rsc_singleport_addr[0]}), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_17[8],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[7],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[6],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[5],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[4],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[3],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[2],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[1],
                                  Main_Trans_Ond_Opt_core_inst_z_out_17[0]}), .p_nbus_Vga_rsc_singleport_addr (
                                  {p_nbus_Vga_rsc_singleport_addr[8],
                                  p_nbus_Vga_rsc_singleport_addr[0],
                                  p_nbus_Vga_rsc_singleport_addr[1],
                                  p_nbus_Vga_rsc_singleport_addr[2],
                                  p_nbus_Vga_rsc_singleport_addr[3],
                                  p_nbus_Vga_rsc_singleport_addr[4],
                                  p_nbus_Vga_rsc_singleport_addr[5],
                                  p_nbus_Vga_rsc_singleport_addr[6],
                                  p_nbus_Vga_rsc_singleport_addr[7],
                                  p_nbus_Vga_rsc_singleport_addr[9],
                                  p_nbus_Vga_rsc_singleport_addr[10],
                                  p_nbus_Vga_rsc_singleport_addr[11],
                                  p_nbus_Vga_rsc_singleport_addr[12],
                                  p_nbus_Vga_rsc_singleport_addr[13],
                                  p_nbus_Vga_rsc_singleport_addr[14],
                                  p_nbus_Vga_rsc_singleport_addr[15],
                                  p_nbus_Vga_rsc_singleport_addr[16]}), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[0]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[8]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[10]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[11]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[12]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[13]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[14]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[15]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[16]
                                  }), .px1208 (nx12188z180), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[8]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[9]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[10]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[11]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[12]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[13]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[14]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[15]
                                  }), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[0]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[1]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[8]
                                  }), .px3096 (nx12188z125), .p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[9]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2]
                                  ,
                                  Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1]
                                  }), .px3097 (nx12188z126), .px3098 (
                                  nx12188z127), .px3099 (nx12188z128), .px3100 (
                                  nx12188z129), .px3101 (nx12188z130), .px3102 (
                                  nx12188z131), .px3103 (nx12188z132), .\p_reg_passe_y_1_acc_44_sdt_tmp_6(1)   (
                                  \reg_passe_y_1_acc_44_sdt_tmp_6(1)  ), .px3264 (
                                  nx12188z133), .p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7 (
                                  {
                                  Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7[1]
                                  }), .px3141 (nx39517z2), .px3224 (nx12188z134)
                                  , .px3316 (nx12188z135), .px3265 (nx12188z136)
                                  , .px3142 (nx56440z3), .px3225 (nx12188z137), 
                                  .px3266 (nx12188z138), .px3143 (nx56439z3), .px3226 (
                                  nx12188z139), .px3267 (nx12188z140), .px3144 (
                                  nx56438z3), .px3227 (nx12188z141), .px3268 (
                                  nx12188z142), .px3145 (nx56437z3), .px3228 (
                                  nx12188z143), .px3269 (nx12188z144), .px3146 (
                                  nx56436z2), .px3270 (nx12188z145), .px3229 (
                                  nx12188z146), .px3160 (nx12188z68), .px1159 (
                                  nx41122z1), .px1664 (nx18374z1), .px1068 (
                                  nx18374z2), .px3309 (nx39052z4), .px3286 (
                                  nx39052z3), .px1660 (nx18375z2), .px1067 (
                                  nx18375z3), .px3285 (nx39053z3), .px1656 (
                                  nx18376z2), .px1066 (nx18376z3), .px1651 (
                                  nx18377z2), .px1065 (nx18377z3), .px1646 (
                                  nx18378z2), .px1064 (nx18378z3), .px3305 (
                                  nx39056z4), .px3282 (nx39056z3), .px1642 (
                                  nx18379z2), .px1063 (nx18379z3), .px3304 (
                                  nx39057z4), .px3281 (nx39057z3), .px1638 (
                                  nx18380z2), .px1062 (nx18380z3), .px3280 (
                                  nx44433z3), .px1634 (nx18381z2), .px1061 (
                                  nx18381z3), .p_rtlcn19655 (nx12188z147), .px1051 (
                                  nx15584z1), .px3258 (nx39517z8), .px3206 (
                                  nx39517z10), .p_rtlcn19654 (nx12188z148), .px1050 (
                                  nx15583z3), .px3205 (nx39518z5), .p_rtlcn19653 (
                                  nx12188z149), .px1049 (nx15582z3), .px1607 (
                                  nx15581z2), .px3204 (nx39519z8), .px3152 (
                                  nx39517z7), .px1048 (nx15581z3), .px3150 (
                                  nx51877z3), .px3149 (nx51876z3), .px1606 (
                                  nx15580z2), .px1047 (nx15580z3), .px3202 (
                                  nx50040z8), .px3148 (nx50040z6), .px1604 (
                                  nx12188z150), .px1605 (nx15579z2), .px1046 (
                                  nx15579z3), .px3201 (nx50039z7), .px3147 (
                                  nx50039z6), .px1602 (nx12188z151), .px1603 (
                                  nx15578z2), .px1608 (nx12188z152), .px1045 (
                                  nx15578z3), .px3203 (nx39520z6), .px1763 (
                                  nx27120z4), .px1766 (nx27122z3), .px1770 (
                                  nx27123z3), .px1774 (nx27124z12), .px1775 (
                                  nx27124z4), .px1009 (nx27121z3), .px1006 (
                                  nx15240z2), .px1544 (nx39517z9), .px1545 (
                                  nx39517z6), .px1548 (nx39517z4), .px3259 (
                                  nx39520z7), .px3151 (nx57253z2), .px1004 (
                                  nx39610z1), .px1781 (nx27124z11), .px1790 (
                                  nx27124z5), .px1003 (nx2454z1), .px986 (
                                  nx34441z1), .px985 (nx41294z1), .px984 (
                                  nx33923z1), .px3261 (nx50039z8), .px3260 (
                                  nx50040z9), .px3105 (nx12188z153), .px983 (
                                  nx11162z1), .px3262 (nx50040z7), .px3256 (
                                  nx50039z5), .px982 (nx21432z1), .px981 (
                                  nx57245z1), .px980 (nx29540z1), .p_st_copy_y_2_2_tr0 (
                                  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0
                                  ), .p_st_copy_y_1_2_tr0 (st_copy_y_1_2_tr0), .px3317 (
                                  nx12188z154), .px3294 (nx12188z155), .p_rtlcn30054 (
                                  nx12188z156), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_2[7]}), .p_exit_passe_y_1_sva (
                                  exit_passe_y_1_sva), .p_exit_passe_y_sva (
                                  exit_passe_y_sva), .p_rtlcn30248 (nx51265z1), 
                                  .p_st_copy_y_2_tr0 (
                                  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0
                                  ), .px3272 (nx12188z157), .p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11 (
                                  {Main_Trans_Ond_Opt_core_inst_z_out_11[8],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[7],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[6],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[5],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[4],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[3],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[2],
                                  Main_Trans_Ond_Opt_core_inst_z_out_11[1]}), .p_nbus_Src_rsc_singleport_data_in (
                                  {p_nbus_Src_rsc_singleport_data_in[7],
                                  p_nbus_Src_rsc_singleport_data_in[6],
                                  p_nbus_Src_rsc_singleport_data_in[5],
                                  p_nbus_Src_rsc_singleport_data_in[4],
                                  p_nbus_Src_rsc_singleport_data_in[3],
                                  p_nbus_Src_rsc_singleport_data_in[2],
                                  p_nbus_Src_rsc_singleport_data_in[1],
                                  p_nbus_Src_rsc_singleport_data_in[0]}), .px3117 (
                                  nx12188z158), .px3118 (nx12188z159), .px3119 (
                                  nx12188z160), .px3276 (nx12188z161), .px3277 (
                                  nx12188z162), .px3122 (nx12188z163), .px3123 (
                                  nx12188z164), .px1501 (nx12188z165), .px1784 (
                                  nx27124z9), .px1786 (nx27124z7), .px1788 (
                                  nx27124z6), .px3311 (nx12188z166), .px3312 (
                                  nx12188z167), .px3313 (nx12188z168), .px3314 (
                                  nx12188z169), .px3315 (nx12188z170), .p_Src_rsc_singleport_re (
                                  p_Src_rsc_singleport_re), .p_Src_rsc_singleport_we (
                                  p_Src_rsc_singleport_we), .px1719 (
                                  p_nbus_Src_rsc_singleport_data_out[0]), .px3169 (
                                  nx12188z171), .p_nbus_Dst_rsc_singleport_data_in (
                                  {p_nbus_Dst_rsc_singleport_data_in[7],
                                  p_nbus_Dst_rsc_singleport_data_in[6],
                                  p_nbus_Dst_rsc_singleport_data_in[5],
                                  p_nbus_Dst_rsc_singleport_data_in[4],
                                  p_nbus_Dst_rsc_singleport_data_in[3],
                                  p_nbus_Dst_rsc_singleport_data_in[2],
                                  p_nbus_Dst_rsc_singleport_data_in[1],
                                  p_nbus_Dst_rsc_singleport_data_in[0]}), .px1722 (
                                  p_nbus_Src_rsc_singleport_data_out[1]), .px3170 (
                                  nx12188z172), .px1725 (
                                  p_nbus_Src_rsc_singleport_data_out[2]), .px3171 (
                                  nx12188z173), .px1728 (
                                  p_nbus_Src_rsc_singleport_data_out[3]), .px3172 (
                                  nx12188z174), .px1731 (
                                  p_nbus_Src_rsc_singleport_data_out[4]), .px3173 (
                                  nx12188z175), .px1734 (
                                  p_nbus_Src_rsc_singleport_data_out[5]), .px3174 (
                                  nx12188z176), .px1737 (
                                  p_nbus_Src_rsc_singleport_data_out[6]), .px3175 (
                                  nx12188z177), .px1740 (
                                  p_nbus_Src_rsc_singleport_data_out[7]), .px3176 (
                                  nx12188z178), .px1209 (nx12188z179), .px1205 (
                                  nx12188z181), .px1202 (nx12188z182), .px1199 (
                                  nx12188z183), .px1196 (nx12188z184), .px1193 (
                                  nx12188z185), .px1190 (nx12188z186), .px1187 (
                                  nx12188z187), .px1183 (nx12188z188), .px1503 (
                                  nx30487z1), .px3288 (nx12188z189), .px1502 (
                                  nx31484z1), .px3289 (nx12188z190), .px3290 (
                                  nx12188z191), .px3291 (nx12188z192), .px3292 (
                                  nx12188z193), .px3293 (nx12188z194), .p_Dst_rsc_singleport_re (
                                  p_Dst_rsc_singleport_re), .p_Dst_rsc_singleport_we (
                                  p_Dst_rsc_singleport_we), .p_Vga_rsc_singleport_we (
                                  p_Vga_rsc_singleport_we), .p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output (
                                  {\fsm_output(2)  }), .\p_fsm_output(9)   (
                                  \fsm_output(9)  ), .\p_fsm_output(11)   (
                                  \fsm_output(11)  ), .\p_fsm_output(13)   (
                                  \fsm_output(13)  ), .\p_fsm_output(15)   (
                                  \fsm_output(15)  ), .\p_fsm_output(16)   (
                                  \fsm_output(16)  ), .\p_fsm_output(21)   (
                                  \fsm_output(21)  ), .\p_fsm_output(23)   (
                                  \fsm_output(23)  ), .\p_fsm_output(25)   (
                                  \fsm_output(25)  ), .\p_fsm_output(30)   (
                                  \fsm_output(30)  ), .\p_fsm_output(33)   (
                                  \fsm_output(33)  ), .\p_fsm_output(38)   (
                                  \fsm_output(38)  ), .p_rst (p_rst), .px1507 (
                                  nx57765z1), .p_clk (p_clk), .\p_fsm_output_1_0(42)   (
                                  \Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)  
                                  )) ;
    VCC ps_vcc (.P (nx16349z1)) ;
    LUT6 ix50038z42275 (.O (nx50038z3), .I0 (nx50039z5), .I1 (nx50039z6), .I2 (
         nx50040z4), .I3 (nx50040z7), .I4 (nx50040z6), .I5 (\fsm_output(21)  )
         ) ;
         defparam ix50038z42275.INIT = 64'hC0C00000A000A000;
    LUT6 ix50039z43641 (.O (nx50039z4), .I0 (nx50039z5), .I1 (nx50039z6), .I2 (
         nx50040z4), .I3 (nx50040z7), .I4 (nx50040z6), .I5 (\fsm_output(21)  )
         ) ;
         defparam ix50039z43641.INIT = 64'hC3C33333A555A555;
    LUT6 cloned_lut_0 (.O (nx64), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I2 (\z_out_14(8)  ), .I3 (
         nx12188z78), .I4 (nx12188z54), .I5 (nx12188z70)) ;
         defparam cloned_lut_0.INIT = 64'hF0CC5A66A5990F33;
    LUT6 cloned_lut_1 (.O (nx66), .I0 (\fsm_output(25)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\z_out_14(1)  ), .I3 (
         nx12188z78), .I4 (nx12188z61), .I5 (nx12188z77)) ;
         defparam cloned_lut_1.INIT = 64'hF0CC5A66A5990F33;
    LUT6 cloned_lut_2 (.O (nx68), .I0 (p_nbus_Src_rsc_singleport_data_out[1]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22388z3), .I3 (nx37767z7), .I4 (nx22388z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[1])) ;
         defparam cloned_lut_2.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_3 (.O (nx70), .I0 (p_nbus_Src_rsc_singleport_data_out[2]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22389z3), .I3 (nx37767z7), .I4 (nx22389z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[2])) ;
         defparam cloned_lut_3.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_4 (.O (nx72), .I0 (p_nbus_Src_rsc_singleport_data_out[3]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22390z3), .I3 (nx37767z7), .I4 (nx22390z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[3])) ;
         defparam cloned_lut_4.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_5 (.O (nx74), .I0 (p_nbus_Src_rsc_singleport_data_out[4]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22391z3), .I3 (nx37767z7), .I4 (nx22391z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[4])) ;
         defparam cloned_lut_5.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_6 (.O (nx76), .I0 (p_nbus_Src_rsc_singleport_data_out[5]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22392z3), .I3 (nx37767z7), .I4 (nx22392z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[5])) ;
         defparam cloned_lut_6.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_7 (.O (nx78), .I0 (p_nbus_Src_rsc_singleport_data_out[6]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx22393z3), .I3 (nx37767z7), .I4 (nx22393z4), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[6])) ;
         defparam cloned_lut_7.INIT = 64'hE2FF1D00E2001DFF;
    LUT6 cloned_lut_8 (.O (nx80), .I0 (p_nbus_Src_rsc_singleport_data_out[7]), .I1 (
         Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I2 (
         nx37767z6), .I3 (nx37767z7), .I4 (nx37767z2), .I5 (
         p_nbus_Dst_rsc_singleport_data_out[7])) ;
         defparam cloned_lut_8.INIT = 64'hE2FF1D00E2001DFF;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_0 (.O (nx41123z1), .CI (px1028), .DI (
          nx27125z1), .S (nx41122z1)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_1 (.O (nx41124z1), .CI (nx41123z1), .DI (
          nx27125z2), .S (nx41123z2)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_2 (.O (nx41125z1), .CI (nx41124z1), .DI (
          nx27124z2), .S (nx41124z2)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_3 (.O (nx41126z1), .CI (nx41125z1), .DI (
          nx27123z2), .S (nx41125z2)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_4 (.O (nx41127z1), .CI (nx41126z1), .DI (
          nx27122z2), .S (nx41126z2)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_5 (.O (nx41128z1), .CI (nx41127z1), .DI (
          nx27121z2), .S (nx41127z2)) ;
    MUXCY copy_y_1_acc_psp_1_add8_0_muxcy_6 (.O (nx19032z1), .CI (nx41128z1), .DI (
          nx12188z62), .S (nx12188z62)) ;
    MUXCY z_out_1_add16_1_muxcy_0 (.O (nx56437z1), .CI (px1028), .DI (nx56436z1)
          , .S (nx56436z4)) ;
    MUXCY z_out_1_add16_1_muxcy_1 (.O (nx56438z1), .CI (nx56437z1), .DI (
          nx56437z2), .S (nx56437z5)) ;
    MUXCY z_out_1_add16_1_muxcy_2 (.O (nx56439z1), .CI (nx56438z1), .DI (
          nx56438z2), .S (nx56438z5)) ;
    MUXCY z_out_1_add16_1_muxcy_3 (.O (nx56440z1), .CI (nx56439z1), .DI (
          nx56439z2), .S (nx56439z5)) ;
    MUXCY z_out_1_add16_1_muxcy_4 (.O (nx56441z1), .CI (nx56440z1), .DI (
          nx56440z2), .S (nx56440z5)) ;
    MUXCY z_out_1_add16_1_muxcy_5 (.O (nx56442z1), .CI (nx56441z1), .DI (
          nx56441z2), .S (nx56441z4)) ;
    MUXCY z_out_1_add16_1_muxcy_6 (.O (nx56443z1), .CI (nx56442z1), .DI (
          nx56442z2), .S (nx56442z3)) ;
    MUXCY z_out_1_add16_1_muxcy_7 (.O (nx56444z1), .CI (nx56443z1), .DI (
          nx56443z2), .S (nx56443z3)) ;
    MUXCY z_out_1_add16_1_muxcy_8 (.O (nx56445z1), .CI (nx56444z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[0]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[0])) ;
    MUXCY z_out_1_add16_1_muxcy_9 (.O (nx37849z1), .CI (nx56445z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[1]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[1])) ;
    MUXCY z_out_1_add16_1_muxcy_10 (.O (nx37850z1), .CI (nx37849z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[2]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[2])) ;
    MUXCY z_out_1_add16_1_muxcy_11 (.O (nx37851z1), .CI (nx37850z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[3]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[3])) ;
    MUXCY z_out_1_add16_1_muxcy_12 (.O (nx37852z1), .CI (nx37851z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[4]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[4])) ;
    MUXCY z_out_1_add16_1_muxcy_13 (.O (nx37853z1), .CI (nx37852z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[5]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[5])) ;
    MUXCY z_out_1_add16_1_muxcy_14 (.O (nx22777z1), .CI (nx37853z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_15[6]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_15[6])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_0 (.O (nx24889z1), .CI (px1028), .DI (
          nx56436z3), .S (nx24890z1)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_1 (.O (nx24888z1), .CI (nx24889z1)
          , .DI (nx56437z4), .S (nx24889z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_2 (.O (nx24887z1), .CI (nx24888z1)
          , .DI (nx56438z4), .S (nx24888z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_3 (.O (nx24886z1), .CI (nx24887z1)
          , .DI (nx56439z4), .S (nx24887z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_4 (.O (nx24885z1), .CI (nx24886z1)
          , .DI (nx56440z4), .S (nx24886z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_5 (.O (nx24884z1), .CI (nx24885z1)
          , .DI (nx56441z3), .S (nx24885z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_6 (.O (nx24883z1), .CI (nx24884z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[0]), .S (
          nx24884z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_7 (.O (nx24882z1), .CI (nx24883z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_acc_46_sdt_mx0w0[1]), .S (
          nx24883z2)) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_8 (.O (nx24881z1), .CI (nx24882z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[0]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[0])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_9 (.O (nx23859z1), .CI (nx24881z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[1]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[1])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_10 (.O (nx23860z1), .CI (nx23859z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[2]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[2])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_11 (.O (nx23861z1), .CI (nx23860z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[3]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[3])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_12 (.O (nx23862z1), .CI (nx23861z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[4]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[4])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_13 (.O (nx23863z1), .CI (nx23862z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[5]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[5])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_14 (.O (nx23864z1), .CI (nx23863z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[6]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[6])) ;
    MUXCY passe_y_acc_13_itm_add17_7i1_muxcy_15 (.O (nx8788z1), .CI (nx23864z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_2[7]), .S (
          Main_Trans_Ond_Opt_core_inst_z_out_2[7])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_0 (.O (nx32693z1), .CI (px1028), .DI (
          nx56436z2), .S (nx32692z1)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_1 (.O (nx32694z1), .CI (nx32693z1)
          , .DI (nx56437z3), .S (nx32693z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_2 (.O (nx32695z1), .CI (nx32694z1)
          , .DI (nx56438z3), .S (nx32694z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_3 (.O (nx32696z1), .CI (nx32695z1)
          , .DI (nx56439z3), .S (nx32695z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_4 (.O (nx32697z1), .CI (nx32696z1)
          , .DI (nx56440z3), .S (nx32696z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_5 (.O (nx32698z1), .CI (nx32697z1)
          , .DI (nx39517z2), .S (nx32697z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_6 (.O (nx32699z1), .CI (nx32698z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1]), .S (
          nx32698z2)) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_7 (.O (nx32700z1), .CI (nx32699z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_8 (.O (nx32701z1), .CI (nx32700z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_9 (.O (nx41959z1), .CI (nx32701z1)
          , .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_10 (.O (nx41958z1), .CI (nx41959z1
          ), .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_11 (.O (nx41957z1), .CI (nx41958z1
          ), .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_12 (.O (nx41956z1), .CI (nx41957z1
          ), .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7])) ;
    MUXCY passe_y_1_acc_7_itm_add15_7i2_muxcy_13 (.O (nx57032z1), .CI (nx41956z1
          ), .DI (Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8]), .S (
          Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8])) ;
    MUXCY z_out_3_add8_2_muxcy_0 (.O (nx39167z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (nx37767z2), .S (nx80)) ;
    MUXCY z_out_3_add8_2_muxcy_1 (.O (nx39166z1), .CI (nx39167z1), .DI (
          nx22393z4), .S (nx78)) ;
    MUXCY z_out_3_add8_2_muxcy_2 (.O (nx39165z1), .CI (nx39166z1), .DI (
          nx22392z4), .S (nx76)) ;
    MUXCY z_out_3_add8_2_muxcy_3 (.O (nx39164z1), .CI (nx39165z1), .DI (
          nx22391z4), .S (nx74)) ;
    MUXCY z_out_3_add8_2_muxcy_4 (.O (nx39163z1), .CI (nx39164z1), .DI (
          nx22390z4), .S (nx72)) ;
    MUXCY z_out_3_add8_2_muxcy_5 (.O (nx39162z1), .CI (nx39163z1), .DI (
          nx22389z4), .S (nx70)) ;
    MUXCY z_out_3_add8_2_muxcy_6 (.O (nx33786z1), .CI (nx39162z1), .DI (
          nx22388z4), .S (nx68)) ;
    MUXCY z_out_5_add8_3_muxcy_0 (.O (nx46788z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (nx46789z1), .S (nx46789z2)) ;
    MUXCY z_out_5_add8_3_muxcy_1 (.O (nx46787z1), .CI (nx46788z1), .DI (
          nx46788z2), .S (nx46788z3)) ;
    MUXCY z_out_5_add8_3_muxcy_2 (.O (nx46786z1), .CI (nx46787z1), .DI (
          nx46787z2), .S (nx46787z3)) ;
    MUXCY z_out_5_add8_3_muxcy_3 (.O (nx46785z1), .CI (nx46786z1), .DI (
          nx46786z2), .S (nx46786z3)) ;
    MUXCY z_out_5_add8_3_muxcy_4 (.O (nx46784z1), .CI (nx46785z1), .DI (
          nx46785z2), .S (nx46785z3)) ;
    MUXCY z_out_5_add8_3_muxcy_5 (.O (nx46783z1), .CI (nx46784z1), .DI (
          nx46784z2), .S (nx46784z3)) ;
    MUXCY z_out_5_add8_3_muxcy_6 (.O (nx24129z1), .CI (nx46783z1), .DI (
          nx46783z2), .S (nx46783z3)) ;
    MUXCY z_out_8_add8_4_muxcy_0 (.O (nx28708z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (nx28707z1), .S (nx66)) ;
    MUXCY z_out_8_add8_4_muxcy_1 (.O (nx28709z1), .CI (nx28708z1), .DI (
          nx28708z2), .S (nx28708z3)) ;
    MUXCY z_out_8_add8_4_muxcy_2 (.O (nx28710z1), .CI (nx28709z1), .DI (
          nx28709z2), .S (nx28709z3)) ;
    MUXCY z_out_8_add8_4_muxcy_3 (.O (nx28711z1), .CI (nx28710z1), .DI (
          nx28710z2), .S (nx28710z3)) ;
    MUXCY z_out_8_add8_4_muxcy_4 (.O (nx28712z1), .CI (nx28711z1), .DI (
          nx28711z2), .S (nx28711z3)) ;
    MUXCY z_out_8_add8_4_muxcy_5 (.O (nx28713z1), .CI (nx28712z1), .DI (
          nx28712z2), .S (nx28712z3)) ;
    MUXCY z_out_8_add8_4_muxcy_6 (.O (nx31447z1), .CI (nx28713z1), .DI (
          nx28713z2), .S (nx28713z3)) ;
    MUXCY z_out_7_add8_5_muxcy_0 (.O (nx33880z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (nx33879z1), .S (nx33879z2)) ;
    MUXCY z_out_7_add8_5_muxcy_1 (.O (nx33881z1), .CI (nx33880z1), .DI (
          nx33880z2), .S (nx33880z3)) ;
    MUXCY z_out_7_add8_5_muxcy_2 (.O (nx33882z1), .CI (nx33881z1), .DI (
          nx33881z2), .S (nx33881z3)) ;
    MUXCY z_out_7_add8_5_muxcy_3 (.O (nx33883z1), .CI (nx33882z1), .DI (
          nx33882z2), .S (nx33882z3)) ;
    MUXCY z_out_7_add8_5_muxcy_4 (.O (nx33884z1), .CI (nx33883z1), .DI (
          nx33883z2), .S (nx33883z3)) ;
    MUXCY z_out_7_add8_5_muxcy_5 (.O (nx33885z1), .CI (nx33884z1), .DI (
          nx33884z2), .S (nx33884z3)) ;
    MUXCY z_out_7_add8_5_muxcy_6 (.O (nx26275z1), .CI (nx33885z1), .DI (
          nx33885z2), .S (nx33885z3)) ;
    MUXCY z_out_6_add8_6_muxcy_0 (.O (nx39052z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .S (nx39051z1)) ;
    MUXCY z_out_6_add8_6_muxcy_1 (.O (nx39053z1), .CI (nx39052z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .S (nx39052z2)) ;
    MUXCY z_out_6_add8_6_muxcy_2 (.O (nx39054z1), .CI (nx39053z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .S (nx39053z2)) ;
    MUXCY z_out_6_add8_6_muxcy_3 (.O (nx39055z1), .CI (nx39054z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .S (nx39054z2)) ;
    MUXCY z_out_6_add8_6_muxcy_4 (.O (nx39056z1), .CI (nx39055z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .S (nx39055z2)) ;
    MUXCY z_out_6_add8_6_muxcy_5 (.O (nx39057z1), .CI (nx39056z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .S (nx39056z2)) ;
    MUXCY z_out_6_add8_6_muxcy_6 (.O (nx44433z1), .CI (nx39057z1), .DI (
          Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .S (nx39057z2)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_0 (.O (nx55223z1), .CI (
          p_Vga_rsc_singleport_re), .DI (\image_copy_1_x_1_sva_1(0)  ), .S (
          nx55224z1)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_1 (.O (nx55222z1), .CI (nx55223z1), 
          .DI (nx55223z2), .S (nx55223z3)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_2 (.O (nx55221z1), .CI (nx55222z1), 
          .DI (nx55222z2), .S (nx55222z3)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_3 (.O (nx55220z1), .CI (nx55221z1), 
          .DI (nx55221z2), .S (nx55221z3)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_4 (.O (nx55219z1), .CI (nx55220z1), 
          .DI (nx55220z2), .S (nx55220z3)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_5 (.O (nx55218z1), .CI (nx55219z1), 
          .DI (nx12188z53), .S (nx55219z2)) ;
    MUXCY exit_copy_y_1_sva_sub8_7i16_muxcy_6 (.O (nx55217z1), .CI (nx55218z1), 
          .DI (nx55218z2), .S (nx55218z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_0 (.O (nx16620z1), .CI (
          p_Vga_rsc_singleport_re), .DI (\image_copy_1_y_1_sva_1(0)  ), .S (
          nx16619z1)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_1 (.O (nx16621z1), .CI (nx16620z1), .DI (
          nx16620z2), .S (nx16620z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_2 (.O (nx16622z1), .CI (nx16621z1), .DI (
          nx16621z2), .S (nx16621z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_3 (.O (nx16623z1), .CI (nx16622z1), .DI (
          nx16622z2), .S (nx16622z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_4 (.O (nx16624z1), .CI (nx16623z1), .DI (
          nx16623z2), .S (nx16623z3)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_5 (.O (nx16625z1), .CI (nx16624z1), .DI (
          nx12188z69), .S (nx16624z2)) ;
    MUXCY copy_x_1_acc_3_itm_sub8_13_muxcy_6 (.O (nx16626z1), .CI (nx16625z1), .DI (
          nx16625z2), .S (nx16625z3)) ;
    MUXCY z_out_9_add8_16_muxcy_0 (.O (nx22393z1), .CI (px1028), .DI (nx37767z2)
          , .S (nx37767z5)) ;
    MUXCY z_out_9_add8_16_muxcy_1 (.O (nx22392z1), .CI (nx22393z1), .DI (
          nx22393z4), .S (nx22393z2)) ;
    MUXCY z_out_9_add8_16_muxcy_2 (.O (nx22391z1), .CI (nx22392z1), .DI (
          nx22392z4), .S (nx22392z2)) ;
    MUXCY z_out_9_add8_16_muxcy_3 (.O (nx22390z1), .CI (nx22391z1), .DI (
          nx22391z4), .S (nx22391z2)) ;
    MUXCY z_out_9_add8_16_muxcy_4 (.O (nx22389z1), .CI (nx22390z1), .DI (
          nx22390z4), .S (nx22390z2)) ;
    MUXCY z_out_9_add8_16_muxcy_5 (.O (nx22388z1), .CI (nx22389z1), .DI (
          nx22389z4), .S (nx22389z2)) ;
    MUXCY z_out_9_add8_16_muxcy_6 (.O (nx22387z1), .CI (nx22388z1), .DI (
          nx22388z4), .S (nx22388z2)) ;
    MUXCY z_out_12_add8_17_muxcy_0 (.O (nx18375z1), .CI (p_Vga_rsc_singleport_re
          ), .DI (nx18374z1), .S (nx18374z2)) ;
    MUXCY z_out_12_add8_17_muxcy_1 (.O (nx18376z1), .CI (nx18375z1), .DI (
          nx18375z2), .S (nx18375z3)) ;
    MUXCY z_out_12_add8_17_muxcy_2 (.O (nx18377z1), .CI (nx18376z1), .DI (
          nx18376z2), .S (nx18376z3)) ;
    MUXCY z_out_12_add8_17_muxcy_3 (.O (nx18378z1), .CI (nx18377z1), .DI (
          nx18377z2), .S (nx18377z3)) ;
    MUXCY z_out_12_add8_17_muxcy_4 (.O (nx18379z1), .CI (nx18378z1), .DI (
          nx18378z2), .S (nx18378z3)) ;
    MUXCY z_out_12_add8_17_muxcy_5 (.O (nx18380z1), .CI (nx18379z1), .DI (
          nx18379z2), .S (nx18379z3)) ;
    MUXCY z_out_12_add8_17_muxcy_6 (.O (nx18381z1), .CI (nx18380z1), .DI (
          nx18380z2), .S (nx18380z3)) ;
    MUXCY z_out_22_add7_18_muxcy_0 (.O (nx55088z1), .CI (p_Vga_rsc_singleport_re
          ), .DI (nx55089z1), .S (nx55089z2)) ;
    MUXCY z_out_22_add7_18_muxcy_1 (.O (nx55087z1), .CI (nx55088z1), .DI (
          nx55088z2), .S (nx55088z3)) ;
    MUXCY z_out_22_add7_18_muxcy_2 (.O (nx55086z1), .CI (nx55087z1), .DI (
          nx55087z2), .S (nx55087z3)) ;
    MUXCY z_out_22_add7_18_muxcy_3 (.O (nx55085z1), .CI (nx55086z1), .DI (
          nx55086z2), .S (nx55086z3)) ;
    MUXCY z_out_22_add7_18_muxcy_4 (.O (nx55084z1), .CI (nx55085z1), .DI (
          nx55085z2), .S (nx55085z3)) ;
    MUXCY z_out_22_add7_18_muxcy_5 (.O (nx55083z1), .CI (nx55084z1), .DI (
          nx55084z2), .S (nx55084z3)) ;
    MUXCY z_out_2_add8_21_muxcy_0 (.O (nx15583z1), .CI (px1028), .DI (nx15584z1)
          , .S (nx15584z2)) ;
    MUXCY z_out_2_add8_21_muxcy_1 (.O (nx15582z1), .CI (nx15583z1), .DI (
          nx15583z2), .S (nx15583z3)) ;
    MUXCY z_out_2_add8_21_muxcy_2 (.O (nx15581z1), .CI (nx15582z1), .DI (
          nx15582z2), .S (nx15582z3)) ;
    MUXCY z_out_2_add8_21_muxcy_3 (.O (nx15580z1), .CI (nx15581z1), .DI (
          nx15581z2), .S (nx15581z3)) ;
    MUXCY z_out_2_add8_21_muxcy_4 (.O (nx15579z1), .CI (nx15580z1), .DI (
          nx15580z2), .S (nx15580z3)) ;
    MUXCY z_out_2_add8_21_muxcy_5 (.O (nx15578z1), .CI (nx15579z1), .DI (
          nx15579z2), .S (nx15579z3)) ;
    MUXCY z_out_2_add8_21_muxcy_6 (.O (nx15577z1), .CI (nx15578z1), .DI (
          nx15578z2), .S (nx15578z3)) ;
    MUXCY z_out_14_add8_23_muxcy_0 (.O (nx3062z1), .CI (p_Vga_rsc_singleport_re)
          , .DI (nx3063z1), .S (nx3063z2)) ;
    MUXCY z_out_14_add8_23_muxcy_1 (.O (nx3061z1), .CI (nx3062z1), .DI (nx3062z2
          ), .S (nx3062z3)) ;
    MUXCY z_out_14_add8_23_muxcy_2 (.O (nx3060z1), .CI (nx3061z1), .DI (nx3061z2
          ), .S (nx3061z3)) ;
    MUXCY z_out_14_add8_23_muxcy_3 (.O (nx3059z1), .CI (nx3060z1), .DI (nx3060z2
          ), .S (nx3060z3)) ;
    MUXCY z_out_14_add8_23_muxcy_4 (.O (nx3058z1), .CI (nx3059z1), .DI (nx3059z2
          ), .S (nx3059z3)) ;
    MUXCY z_out_14_add8_23_muxcy_5 (.O (nx3057z1), .CI (nx3058z1), .DI (nx3058z2
          ), .S (nx3058z3)) ;
    MUXCY z_out_14_add8_23_muxcy_6 (.O (nx2319z1), .CI (nx3057z1), .DI (nx3057z2
          ), .S (nx3057z3)) ;
    MUXCY z_out_13_add8_24_muxcy_0 (.O (nx10454z1), .CI (p_Vga_rsc_singleport_re
          ), .DI (nx33879z3), .S (nx28707z2)) ;
    MUXCY z_out_13_add8_24_muxcy_1 (.O (nx10453z1), .CI (nx10454z1), .DI (
          nx33880z4), .S (nx28708z3)) ;
    MUXCY z_out_13_add8_24_muxcy_2 (.O (nx10452z1), .CI (nx10453z1), .DI (
          nx33881z4), .S (nx28709z3)) ;
    MUXCY z_out_13_add8_24_muxcy_3 (.O (nx10451z1), .CI (nx10452z1), .DI (
          nx33882z4), .S (nx28710z3)) ;
    MUXCY z_out_13_add8_24_muxcy_4 (.O (nx10450z1), .CI (nx10451z1), .DI (
          nx33883z4), .S (nx28711z3)) ;
    MUXCY z_out_13_add8_24_muxcy_5 (.O (nx10449z1), .CI (nx10450z1), .DI (
          nx33884z4), .S (nx28712z3)) ;
    MUXCY z_out_13_add8_24_muxcy_6 (.O (nx10448z1), .CI (nx10449z1), .DI (
          nx33885z4), .S (nx28713z3)) ;
    MUXCY z_out_10_add8_25_muxcy_0 (.O (nx52936z1), .CI (px1028), .DI (nx52935z1
          ), .S (nx52935z2)) ;
    MUXCY z_out_10_add8_25_muxcy_1 (.O (nx52937z1), .CI (nx52936z1), .DI (
          nx52936z2), .S (nx52936z3)) ;
    MUXCY z_out_10_add8_25_muxcy_2 (.O (nx52938z1), .CI (nx52937z1), .DI (
          nx52937z2), .S (nx52937z3)) ;
    MUXCY z_out_10_add8_25_muxcy_3 (.O (nx52939z1), .CI (nx52938z1), .DI (
          nx52938z2), .S (nx52938z3)) ;
    MUXCY z_out_10_add8_25_muxcy_4 (.O (nx52940z1), .CI (nx52939z1), .DI (
          nx52939z2), .S (nx52939z3)) ;
    MUXCY z_out_10_add8_25_muxcy_5 (.O (nx52941z1), .CI (nx52940z1), .DI (
          nx52940z2), .S (nx52940z3)) ;
    MUXCY z_out_10_add8_25_muxcy_6 (.O (nx7219z1), .CI (nx52941z1), .DI (
          nx52941z2), .S (nx52941z3)) ;
    MUXCY z_out_11_add8_26_muxcy_0 (.O (nx25238z1), .CI (px1028), .DI (nx25239z1
          ), .S (nx25239z2)) ;
    MUXCY z_out_11_add8_26_muxcy_1 (.O (nx25237z1), .CI (nx25238z1), .DI (
          nx25238z2), .S (nx25238z3)) ;
    MUXCY z_out_11_add8_26_muxcy_2 (.O (nx25236z1), .CI (nx25237z1), .DI (
          nx25237z2), .S (nx25237z3)) ;
    MUXCY z_out_11_add8_26_muxcy_3 (.O (nx25235z1), .CI (nx25236z1), .DI (
          nx25236z2), .S (nx25236z3)) ;
    MUXCY z_out_11_add8_26_muxcy_4 (.O (nx25234z1), .CI (nx25235z1), .DI (
          nx25235z2), .S (nx25235z3)) ;
    MUXCY z_out_11_add8_26_muxcy_5 (.O (nx25233z1), .CI (nx25234z1), .DI (
          nx25234z2), .S (nx25234z3)) ;
    MUXCY z_out_11_add8_26_muxcy_6 (.O (nx25232z1), .CI (nx25233z1), .DI (
          nx25233z2), .S (nx25233z3)) ;
    MUXCY z_out_15_add7_29_muxcy_0 (.O (nx28308z1), .CI (px1028), .DI (nx28307z1
          ), .S (nx28307z2)) ;
    MUXCY z_out_15_add7_29_muxcy_1 (.O (nx28309z1), .CI (nx28308z1), .DI (
          nx28308z2), .S (nx28308z3)) ;
    MUXCY z_out_15_add7_29_muxcy_2 (.O (nx28310z1), .CI (nx28309z1), .DI (
          nx28309z2), .S (nx28309z4)) ;
    MUXCY z_out_15_add7_29_muxcy_3 (.O (nx28311z1), .CI (nx28310z1), .DI (
          nx28310z2), .S (nx28310z4)) ;
    MUXCY z_out_15_add7_29_muxcy_4 (.O (nx28312z1), .CI (nx28311z1), .DI (
          nx28311z2), .S (nx28311z4)) ;
    MUXCY z_out_15_add7_29_muxcy_5 (.O (nx28313z1), .CI (nx28312z1), .DI (
          nx28312z2), .S (nx28312z3)) ;
    MUXCY z_out_17_add8_32_muxcy_0 (.O (nx57167z1), .CI (px1028), .DI (nx57168z1
          ), .S (nx57168z2)) ;
    MUXCY z_out_17_add8_32_muxcy_1 (.O (nx57166z1), .CI (nx57167z1), .DI (
          nx57167z2), .S (nx57167z3)) ;
    MUXCY z_out_17_add8_32_muxcy_2 (.O (nx57165z1), .CI (nx57166z1), .DI (
          nx57166z2), .S (nx57166z3)) ;
    MUXCY z_out_17_add8_32_muxcy_3 (.O (nx57164z1), .CI (nx57165z1), .DI (
          nx57165z2), .S (nx57165z3)) ;
    MUXCY z_out_17_add8_32_muxcy_4 (.O (nx57163z1), .CI (nx57164z1), .DI (
          nx57164z2), .S (nx57164z3)) ;
    MUXCY z_out_17_add8_32_muxcy_5 (.O (nx57162z1), .CI (nx57163z1), .DI (
          nx57163z2), .S (nx57163z3)) ;
    MUXCY z_out_17_add8_32_muxcy_6 (.O (nx57161z1), .CI (nx57162z1), .DI (
          nx57162z2), .S (nx57162z2)) ;
    MUXCY muxcy_0_1 (.O (nx39518z1), .CI (
          Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .DI (
          nx39517z1), .S (nx39517z3)) ;
    MUXCY muxcy_0_2 (.O (nx39519z1), .CI (nx39518z1), .DI (nx39518z2), .S (
          nx39518z3)) ;
    MUXCY muxcy_0_3 (.O (nx39520z1), .CI (nx39519z1), .DI (nx39519z2), .S (
          nx39519z4)) ;
    MUXCY muxcy_0_4 (.O (nx50040z1), .CI (nx39520z1), .DI (nx39520z2), .S (
          nx39520z3)) ;
    MUXCY muxcy_0_5 (.O (nx50039z1), .CI (nx50040z1), .DI (nx39521z1), .S (
          nx50040z2)) ;
    MUXCY muxcy_0_6 (.O (nx50038z1), .CI (nx50039z1), .DI (nx39522z1), .S (
          nx50039z2)) ;
    MUXCY muxcy_0_7 (.O (nx50037z1), .CI (nx50038z1), .DI (nx39523z1), .S (
          nx50038z2)) ;
    MUXCY muxcy_0_8 (.O (nx44612z1), .CI (nx50037z1), .DI (nx16726z2), .S (
          nx50037z2)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_0 (.O (nx57253z1), .CI (nx12188z26)
          , .DI (nx39517z7), .S (nx57254z1)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_1 (.O (nx51877z1), .CI (nx57253z1)
          , .DI (nx57253z2), .S (nx57253z3)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_2 (.O (nx51876z1), .CI (nx51877z1)
          , .DI (nx51877z3), .S (nx51877z2)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_3 (.O (nx51875z1), .CI (nx51876z1)
          , .DI (nx51876z3), .S (nx51876z2)) ;
    MUXCY passe_y_1_acc_45_itm_add7_27_muxcy_4 (.O (nx51874z1), .CI (nx51875z1)
          , .DI (nx50040z6), .S (nx51875z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_0 (.O (nx272z1), .CI (nx12188z26), 
          .DI (nx39517z7), .S (nx39517z7)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_1 (.O (nx273z1), .CI (nx272z1), .DI (
          nx57253z2), .S (nx57253z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_2 (.O (nx274z1), .CI (nx273z1), .DI (
          nx51877z3), .S (nx273z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_3 (.O (nx275z1), .CI (nx274z1), .DI (
          nx51876z3), .S (nx274z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_4 (.O (nx276z1), .CI (nx275z1), .DI (
          nx50040z6), .S (nx275z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_5 (.O (nx277z1), .CI (nx276z1), .DI (
          nx50039z6), .S (nx276z2)) ;
    MUXCY passe_y_1_acc_43_itm_add9_30_muxcy_6 (.O (nx278z1), .CI (nx277z1), .DI (
          nx50040z6), .S (nx50040z6)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_0 (.O (nx27124z1), .CI (nx27125z1)
          , .DI (nx27125z2), .S (nx27125z3)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_1 (.O (nx27123z1), .CI (nx27124z1)
          , .DI (nx27124z2), .S (nx27124z3)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_2 (.O (nx27122z1), .CI (nx27123z1)
          , .DI (nx27123z2), .S (nx27123z4)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_3 (.O (nx27121z1), .CI (nx27122z1)
          , .DI (nx27122z2), .S (nx27122z4)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_4 (.O (nx27120z1), .CI (nx27121z1)
          , .DI (nx27121z2), .S (nx27121z3)) ;
    MUXCY passe_y_acc_49_psp_add8_7i17_muxcy_5 (.O (nx27119z1), .CI (nx27120z1)
          , .DI (nx27120z2), .S (nx27120z3)) ;
    FDRE reg_exit_copy_y_1_sva (.Q (st_copy_y_1_2_tr0), .C (p_clk), .CE (
         nx16349z1), .D (nx9010z1), .R (p_rst)) ;
    FDRE reg_levels_nand_svs (.Q (nx12188z155), .C (p_clk), .CE (nx16349z1), .D (
         nx57245z1), .R (p_rst)) ;
    FDRE reg_passe_x_acc_3_cse_sg1 (.Q (nx12188z154), .C (p_clk), .CE (nx16349z1
         ), .D (nx29540z1), .R (p_rst)) ;
endmodule


module Main_Trans_Ond_Opt_core_fsm_0 ( px1785, px1780, px1779, px1778, px1773, 
                                       px1772, px3155, px3153, px1761, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9, 
                                       px3310, px3287, px3247, px3217, px3246, 
                                       px3216, px3308, px3245, px3215, px3307, 
                                       px3284, px3306, px3283, px3243, px3213, 
                                       px3194, px3242, px3212, px3193, px3241, 
                                       px3211, px3303, px3257, px1629, px1627, 
                                       px1625, px1622, px1619, px1617, px1614, 
                                       px3140, px3207, px1611, px1610, px1609, 
                                       p_rtlcn19652, p_rtlcn19651, p_rtlcn19650, 
                                       p_rtlcn19649, 
                                       p_nbus_Vga_rsc_singleport_data_in, px3336, 
                                       p_nbus_Src_rsc_singleport_data_out, 
                                       px1601, px3335, px1600, px3334, px1599, 
                                       px3333, px1598, px3332, px1597, px3331, 
                                       px1596, px3330, px1595, px3329, px1594, 
                                       px1557, px3248, px3244, px3214, px1551, 
                                       px1549, px1550, px1541, px1540, px1536, 
                                       px1533, px1509, 
                                       p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2, 
                                       p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt, 
                                       p_mgc_start_sync_mgc_bsync_vld_oswt, 
                                       p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt, 
                                       p_start, p_Dst_rsc_singleport_oswt, 
                                       p_Src_rsc_singleport_oswt, px3222, px3209, 
                                       px1783, px3221, px3208, px1481, px1480, 
                                       px1479, px1478, px1477, px3249, px1476, 
                                       px1482, px1483, px1466, px1465, px3108, 
                                       px1464, px3109, px1679, px1463, px1681, 
                                       px1462, px1461, px1460, px1459, px1458, 
                                       px1457, px3132, px1448, px3133, px1447, 
                                       px3134, px1446, px3135, px1445, px3136, 
                                       px1444, px3137, px1443, px3138, px1442, 
                                       px3139, px1441, px1440, px1437, px1436, 
                                       px1435, px1434, px1433, px1432, px1431, 
                                       px1430, px1429, px1428, px1427, px1426, 
                                       px1425, px1424, px1423, px1422, px3154, 
                                       px1667, px1421, px1669, px1420, px3156, 
                                       px1419, px3157, px1418, px3158, px1417, 
                                       px3159, px1416, px1415, px3177, 
                                       \p_z_out_14(8)  , 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3, 
                                       px1406, px3178, \p_z_out_14(7)  , px1405, 
                                       px3179, \p_z_out_14(6)  , px1404, px3180, 
                                       \p_z_out_14(5)  , px1403, px3181, 
                                       \p_z_out_14(4)  , px1402, px3182, 
                                       \p_z_out_14(3)  , px1401, px3183, 
                                       \p_z_out_14(2)  , px1400, px3184, 
                                       p_rtlcn30427, \p_z_out_14(1)  , px1399, 
                                       px1398, px1395, px1394, px1393, px1392, 
                                       px1391, px1390, px1389, px1388, px1387, 
                                       px1386, px1385, px1384, px1383, px1382, 
                                       px1381, px1380, px1379, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1, 
                                       px1377, px1376, px1375, px1374, px1373, 
                                       px1372, px1371, px1370, px1369, px1368, 
                                       px1367, px1366, px1365, px1364, px1363, 
                                       px1362, px1361, px1360, px1359, px1358, 
                                       px1357, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1, 
                                       px1356, px1355, px1354, px1353, px1352, 
                                       px1351, px1350, px1349, px1348, px1345, 
                                       px1336, px1335, px1334, px1333, px1332, 
                                       px1331, px1330, px1329, px3218, px1328, 
                                       px1327, px3250, px1326, px3251, px1325, 
                                       px3252, px1324, px3253, px1323, px1322, 
                                       px3254, px3107, px1321, px3255, px1320, 
                                       px1318, px1317, px1316, px3104, px1315, 
                                       px1314, px1313, px1312, px1311, px1310, 
                                       px1309, px1308, px1303, px1302, px1301, 
                                       px1300, px1299, px1298, px1297, px1293, 
                                       px1291, px1290, px1289, px1288, px1287, 
                                       px1286, px1281, px3320, px3319, px3318, 
                                       px3220, px3219, px3124, px3116, px3273, 
                                       px3125, px3274, px3126, px3275, px3127, 
                                       px3128, px3120, px3129, px3121, px3278, 
                                       px3130, px3279, px3131, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp, 
                                       p_nbus_Src_rsc_singleport_addr, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7, 
                                       px1500, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5, 
                                       px3195, px3196, px3110, px3197, px3111, 
                                       px3198, px3112, px3199, px3113, px3200, 
                                       px3114, px3115, px3295, px3161, px3296, 
                                       px3162, px3297, px3163, px3298, px3164, 
                                       px3299, px3165, px3300, px3166, px3301, 
                                       px3167, px3302, px3168, 
                                       p_nbus_Dst_rsc_singleport_addr, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17, 
                                       p_nbus_Vga_rsc_singleport_addr, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm, 
                                       px1208, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva, 
                                       px3096, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm, 
                                       px3097, px3098, px3099, px3100, px3101, 
                                       px3102, px3103, 
                                       \p_reg_passe_y_1_acc_44_sdt_tmp_6(1)  , 
                                       px3264, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7, 
                                       px3141, px3224, px3316, px3265, px3142, 
                                       px3225, px3266, px3143, px3226, px3267, 
                                       px3144, px3227, px3268, px3145, px3228, 
                                       px3269, px3146, px3270, px3229, px3160, 
                                       px1159, px1664, px1068, px3309, px3286, 
                                       px1660, px1067, px3285, px1656, px1066, 
                                       px1651, px1065, px1646, px1064, px3305, 
                                       px3282, px1642, px1063, px3304, px3281, 
                                       px1638, px1062, px3280, px1634, px1061, 
                                       p_rtlcn19655, px1051, px3258, px3206, 
                                       p_rtlcn19654, px1050, px3205, 
                                       p_rtlcn19653, px1049, px1607, px3204, 
                                       px3152, px1048, px3150, px3149, px1606, 
                                       px1047, px3202, px3148, px1604, px1605, 
                                       px1046, px3201, px3147, px1602, px1603, 
                                       px1608, px1045, px3203, px1763, px1766, 
                                       px1770, px1774, px1775, px1009, px1006, 
                                       px1544, px1545, px1548, px3259, px3151, 
                                       px1004, px1781, px1790, px1003, px986, 
                                       px985, px984, px3261, px3260, px3105, 
                                       px983, px3262, px3256, px982, px981, 
                                       px980, p_st_copy_y_2_2_tr0, 
                                       p_st_copy_y_1_2_tr0, px3317, px3294, 
                                       p_rtlcn30054, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2, 
                                       p_exit_passe_y_1_sva, p_exit_passe_y_sva, 
                                       p_rtlcn30248, p_st_copy_y_2_tr0, px3272, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11, 
                                       p_nbus_Src_rsc_singleport_data_in, px3117, 
                                       px3118, px3119, px3276, px3277, px3122, 
                                       px3123, px1501, px1784, px1786, px1788, 
                                       px3311, px3312, px3313, px3314, px3315, 
                                       p_Src_rsc_singleport_re, 
                                       p_Src_rsc_singleport_we, px1719, px3169, 
                                       p_nbus_Dst_rsc_singleport_data_in, px1722, 
                                       px3170, px1725, px3171, px1728, px3172, 
                                       px1731, px3173, px1734, px3174, px1737, 
                                       px3175, px1740, px3176, px1209, px1205, 
                                       px1202, px1199, px1196, px1193, px1190, 
                                       px1187, px1183, px1503, px3288, px1502, 
                                       px3289, px3290, px3291, px3292, px3293, 
                                       p_Dst_rsc_singleport_re, 
                                       p_Dst_rsc_singleport_we, 
                                       p_Vga_rsc_singleport_we, 
                                       p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output, 
                                       \p_fsm_output(9)  , \p_fsm_output(11)  , 
                                       \p_fsm_output(13)  , \p_fsm_output(15)  , 
                                       \p_fsm_output(16)  , \p_fsm_output(21)  , 
                                       \p_fsm_output(23)  , \p_fsm_output(25)  , 
                                       \p_fsm_output(30)  , \p_fsm_output(33)  , 
                                       \p_fsm_output(38)  , p_rst, px1507, p_clk, 
                                       \p_fsm_output_1_0(42)   ) ;

    output px1785 ;
    output px1780 ;
    output px1779 ;
    output px1778 ;
    output px1773 ;
    output px1772 ;
    input px3155 ;
    input px3153 ;
    output px1761 ;
    input [8:1]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9 ;
    input px3310 ;
    input px3287 ;
    input px3247 ;
    input px3217 ;
    input px3246 ;
    input px3216 ;
    input px3308 ;
    input px3245 ;
    input px3215 ;
    input px3307 ;
    input px3284 ;
    input px3306 ;
    input px3283 ;
    input px3243 ;
    input px3213 ;
    input px3194 ;
    input px3242 ;
    input px3212 ;
    input px3193 ;
    input px3241 ;
    input px3211 ;
    input px3303 ;
    input px3257 ;
    output px1629 ;
    output px1627 ;
    output px1625 ;
    output px1622 ;
    output px1619 ;
    output px1617 ;
    output px1614 ;
    input px3140 ;
    input px3207 ;
    output px1611 ;
    output px1610 ;
    output px1609 ;
    input p_rtlcn19652 ;
    input p_rtlcn19651 ;
    input p_rtlcn19650 ;
    input p_rtlcn19649 ;
    input [7:0]p_nbus_Vga_rsc_singleport_data_in ;
    input px3336 ;
    input [7:0]p_nbus_Src_rsc_singleport_data_out ;
    output px1601 ;
    input px3335 ;
    output px1600 ;
    input px3334 ;
    output px1599 ;
    input px3333 ;
    output px1598 ;
    input px3332 ;
    output px1597 ;
    input px3331 ;
    output px1596 ;
    input px3330 ;
    output px1595 ;
    input px3329 ;
    output px1594 ;
    output px1557 ;
    input px3248 ;
    input px3244 ;
    input px3214 ;
    output px1551 ;
    input px1549 ;
    output px1550 ;
    output px1541 ;
    output px1540 ;
    output px1536 ;
    output px1533 ;
    output px1509 ;
    input 
    p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2 ;
    input 
    p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt ;
    input p_mgc_start_sync_mgc_bsync_vld_oswt ;
    input p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt ;
    input p_start ;
    input p_Dst_rsc_singleport_oswt ;
    input p_Src_rsc_singleport_oswt ;
    input px3222 ;
    input px3209 ;
    input px1783 ;
    input px3221 ;
    input px3208 ;
    output px1481 ;
    output px1480 ;
    output px1479 ;
    output px1478 ;
    output px1477 ;
    input px3249 ;
    output px1476 ;
    output px1482 ;
    output px1483 ;
    output px1466 ;
    output px1465 ;
    input px3108 ;
    output px1464 ;
    input px3109 ;
    input px1679 ;
    output px1463 ;
    input px1681 ;
    output px1462 ;
    output px1461 ;
    output px1460 ;
    output px1459 ;
    output px1458 ;
    output px1457 ;
    input px3132 ;
    output px1448 ;
    input px3133 ;
    output px1447 ;
    input px3134 ;
    output px1446 ;
    input px3135 ;
    output px1445 ;
    input px3136 ;
    output px1444 ;
    input px3137 ;
    output px1443 ;
    input px3138 ;
    output px1442 ;
    input px3139 ;
    output px1441 ;
    output px1440 ;
    output px1437 ;
    output px1436 ;
    output px1435 ;
    output px1434 ;
    output px1433 ;
    output px1432 ;
    output px1431 ;
    output px1430 ;
    output px1429 ;
    output px1428 ;
    output px1427 ;
    output px1426 ;
    output px1425 ;
    output px1424 ;
    output px1423 ;
    output px1422 ;
    input px3154 ;
    input px1667 ;
    output px1421 ;
    input px1669 ;
    output px1420 ;
    input px3156 ;
    output px1419 ;
    input px3157 ;
    output px1418 ;
    input px3158 ;
    output px1417 ;
    input px3159 ;
    output px1416 ;
    output px1415 ;
    input px3177 ;
    input \p_z_out_14(8)   ;
    input [8:1]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3 ;
    output px1406 ;
    input px3178 ;
    input \p_z_out_14(7)   ;
    output px1405 ;
    input px3179 ;
    input \p_z_out_14(6)   ;
    output px1404 ;
    input px3180 ;
    input \p_z_out_14(5)   ;
    output px1403 ;
    input px3181 ;
    input \p_z_out_14(4)   ;
    output px1402 ;
    input px3182 ;
    input \p_z_out_14(3)   ;
    output px1401 ;
    input px3183 ;
    input \p_z_out_14(2)   ;
    output px1400 ;
    input px3184 ;
    input p_rtlcn30427 ;
    input \p_z_out_14(1)   ;
    output px1399 ;
    output px1398 ;
    output px1395 ;
    output px1394 ;
    output px1393 ;
    output px1392 ;
    output px1391 ;
    output px1390 ;
    output px1389 ;
    output px1388 ;
    output px1387 ;
    output px1386 ;
    output px1385 ;
    output px1384 ;
    output px1383 ;
    output px1382 ;
    output px1381 ;
    output px1380 ;
    output px1379 ;
    input [8:0]p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1 ;
    output px1377 ;
    output px1376 ;
    output px1375 ;
    output px1374 ;
    output px1373 ;
    output px1372 ;
    output px1371 ;
    output px1370 ;
    output px1369 ;
    output px1368 ;
    output px1367 ;
    output px1366 ;
    output px1365 ;
    output px1364 ;
    output px1363 ;
    output px1362 ;
    output px1361 ;
    output px1360 ;
    output px1359 ;
    output px1358 ;
    output px1357 ;
    input [8:0]p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1 ;
    output px1356 ;
    output px1355 ;
    output px1354 ;
    output px1353 ;
    output px1352 ;
    output px1351 ;
    output px1350 ;
    output px1349 ;
    output px1348 ;
    output px1345 ;
    output px1336 ;
    output px1335 ;
    output px1334 ;
    output px1333 ;
    output px1332 ;
    output px1331 ;
    output px1330 ;
    output px1329 ;
    input px3218 ;
    output px1328 ;
    output px1327 ;
    input px3250 ;
    output px1326 ;
    input px3251 ;
    output px1325 ;
    input px3252 ;
    output px1324 ;
    input px3253 ;
    output px1323 ;
    output px1322 ;
    input px3254 ;
    input px3107 ;
    output px1321 ;
    input px3255 ;
    output px1320 ;
    output px1318 ;
    output px1317 ;
    output px1316 ;
    input px3104 ;
    output px1315 ;
    output px1314 ;
    output px1313 ;
    output px1312 ;
    output px1311 ;
    output px1310 ;
    output px1309 ;
    output px1308 ;
    output px1303 ;
    output px1302 ;
    output px1301 ;
    output px1300 ;
    output px1299 ;
    output px1298 ;
    output px1297 ;
    output px1293 ;
    output px1291 ;
    output px1290 ;
    output px1289 ;
    output px1288 ;
    output px1287 ;
    output px1286 ;
    output px1281 ;
    input px3320 ;
    input px3319 ;
    input px3318 ;
    input px3220 ;
    input px3219 ;
    input px3124 ;
    input px3116 ;
    input px3273 ;
    input px3125 ;
    input px3274 ;
    input px3126 ;
    input px3275 ;
    input px3127 ;
    input px3128 ;
    input px3120 ;
    input px3129 ;
    input px3121 ;
    input px3278 ;
    input px3130 ;
    input px3279 ;
    input px3131 ;
    input [8:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp ;
    output [16:0]p_nbus_Src_rsc_singleport_addr ;
    input [7:0]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15 ;
    input [7:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp ;
    input [7:0]p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1 ;
    input [15:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm ;
    input [7:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp ;
    input [14:6]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm ;
    input [1:0]p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6
     ;
    input [1:0]p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7
     ;
    input px1500 ;
    input [1:0]p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5 ;
    input px3195 ;
    input px3196 ;
    input px3110 ;
    input px3197 ;
    input px3111 ;
    input px3198 ;
    input px3112 ;
    input px3199 ;
    input px3113 ;
    input px3200 ;
    input px3114 ;
    input px3115 ;
    input px3295 ;
    input px3161 ;
    input px3296 ;
    input px3162 ;
    input px3297 ;
    input px3163 ;
    input px3298 ;
    input px3164 ;
    input px3299 ;
    input px3165 ;
    input px3300 ;
    input px3166 ;
    input px3301 ;
    input px3167 ;
    input px3302 ;
    input px3168 ;
    output [16:0]p_nbus_Dst_rsc_singleport_addr ;
    input [8:0]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17 ;
    input [16:0]p_nbus_Vga_rsc_singleport_addr ;
    input [8:8]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp ;
    input [16:1]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm ;
    output px1208 ;
    input [15:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm ;
    input [8:0]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva ;
    input px3096 ;
    input [9:1]p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm ;
    input px3097 ;
    input px3098 ;
    input px3099 ;
    input px3100 ;
    input px3101 ;
    input px3102 ;
    input px3103 ;
    input \p_reg_passe_y_1_acc_44_sdt_tmp_6(1)   ;
    input px3264 ;
    input [1:1]p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7
     ;
    input px3141 ;
    input px3224 ;
    input px3316 ;
    input px3265 ;
    input px3142 ;
    input px3225 ;
    input px3266 ;
    input px3143 ;
    input px3226 ;
    input px3267 ;
    input px3144 ;
    input px3227 ;
    input px3268 ;
    input px3145 ;
    input px3228 ;
    input px3269 ;
    input px3146 ;
    input px3270 ;
    input px3229 ;
    input px3160 ;
    output px1159 ;
    output px1664 ;
    output px1068 ;
    input px3309 ;
    input px3286 ;
    output px1660 ;
    output px1067 ;
    input px3285 ;
    output px1656 ;
    output px1066 ;
    output px1651 ;
    output px1065 ;
    output px1646 ;
    output px1064 ;
    input px3305 ;
    input px3282 ;
    output px1642 ;
    output px1063 ;
    input px3304 ;
    input px3281 ;
    output px1638 ;
    output px1062 ;
    input px3280 ;
    output px1634 ;
    output px1061 ;
    input p_rtlcn19655 ;
    output px1051 ;
    input px3258 ;
    input px3206 ;
    input p_rtlcn19654 ;
    output px1050 ;
    input px3205 ;
    input p_rtlcn19653 ;
    output px1049 ;
    output px1607 ;
    input px3204 ;
    input px3152 ;
    output px1048 ;
    input px3150 ;
    input px3149 ;
    output px1606 ;
    output px1047 ;
    input px3202 ;
    input px3148 ;
    input px1604 ;
    output px1605 ;
    output px1046 ;
    input px3201 ;
    input px3147 ;
    input px1602 ;
    output px1603 ;
    input px1608 ;
    output px1045 ;
    input px3203 ;
    output px1763 ;
    output px1766 ;
    output px1770 ;
    input px1774 ;
    input px1775 ;
    output px1009 ;
    output px1006 ;
    input px1544 ;
    input px1545 ;
    input px1548 ;
    input px3259 ;
    input px3151 ;
    output px1004 ;
    input px1781 ;
    output px1790 ;
    output px1003 ;
    output px986 ;
    output px985 ;
    output px984 ;
    input px3261 ;
    input px3260 ;
    input px3105 ;
    output px983 ;
    input px3262 ;
    input px3256 ;
    output px982 ;
    output px981 ;
    output px980 ;
    input p_st_copy_y_2_2_tr0 ;
    input p_st_copy_y_1_2_tr0 ;
    input px3317 ;
    input px3294 ;
    input p_rtlcn30054 ;
    input [8:8]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2 ;
    input p_exit_passe_y_1_sva ;
    input p_exit_passe_y_sva ;
    input p_rtlcn30248 ;
    input p_st_copy_y_2_tr0 ;
    input px3272 ;
    input [8:1]p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11 ;
    output [7:0]p_nbus_Src_rsc_singleport_data_in ;
    input px3117 ;
    input px3118 ;
    input px3119 ;
    input px3276 ;
    input px3277 ;
    input px3122 ;
    input px3123 ;
    input px1501 ;
    output px1784 ;
    input px1786 ;
    output px1788 ;
    input px3311 ;
    input px3312 ;
    input px3313 ;
    input px3314 ;
    input px3315 ;
    output p_Src_rsc_singleport_re ;
    output p_Src_rsc_singleport_we ;
    input px1719 ;
    input px3169 ;
    output [7:0]p_nbus_Dst_rsc_singleport_data_in ;
    input px1722 ;
    input px3170 ;
    input px1725 ;
    input px3171 ;
    input px1728 ;
    input px3172 ;
    input px1731 ;
    input px3173 ;
    input px1734 ;
    input px3174 ;
    input px1737 ;
    input px3175 ;
    input px1740 ;
    input px3176 ;
    input px1209 ;
    input px1205 ;
    input px1202 ;
    input px1199 ;
    input px1196 ;
    input px1193 ;
    input px1190 ;
    input px1187 ;
    input px1183 ;
    input px1503 ;
    input px3288 ;
    output px1502 ;
    input px3289 ;
    input px3290 ;
    input px3291 ;
    input px3292 ;
    input px3293 ;
    output p_Dst_rsc_singleport_re ;
    output p_Dst_rsc_singleport_we ;
    output p_Vga_rsc_singleport_we ;
    output [41:41]p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output ;
    output \p_fsm_output(9)   ;
    output \p_fsm_output(11)   ;
    output \p_fsm_output(13)   ;
    output \p_fsm_output(15)   ;
    output \p_fsm_output(16)   ;
    output \p_fsm_output(21)   ;
    output \p_fsm_output(23)   ;
    output \p_fsm_output(25)   ;
    output \p_fsm_output(30)   ;
    output \p_fsm_output(33)   ;
    output \p_fsm_output(38)   ;
    input p_rst ;
    output px1507 ;
    input p_clk ;
    output \p_fsm_output_1_0(42)   ;

    wire nx62052z3, nx62052z6, nx63040z3, nx64045z4, nx64045z7, nx64045z10, 
         nx48054z18, nx48054z17, nx466z4, nx466z11, nx466z18, nx466z25, nx466z31, 
         nx13465z2, nx14455z2, nx55033z21, nx55033z3, nx21438z2, nx48054z2, 
         nx62052z10, nx13604z4, nx13604z3, nx13604z7, nx13604z9, nx13604z11, 
         nx13604z16, nx13604z13, nx13604z19, nx13604z27, nx13604z23, nx39387z2, 
         nx14457z2, nx55033z18, nx55033z15, nx55033z12, nx55033z8, nx55033z4, 
         nx44375z2, nx44375z4, nx44375z5, nx44375z6, nx44375z7, nx48054z15, 
         nx48054z12, nx13217z4, nx13217z5, nx44375z8, nx51360z2, nx51360z4, 
         nx51360z6, nx466z30, nx466z24, nx466z17, nx40014z1, nx41011z1, 
         nx41011z3, nx41011z4, nx18955z2, nx17958z3, nx17958z4, nx16961z3, 
         nx43439z1, nx43439z2, nx64935z3, nx396z3, nx6378z2, nx6378z3, nx48054z9, 
         nx48054z6, nx9749z2, nx9750z2, nx9751z2, nx39395z2, nx9752z2, nx9753z2, 
         nx466z10, nx466z3, nx48054z5, nx9754z2, nx9755z2, nx9756z2, nx31411z2, 
         nx33411z2, nx46374z2, nx51360z3, nx44375z3, nx13217z2, nx15598z2, 
         nx48054z23, nx1463z2, nx55033z2, nx13604z2, nx466z2, nx48054z4, 
         nx7323z1, nx6326z1, nx5329z1, nx4332z1, nx3335z1, nx2338z1, nx1341z1, 
         nx344z1, nx42008z3, nx42008z2, nx42008z1, nx43005z3, nx43005z2, 
         nx43005z1, nx44002z3, nx44002z2, nx44002z1, nx44999z3, nx44999z2, 
         nx44999z1, nx45996z3, nx45996z2, nx45996z1, nx19952z3, nx19952z2, 
         nx19952z1, nx18955z4, nx18955z1, nx17958z1, nx16961z5, nx16961z2, 
         nx15964z3, nx15964z2, nx14967z2, nx14967z1, nx13217z3, nx13970z3, 
         nx13970z2, nx13604z17, nx12973z1, nx15964z1, nx13970z1, nx13604z25, 
         nx11976z1, nx13604z21, nx10979z1, nx41011z2, nx9374z3, nx10371z3, 
         nx11368z3, nx12365z3, nx13362z3, nx14359z3, nx15356z3, nx16353z3, 
         nx44436z3, nx44436z2, nx45433z3, nx45433z2, nx46430z3, nx46430z2, 
         nx47427z3, nx47427z2, nx48424z3, nx48424z2, nx49421z3, nx49421z2, 
         nx62941z3, nx62941z2, nx63938z3, nx63938z2, nx64935z5, nx64935z2, 
         nx396z4, nx396z1, nx1393z3, nx1393z2, nx1393z1, nx2390z3, nx2390z2, 
         nx2390z1, nx3387z3, nx3387z2, nx3387z1, nx4384z3, nx4384z2, nx4384z1, 
         nx5381z3, nx5381z2, nx5381z1, nx33411z3, nx6378z1, nx51360z5, nx21580z1
         ;
    wire [41:39]Main_Trans_Ond_Opt_core_inst_fsm_output;
    wire nx20583z1;
    wire \fsm_output(4)  ;
    wire nx17592z1;
    wire \fsm_output(5)  ;
    wire nx16595z1, \fsm_output(6)  , nx15598z1;
    wire \fsm_output(7)  ;
    wire nx14601z1, \fsm_output(8)  , nx13604z1;
    wire \fsm_output(10)  , \fsm_output(12)  ;
    wire \fsm_output(14)  , \fsm_output(17)  , nx4456z1;
    wire \fsm_output(18)  ;
    wire nx3459z1, \fsm_output(19)  , nx1463z1;
    wire \fsm_output(20)  ;
    wire nx466z1;
    wire \fsm_output(22)  , \fsm_output(24)  , \fsm_output(26)  , 
         \fsm_output(27)  , \fsm_output(28)  ;
    wire \fsm_output(29)  , nx56030z1, nx55033z1;
    wire \fsm_output(31)  ;
    wire nx54036z1;
    wire \fsm_output(32)  ;
    wire nx53039z1;
    wire \fsm_output(34)  , \fsm_output(35)  ;
    wire nx50048z1, \fsm_output(36)  , nx49051z1, \fsm_output(37)  , nx48054z22;
    wire \fsm_output(39)  , \fsm_output(40)  ;
    wire nx44064z1;
    wire \fsm_output(41)  ;
    wire nx48054z3;



    FDRE ix48054z41780 (.Q (\p_fsm_output_1_0(42)  ), .C (p_clk), .CE (px1507), 
         .D (nx48054z3), .R (p_rst)) ;
    FDRE \reg_state_var(41)  (.Q (\fsm_output(41)  ), .C (p_clk), .CE (px1507), 
         .D (nx44064z1), .R (p_rst)) ;
    FDRE \reg_state_var(40)  (.Q (\fsm_output(40)  ), .C (p_clk), .CE (px1507), 
         .D (\fsm_output(39)  ), .R (p_rst)) ;
    FDRE \reg_state_var(39)  (.Q (\fsm_output(39)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(38)  ), .R (p_rst)) ;
    FDRE \reg_state_var(38)  (.Q (\p_fsm_output(38)  ), .C (p_clk), .CE (px1507)
         , .D (nx48054z22), .R (p_rst)) ;
    FDRE \reg_state_var(37)  (.Q (\fsm_output(37)  ), .C (p_clk), .CE (px1507), 
         .D (nx49051z1), .R (p_rst)) ;
    FDRE \reg_state_var(36)  (.Q (\fsm_output(36)  ), .C (p_clk), .CE (px1507), 
         .D (nx50048z1), .R (p_rst)) ;
    FDRE \reg_state_var(35)  (.Q (\fsm_output(35)  ), .C (p_clk), .CE (px1507), 
         .D (\fsm_output(34)  ), .R (p_rst)) ;
    FDRE \reg_state_var(34)  (.Q (\fsm_output(34)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(33)  ), .R (p_rst)) ;
    FDRE \reg_state_var(33)  (.Q (\p_fsm_output(33)  ), .C (p_clk), .CE (px1507)
         , .D (nx53039z1), .R (p_rst)) ;
    FDRE \reg_state_var(32)  (.Q (\fsm_output(32)  ), .C (p_clk), .CE (px1507), 
         .D (nx54036z1), .R (p_rst)) ;
    FDRE \reg_state_var(31)  (.Q (\fsm_output(31)  ), .C (p_clk), .CE (px1507), 
         .D (nx55033z1), .R (p_rst)) ;
    FDRE \reg_state_var(30)  (.Q (\p_fsm_output(30)  ), .C (p_clk), .CE (px1507)
         , .D (nx56030z1), .R (p_rst)) ;
    FDRE \reg_state_var(29)  (.Q (\fsm_output(29)  ), .C (p_clk), .CE (px1507), 
         .D (\fsm_output(28)  ), .R (p_rst)) ;
    FDRE \reg_state_var(28)  (.Q (\fsm_output(28)  ), .C (p_clk), .CE (px1507), 
         .D (\fsm_output(27)  ), .R (p_rst)) ;
    FDRE \reg_state_var(27)  (.Q (\fsm_output(27)  ), .C (p_clk), .CE (px1507), 
         .D (\fsm_output(26)  ), .R (p_rst)) ;
    FDRE \reg_state_var(26)  (.Q (\fsm_output(26)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(25)  ), .R (p_rst)) ;
    FDRE \reg_state_var(25)  (.Q (\p_fsm_output(25)  ), .C (p_clk), .CE (px1507)
         , .D (\fsm_output(24)  ), .R (p_rst)) ;
    FDRE \reg_state_var(24)  (.Q (\fsm_output(24)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(23)  ), .R (p_rst)) ;
    FDRE \reg_state_var(23)  (.Q (\p_fsm_output(23)  ), .C (p_clk), .CE (px1507)
         , .D (\fsm_output(22)  ), .R (p_rst)) ;
    FDRE \reg_state_var(22)  (.Q (\fsm_output(22)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(21)  ), .R (p_rst)) ;
    FDRE \reg_state_var(21)  (.Q (\p_fsm_output(21)  ), .C (p_clk), .CE (px1507)
         , .D (nx466z1), .R (p_rst)) ;
    FDRE \reg_state_var(20)  (.Q (\fsm_output(20)  ), .C (p_clk), .CE (px1507), 
         .D (nx1463z1), .R (p_rst)) ;
    FDRE \reg_state_var(19)  (.Q (\fsm_output(19)  ), .C (p_clk), .CE (px1507), 
         .D (nx3459z1), .R (p_rst)) ;
    FDRE \reg_state_var(18)  (.Q (\fsm_output(18)  ), .C (p_clk), .CE (px1507), 
         .D (nx4456z1), .R (p_rst)) ;
    FDRE \reg_state_var(17)  (.Q (\fsm_output(17)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(16)  ), .R (p_rst)) ;
    FDRE \reg_state_var(16)  (.Q (\p_fsm_output(16)  ), .C (p_clk), .CE (px1507)
         , .D (\p_fsm_output(15)  ), .R (p_rst)) ;
    FDRE \reg_state_var(15)  (.Q (\p_fsm_output(15)  ), .C (p_clk), .CE (px1507)
         , .D (\fsm_output(14)  ), .R (p_rst)) ;
    FDRE \reg_state_var(14)  (.Q (\fsm_output(14)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(13)  ), .R (p_rst)) ;
    FDRE \reg_state_var(13)  (.Q (\p_fsm_output(13)  ), .C (p_clk), .CE (px1507)
         , .D (\fsm_output(12)  ), .R (p_rst)) ;
    FDRE \reg_state_var(12)  (.Q (\fsm_output(12)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(11)  ), .R (p_rst)) ;
    FDRE \reg_state_var(11)  (.Q (\p_fsm_output(11)  ), .C (p_clk), .CE (px1507)
         , .D (\fsm_output(10)  ), .R (p_rst)) ;
    FDRE \reg_state_var(10)  (.Q (\fsm_output(10)  ), .C (p_clk), .CE (px1507), 
         .D (\p_fsm_output(9)  ), .R (p_rst)) ;
    FDRE \reg_state_var(9)  (.Q (\p_fsm_output(9)  ), .C (p_clk), .CE (px1507), 
         .D (nx13604z1), .R (p_rst)) ;
    FDRE \reg_state_var(8)  (.Q (\fsm_output(8)  ), .C (p_clk), .CE (px1507), .D (
         nx14601z1), .R (p_rst)) ;
    FDRE \reg_state_var(7)  (.Q (\fsm_output(7)  ), .C (p_clk), .CE (px1507), .D (
         nx15598z1), .R (p_rst)) ;
    FDRE \reg_state_var(6)  (.Q (\fsm_output(6)  ), .C (p_clk), .CE (px1507), .D (
         nx16595z1), .R (p_rst)) ;
    FDRE \reg_state_var(5)  (.Q (\fsm_output(5)  ), .C (p_clk), .CE (px1507), .D (
         nx17592z1), .R (p_rst)) ;
    FDRE \reg_state_var(4)  (.Q (\fsm_output(4)  ), .C (p_clk), .CE (px1507), .D (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .R (p_rst)) ;
    FDRE \reg_state_var(3)  (.Q (Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .C (
         p_clk), .CE (px1507), .D (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .R (p_rst)) ;
    FDRE \reg_state_var(2)  (.Q (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .C (p_clk), .CE (
         px1507), .D (nx20583z1), .R (p_rst)) ;
    FDRE \reg_state_var(1)  (.Q (Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .C (
         p_clk), .CE (px1507), .D (nx21580z1), .R (p_rst)) ;
    FDSE \reg_state_var(0)  (.Q (nx21580z1), .C (p_clk), .CE (px1507), .D (
         \p_fsm_output_1_0(42)  ), .S (p_rst)) ;
    LUT2 ix22123z1321 (.O (p_Vga_rsc_singleport_we), .I0 (px1507), .I1 (
         \fsm_output(39)  )) ;
         defparam ix22123z1321.INIT = 4'h7;
    LUT2 ix58074z1327 (.O (p_Dst_rsc_singleport_we), .I0 (px1507), .I1 (
         nx51360z5)) ;
         defparam ix58074z1327.INIT = 4'hD;
    LUT6 ix53089z1313 (.O (p_Dst_rsc_singleport_re), .I0 (\p_fsm_output(38)  ), 
         .I1 (\fsm_output(24)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         \fsm_output(22)  ), .I4 (\p_fsm_output(21)  ), .I5 (px1507)) ;
         defparam ix53089z1313.INIT = 64'h00000001FFFFFFFF;
    LUT5 ix6378z1263 (.O (p_nbus_Dst_rsc_singleport_addr[0]), .I0 (nx6378z1), .I1 (
         \fsm_output(24)  ), .I2 (\p_fsm_output(23)  ), .I3 (\fsm_output(22)  )
         , .I4 (\p_fsm_output(21)  )) ;
         defparam ix6378z1263.INIT = 32'hFFCCFFCD;
    LUT5 ix5381z17697 (.O (p_nbus_Dst_rsc_singleport_addr[1]), .I0 (nx33411z3), 
         .I1 (nx5381z1), .I2 (nx5381z2), .I3 (nx5381z3), .I4 (px3293)) ;
         defparam ix5381z17697.INIT = 32'h7FFF3FFF;
    LUT5 ix4384z17697 (.O (p_nbus_Dst_rsc_singleport_addr[2]), .I0 (nx33411z3), 
         .I1 (nx4384z1), .I2 (nx4384z2), .I3 (nx4384z3), .I4 (px3292)) ;
         defparam ix4384z17697.INIT = 32'h7FFF3FFF;
    LUT5 ix3387z17697 (.O (p_nbus_Dst_rsc_singleport_addr[3]), .I0 (nx33411z3), 
         .I1 (nx3387z1), .I2 (nx3387z2), .I3 (nx3387z3), .I4 (px3291)) ;
         defparam ix3387z17697.INIT = 32'h7FFF3FFF;
    LUT5 ix2390z17697 (.O (p_nbus_Dst_rsc_singleport_addr[4]), .I0 (nx33411z3), 
         .I1 (nx2390z1), .I2 (nx2390z2), .I3 (nx2390z3), .I4 (px3290)) ;
         defparam ix2390z17697.INIT = 32'h7FFF3FFF;
    LUT5 ix1393z17697 (.O (p_nbus_Dst_rsc_singleport_addr[5]), .I0 (nx33411z3), 
         .I1 (nx1393z1), .I2 (nx1393z2), .I3 (nx1393z3), .I4 (px3289)) ;
         defparam ix1393z17697.INIT = 32'h7FFF3FFF;
    LUT6 ix396z50273 (.O (p_nbus_Dst_rsc_singleport_addr[6]), .I0 (px1502), .I1 (
         nx396z1), .I2 (nx396z4), .I3 (\p_fsm_output(38)  ), .I4 (
         \fsm_output(22)  ), .I5 (px3288)) ;
         defparam ix396z50273.INIT = 64'hFFFFBF3FBF3FBF3F;
    LUT5 ix64935z17697 (.O (p_nbus_Dst_rsc_singleport_addr[7]), .I0 (px1503), .I1 (
         nx64935z2), .I2 (px1183), .I3 (nx64935z5), .I4 (\p_fsm_output(38)  )) ;
         defparam ix64935z17697.INIT = 32'hBFFF3FFF;
    LUT5 ix63938z33953 (.O (p_nbus_Dst_rsc_singleport_addr[8]), .I0 (px1187), .I1 (
         nx63938z2), .I2 (nx63938z3), .I3 (p_nbus_Vga_rsc_singleport_addr[0]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix63938z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix62941z33953 (.O (p_nbus_Dst_rsc_singleport_addr[9]), .I0 (px1190), .I1 (
         nx62941z2), .I2 (nx62941z3), .I3 (p_nbus_Vga_rsc_singleport_addr[1]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix62941z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix49421z33953 (.O (p_nbus_Dst_rsc_singleport_addr[10]), .I0 (px1193), .I1 (
         nx49421z2), .I2 (nx49421z3), .I3 (p_nbus_Vga_rsc_singleport_addr[2]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix49421z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix48424z33953 (.O (p_nbus_Dst_rsc_singleport_addr[11]), .I0 (px1196), .I1 (
         nx48424z2), .I2 (nx48424z3), .I3 (p_nbus_Vga_rsc_singleport_addr[3]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix48424z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix47427z33953 (.O (p_nbus_Dst_rsc_singleport_addr[12]), .I0 (px1199), .I1 (
         nx47427z2), .I2 (nx47427z3), .I3 (p_nbus_Vga_rsc_singleport_addr[4]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix47427z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix46430z33953 (.O (p_nbus_Dst_rsc_singleport_addr[13]), .I0 (px1202), .I1 (
         nx46430z2), .I2 (nx46430z3), .I3 (p_nbus_Vga_rsc_singleport_addr[5]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix46430z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix45433z33953 (.O (p_nbus_Dst_rsc_singleport_addr[14]), .I0 (px1205), .I1 (
         nx45433z2), .I2 (nx45433z3), .I3 (p_nbus_Vga_rsc_singleport_addr[6]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix45433z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix44436z33953 (.O (p_nbus_Dst_rsc_singleport_addr[15]), .I0 (px1209), .I1 (
         nx44436z2), .I2 (nx44436z3), .I3 (p_nbus_Vga_rsc_singleport_addr[7]), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix44436z33953.INIT = 32'hFF7F7F7F;
    LUT6 ix16353z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[0]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3176), .I4 (px1740
         ), .I5 (nx16353z3)) ;
         defparam ix16353z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix15356z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[1]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3175), .I4 (px1737
         ), .I5 (nx15356z3)) ;
         defparam ix15356z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix14359z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[2]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3174), .I4 (px1734
         ), .I5 (nx14359z3)) ;
         defparam ix14359z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix13362z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[3]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3173), .I4 (px1731
         ), .I5 (nx13362z3)) ;
         defparam ix13362z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix12365z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[4]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3172), .I4 (px1728
         ), .I5 (nx12365z3)) ;
         defparam ix12365z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix11368z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[5]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3171), .I4 (px1725
         ), .I5 (nx11368z3)) ;
         defparam ix11368z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix10371z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[6]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3170), .I4 (px1722
         ), .I5 (nx10371z3)) ;
         defparam ix10371z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT6 ix9374z1313 (.O (p_nbus_Dst_rsc_singleport_data_in[7]), .I0 (
         \fsm_output(34)  ), .I1 (\fsm_output(14)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I3 (px3169), .I4 (px1719
         ), .I5 (nx9374z3)) ;
         defparam ix9374z1313.INIT = 64'hFEFACC00FFFFFFFF;
    LUT5 ix40499z1313 (.O (p_Src_rsc_singleport_we), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(27)  ), .I2 (\fsm_output(26)  ), .I3 (\p_fsm_output(25)  )
         , .I4 (px1507)) ;
         defparam ix40499z1313.INIT = 32'h0001FFFF;
    LUT6 ix35514z23167 (.O (p_Src_rsc_singleport_re), .I0 (px1507), .I1 (
         nx41011z2), .I2 (\p_fsm_output(33)  ), .I3 (\fsm_output(10)  ), .I4 (
         \p_fsm_output(9)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix35514z23167.INIT = 64'h555555555555555D;
    LUT6 ix10979z63007 (.O (p_nbus_Src_rsc_singleport_addr[0]), .I0 (nx10979z1)
         , .I1 (nx13604z21), .I2 (\fsm_output(12)  ), .I3 (\p_fsm_output(11)  )
         , .I4 (\fsm_output(10)  ), .I5 (\p_fsm_output(9)  )) ;
         defparam ix10979z63007.INIT = 64'hFFFFF0F0FFFFF0FD;
    LUT6 ix11976z58111 (.O (p_nbus_Src_rsc_singleport_addr[1]), .I0 (nx11976z1)
         , .I1 (nx13604z25), .I2 (nx13970z1), .I3 (nx15964z1), .I4 (px3292), .I5 (
         px3315)) ;
         defparam ix11976z58111.INIT = 64'hDFFFDDFFDFDFDDDD;
    LUT6 ix12973z58111 (.O (p_nbus_Src_rsc_singleport_addr[2]), .I0 (nx12973z1)
         , .I1 (nx13604z17), .I2 (nx13970z1), .I3 (nx15964z1), .I4 (px3291), .I5 (
         px3314)) ;
         defparam ix12973z58111.INIT = 64'hDFFFDDFFDFDFDDDD;
    LUT6 ix13970z1073 (.O (p_nbus_Src_rsc_singleport_addr[3]), .I0 (nx13970z1), 
         .I1 (nx15964z1), .I2 (nx13970z2), .I3 (nx13970z3), .I4 (px3290), .I5 (
         px3313)) ;
         defparam ix13970z1073.INIT = 64'hFF7FFF3FFF5FFF0F;
    LUT6 ix14967z1073 (.O (p_nbus_Src_rsc_singleport_addr[4]), .I0 (nx13217z3), 
         .I1 (nx15964z1), .I2 (nx14967z1), .I3 (nx14967z2), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[0]), .I5 (
         px3312)) ;
         defparam ix14967z1073.INIT = 64'hFF7FFF3FFF5FFF0F;
    LUT6 ix15964z1073 (.O (p_nbus_Src_rsc_singleport_addr[5]), .I0 (nx13217z3), 
         .I1 (nx15964z1), .I2 (nx15964z2), .I3 (nx15964z3), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[1]), .I5 (
         px3311)) ;
         defparam ix15964z1073.INIT = 64'hFF7FFF3FFF5FFF0F;
    LUT5 ix16961z50273 (.O (p_nbus_Src_rsc_singleport_addr[6]), .I0 (px1502), .I1 (
         nx16961z2), .I2 (nx16961z5), .I3 (\p_fsm_output(33)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix16961z50273.INIT = 32'hBFBFBF3F;
    LUT6 ix17958z1569 (.O (p_nbus_Src_rsc_singleport_addr[7]), .I0 (px1788), .I1 (
         px1786), .I2 (px1784), .I3 (nx17958z1), .I4 (\p_fsm_output(33)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix17958z1569.INIT = 64'h96FF96FF96FF00FF;
    LUT6 ix18955z23329 (.O (p_nbus_Src_rsc_singleport_addr[8]), .I0 (nx18955z1)
         , .I1 (px1501), .I2 (nx41011z2), .I3 (nx18955z4), .I4 (
         \p_fsm_output(9)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[0])) ;
         defparam ix18955z23329.INIT = 64'h7FFF5FFF77FF55FF;
    LUT5 ix19952z33953 (.O (p_nbus_Src_rsc_singleport_addr[9]), .I0 (nx19952z1)
         , .I1 (nx19952z2), .I2 (nx19952z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[0])) ;
         defparam ix19952z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix45996z33953 (.O (p_nbus_Src_rsc_singleport_addr[10]), .I0 (nx45996z1)
         , .I1 (nx45996z2), .I2 (nx45996z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[1])) ;
         defparam ix45996z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix44999z33953 (.O (p_nbus_Src_rsc_singleport_addr[11]), .I0 (nx44999z1)
         , .I1 (nx44999z2), .I2 (nx44999z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[2])) ;
         defparam ix44999z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix44002z33953 (.O (p_nbus_Src_rsc_singleport_addr[12]), .I0 (nx44002z1)
         , .I1 (nx44002z2), .I2 (nx44002z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[3])) ;
         defparam ix44002z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix43005z33953 (.O (p_nbus_Src_rsc_singleport_addr[13]), .I0 (nx43005z1)
         , .I1 (nx43005z2), .I2 (nx43005z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[4])) ;
         defparam ix43005z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix42008z33953 (.O (p_nbus_Src_rsc_singleport_addr[14]), .I0 (nx42008z1)
         , .I1 (nx42008z2), .I2 (nx42008z3), .I3 (\fsm_output(27)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[5])) ;
         defparam ix42008z33953.INIT = 32'hFF7F7F7F;
    LUT5 ix344z64119 (.O (p_nbus_Src_rsc_singleport_data_in[0]), .I0 (nx344z1), 
         .I1 (\fsm_output(28)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[1]), .I4 (px3123)) ;
         defparam ix344z64119.INIT = 32'hFDDDF555;
    LUT5 ix1341z64119 (.O (p_nbus_Src_rsc_singleport_data_in[1]), .I0 (nx1341z1)
         , .I1 (\fsm_output(28)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[2]), .I4 (px3122)) ;
         defparam ix1341z64119.INIT = 32'hFDDDF555;
    LUT5 ix2338z64119 (.O (p_nbus_Src_rsc_singleport_data_in[2]), .I0 (nx2338z1)
         , .I1 (\fsm_output(27)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[3]), .I4 (px3277)) ;
         defparam ix2338z64119.INIT = 32'hFDDDF555;
    LUT5 ix3335z64119 (.O (p_nbus_Src_rsc_singleport_data_in[3]), .I0 (nx3335z1)
         , .I1 (\fsm_output(27)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[4]), .I4 (px3276)) ;
         defparam ix3335z64119.INIT = 32'hFDDDF555;
    LUT5 ix4332z64119 (.O (p_nbus_Src_rsc_singleport_data_in[4]), .I0 (nx4332z1)
         , .I1 (\fsm_output(28)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[5]), .I4 (px3119)) ;
         defparam ix4332z64119.INIT = 32'hFDDDF555;
    LUT5 ix5329z64119 (.O (p_nbus_Src_rsc_singleport_data_in[5]), .I0 (nx5329z1)
         , .I1 (\fsm_output(28)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[6]), .I4 (px3118)) ;
         defparam ix5329z64119.INIT = 32'hFDDDF555;
    LUT5 ix6326z64119 (.O (p_nbus_Src_rsc_singleport_data_in[6]), .I0 (nx6326z1)
         , .I1 (\fsm_output(28)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[7]), .I4 (px3117)) ;
         defparam ix6326z64119.INIT = 32'hFDDDF555;
    LUT5 ix7323z64119 (.O (p_nbus_Src_rsc_singleport_data_in[7]), .I0 (nx7323z1)
         , .I1 (\fsm_output(27)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[8]), .I4 (px3272)) ;
         defparam ix7323z64119.INIT = 32'hFDDDF555;
    LUT5 ix20583z1302 (.O (nx20583z1), .I0 (nx48054z4), .I1 (\fsm_output(5)  ), 
         .I2 (\fsm_output(4)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (p_st_copy_y_2_tr0)
         ) ;
         defparam ix20583z1302.INIT = 32'hFF44FFF4;
    LUT4 ix14601z42510 (.O (nx14601z1), .I0 (nx466z2), .I1 (\fsm_output(18)  ), 
         .I2 (\fsm_output(7)  ), .I3 (p_rtlcn30248)) ;
         defparam ix14601z42510.INIT = 16'hA0EC;
    LUT4 ix13604z22014 (.O (nx13604z1), .I0 (nx13604z2), .I1 (\fsm_output(17)  )
         , .I2 (\fsm_output(8)  ), .I3 (p_exit_passe_y_sva)) ;
         defparam ix13604z22014.INIT = 16'h50DC;
    LUT4 ix4456z61890 (.O (nx4456z1), .I0 (nx13604z2), .I1 (\fsm_output(17)  ), 
         .I2 (\fsm_output(8)  ), .I3 (p_exit_passe_y_sva)) ;
         defparam ix4456z61890.INIT = 16'hECA0;
    LUT4 ix3459z57714 (.O (nx3459z1), .I0 (nx466z2), .I1 (\fsm_output(18)  ), .I2 (
         \fsm_output(7)  ), .I3 (p_rtlcn30248)) ;
         defparam ix3459z57714.INIT = 16'hDC50;
    LUT4 ix466z42510 (.O (nx466z1), .I0 (nx466z2), .I1 (\fsm_output(29)  ), .I2 (
         \fsm_output(20)  ), .I3 (p_exit_passe_y_1_sva)) ;
         defparam ix466z42510.INIT = 16'hA0EC;
    LUT4 ix56030z57714 (.O (nx56030z1), .I0 (nx466z2), .I1 (\fsm_output(29)  ), 
         .I2 (\fsm_output(20)  ), .I3 (p_exit_passe_y_1_sva)) ;
         defparam ix56030z57714.INIT = 16'hDC50;
    LUT5 ix55033z786 (.O (nx55033z1), .I0 (nx55033z2), .I1 (nx1463z2), .I2 (
         \p_fsm_output(30)  ), .I3 (\fsm_output(19)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2[8])) ;
         defparam ix55033z786.INIT = 32'hCD00FDF0;
    LUT5 ix54036z3884 (.O (nx54036z1), .I0 (\fsm_output(36)  ), .I1 (
         \fsm_output(31)  ), .I2 (p_rtlcn30054), .I3 (px3294), .I4 (px3317)) ;
         defparam ix54036z3884.INIT = 32'hCE0A0A0A;
    LUT4 ix53039z22014 (.O (nx53039z1), .I0 (nx13604z2), .I1 (\fsm_output(35)  )
         , .I2 (\fsm_output(32)  ), .I3 (p_st_copy_y_1_2_tr0)) ;
         defparam ix53039z22014.INIT = 16'h50DC;
    LUT4 ix50048z61890 (.O (nx50048z1), .I0 (nx13604z2), .I1 (\fsm_output(35)  )
         , .I2 (\fsm_output(32)  ), .I3 (p_st_copy_y_1_2_tr0)) ;
         defparam ix50048z61890.INIT = 16'hECA0;
    LUT5 ix49051z61966 (.O (nx49051z1), .I0 (\fsm_output(36)  ), .I1 (
         \fsm_output(31)  ), .I2 (p_rtlcn30054), .I3 (px3294), .I4 (px3317)) ;
         defparam ix49051z61966.INIT = 32'hA0ECECEC;
    LUT6 ix48054z23601 (.O (nx48054z22), .I0 (nx48054z4), .I1 (nx48054z23), .I2 (
         nx15598z2), .I3 (\fsm_output(41)  ), .I4 (\fsm_output(40)  ), .I5 (
         p_st_copy_y_2_2_tr0)) ;
         defparam ix48054z23601.INIT = 64'h57035703FFFF5703;
    LUT6 ix13217z1314 (.O (px980), .I0 (nx466z2), .I1 (px1507), .I2 (nx13217z2)
         , .I3 (nx44375z3), .I4 (nx51360z3), .I5 (px3317)) ;
         defparam ix13217z1314.INIT = 64'hBFFFFFFF80000000;
    LUT4 ix13218z33858 (.O (px981), .I0 (px1507), .I1 (nx1463z2), .I2 (
         \fsm_output(19)  ), .I3 (px3294)) ;
         defparam ix13218z33858.INIT = 16'h7F20;
    LUT5 ix13219z1022 (.O (px982), .I0 (nx46374z2), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3256), .I3 (px3262
         ), .I4 (px3294)) ;
         defparam ix13219z1022.INIT = 32'hEECCFEDC;
    LUT6 ix13220z58094 (.O (px983), .I0 (\fsm_output(37)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3105), .I3 (px3260
         ), .I4 (px3261), .I5 (px3294)) ;
         defparam ix13220z58094.INIT = 64'hFDECFDECFFEEDDCC;
    LUT3 ix13221z1534 (.O (px984), .I0 (\fsm_output(37)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3256)) ;
         defparam ix13221z1534.INIT = 8'hDC;
    LUT6 ix13222z1313 (.O (px985), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(24)  ), .I2 (\p_fsm_output(23)  ), .I3 (\fsm_output(22)  )
         , .I4 (\p_fsm_output(21)  ), .I5 (nx51360z5)) ;
         defparam ix13222z1313.INIT = 64'hFFFFFFFEFFFFFFFF;
    LUT6 ix13223z1305 (.O (px986), .I0 (nx33411z2), .I1 (nx41011z2), .I2 (
         \p_fsm_output(33)  ), .I3 (\fsm_output(10)  ), .I4 (\p_fsm_output(9)  )
         , .I5 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix13223z1305.INIT = 64'hFFFFFFFFFFFFFFF7;
    LUT5 ix15736z28536 (.O (px1003), .I0 (px1790), .I1 (px1788), .I2 (px1786), .I3 (
         px1784), .I4 (px1781)) ;
         defparam ix15736z28536.INIT = 32'h95A96A56;
    LUT6 ix15735z56826 (.O (px1004), .I0 (\p_fsm_output(21)  ), .I1 (px3151), .I2 (
         px3259), .I3 (px1548), .I4 (px1545), .I5 (px1544)) ;
         defparam ix15735z56826.INIT = 64'h2727D8D827D8D8D8;
    LUT2 ix15733z1323 (.O (px1006), .I0 (nx13604z2), .I1 (nx31411z2)) ;
         defparam ix15733z1323.INIT = 4'h9;
    LUT6 ix15730z1311 (.O (px1009), .I0 (px1775), .I1 (px1774), .I2 (px1770), .I3 (
         px1766), .I4 (px1763), .I5 (px3203)) ;
         defparam ix15730z1311.INIT = 64'hFFFD00020002FFFD;
    LUT6 ix11746z29166 (.O (px1045), .I0 (px1608), .I1 (px1603), .I2 (px1602), .I3 (
         \p_fsm_output(30)  ), .I4 (px3147), .I5 (px3201)) ;
         defparam ix11746z29166.INIT = 64'h93336C3393CC6CCC;
    LUT6 ix11745z29166 (.O (px1046), .I0 (px1608), .I1 (px1605), .I2 (px1604), .I3 (
         \p_fsm_output(30)  ), .I4 (px3148), .I5 (px3202)) ;
         defparam ix11745z29166.INIT = 64'h93336C3393CC6CCC;
    LUT6 ix11744z16878 (.O (px1047), .I0 (px1608), .I1 (px1606), .I2 (
         \p_fsm_output(30)  ), .I3 (px3149), .I4 (px3150), .I5 (px3203)) ;
         defparam ix11744z16878.INIT = 64'h936333C39C6C3CCC;
    LUT6 ix11743z11690 (.O (px1048), .I0 (\p_fsm_output(30)  ), .I1 (px3150), .I2 (
         px3151), .I3 (px3152), .I4 (px3204), .I5 (px1607)) ;
         defparam ix11743z11690.INIT = 64'h8222D7777DDD2888;
    LUT6 ix11742z59760 (.O (px1049), .I0 (\p_fsm_output(30)  ), .I1 (
         p_rtlcn19653), .I2 (px3151), .I3 (px3152), .I4 (px3205), .I5 (px3259)
         ) ;
         defparam ix11742z59760.INIT = 64'h1BB14EE4B11BE44E;
    LUT5 ix10754z46854 (.O (px1050), .I0 (\p_fsm_output(30)  ), .I1 (
         p_rtlcn19654), .I2 (px3152), .I3 (px3206), .I4 (px3258)) ;
         defparam ix10754z46854.INIT = 32'h1B4EB1E4;
    LUT2 ix10753z1328 (.O (px1051), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19655
         )) ;
         defparam ix10753z1328.INIT = 4'hE;
    LUT6 ix9756z14430 (.O (px1061), .I0 (nx466z2), .I1 (px1634), .I2 (nx9756z2)
         , .I3 (\p_fsm_output(25)  ), .I4 (\p_fsm_output(9)  ), .I5 (px3280)) ;
         defparam ix9756z14430.INIT = 64'h36363C3C3336333C;
    LUT6 ix9755z14424 (.O (px1062), .I0 (nx9755z2), .I1 (px1638), .I2 (
         \p_fsm_output(25)  ), .I3 (\p_fsm_output(13)  ), .I4 (px3281), .I5 (
         px3304)) ;
         defparam ix9755z14424.INIT = 64'h6666363633663336;
    LUT6 ix9754z14424 (.O (px1063), .I0 (nx9754z2), .I1 (px1642), .I2 (
         \p_fsm_output(25)  ), .I3 (\p_fsm_output(13)  ), .I4 (px3282), .I5 (
         px3305)) ;
         defparam ix9754z14424.INIT = 64'h6666363633663336;
    LUT6 ix9753z1569 (.O (px1064), .I0 (nx48054z5), .I1 (nx466z3), .I2 (nx466z10
         ), .I3 (px1646), .I4 (nx9753z2), .I5 (\p_fsm_output(9)  )) ;
         defparam ix9753z1569.INIT = 64'hD22D00FFFF0000FF;
    LUT5 ix9752z62769 (.O (px1065), .I0 (nx48054z5), .I1 (nx466z3), .I2 (px1651)
         , .I3 (nx9752z2), .I4 (\p_fsm_output(9)  )) ;
         defparam ix9752z62769.INIT = 32'h690FF00F;
    LUT6 ix9751z14430 (.O (px1066), .I0 (nx39395z2), .I1 (px1656), .I2 (nx9751z2
         ), .I3 (\p_fsm_output(25)  ), .I4 (\p_fsm_output(9)  ), .I5 (px3285)) ;
         defparam ix9751z14430.INIT = 64'h36363C3C3336333C;
    LUT6 ix9750z14424 (.O (px1067), .I0 (nx9750z2), .I1 (px1660), .I2 (
         \p_fsm_output(25)  ), .I3 (\p_fsm_output(13)  ), .I4 (px3286), .I5 (
         px3309)) ;
         defparam ix9750z14424.INIT = 64'h6666363633663336;
    LUT5 ix9749z40635 (.O (px1068), .I0 (px1664), .I1 (nx9749z2), .I2 (nx48054z6
         ), .I3 (nx48054z9), .I4 (\p_fsm_output(9)  )) ;
         defparam ix9749z40635.INIT = 32'h59999999;
    LUT6 ix65312z39627 (.O (px1159), .I0 (px1790), .I1 (px1788), .I2 (px1786), .I3 (
         px1784), .I4 (px1781), .I5 (px3160)) ;
         defparam ix65312z39627.INIT = 64'h95A96A566A5695A9;
    LUT5 ix6378z23332 (.O (nx6378z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[1]), .I4 (px3315
         )) ;
         defparam ix6378z23332.INIT = 32'h010355FF;
    LUT4 ix6378z3227 (.O (nx6378z2), .I0 (p_nbus_Vga_rsc_singleport_addr[8]), .I1 (
         \p_fsm_output(38)  ), .I2 (Main_Trans_Ond_Opt_core_inst_fsm_output[39])
         , .I3 (px3229)) ;
         defparam ix6378z3227.INIT = 16'h0777;
    LUT6 ix6378z36267 (.O (nx6378z1), .I0 (nx6378z2), .I1 (nx6378z3), .I2 (
         \fsm_output(34)  ), .I3 (\fsm_output(14)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[0]), .I5 (px3270)
         ) ;
         defparam ix6378z36267.INIT = 64'h0008080800888888;
    LUT4 ix5381z6756 (.O (nx5381z3), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (px3146), .I3 (px3269)) ;
         defparam ix5381z6756.INIT = 16'h153F;
    LUT6 ix5381z14627 (.O (nx5381z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \fsm_output(14)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[1]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[2]), .I5 (px3314
         )) ;
         defparam ix5381z14627.INIT = 64'h0105030F115533FF;
    LUT6 ix5381z31898 (.O (nx5381z1), .I0 (p_nbus_Vga_rsc_singleport_addr[9]), .I1 (
         \p_fsm_output(38)  ), .I2 (\p_fsm_output(15)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3228), .I5 (px3314
         )) ;
         defparam ix5381z31898.INIT = 64'h0007070700777777;
    LUT4 ix4384z6756 (.O (nx4384z3), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (px3145), .I3 (px3268)) ;
         defparam ix4384z6756.INIT = 16'h153F;
    LUT6 ix4384z14627 (.O (nx4384z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \fsm_output(14)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[3]), .I5 (px3313
         )) ;
         defparam ix4384z14627.INIT = 64'h0105030F115533FF;
    LUT6 ix4384z31898 (.O (nx4384z1), .I0 (p_nbus_Vga_rsc_singleport_addr[10]), 
         .I1 (\p_fsm_output(38)  ), .I2 (\p_fsm_output(15)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3227), .I5 (px3313
         )) ;
         defparam ix4384z31898.INIT = 64'h0007070700777777;
    LUT4 ix3387z6756 (.O (nx3387z3), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (px3144), .I3 (px3267)) ;
         defparam ix3387z6756.INIT = 16'h153F;
    LUT6 ix3387z14627 (.O (nx3387z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \fsm_output(14)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[4]), .I5 (px3312
         )) ;
         defparam ix3387z14627.INIT = 64'h0105030F115533FF;
    LUT6 ix3387z31898 (.O (nx3387z1), .I0 (p_nbus_Vga_rsc_singleport_addr[11]), 
         .I1 (\p_fsm_output(38)  ), .I2 (\p_fsm_output(15)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3226), .I5 (px3312
         )) ;
         defparam ix3387z31898.INIT = 64'h0007070700777777;
    LUT4 ix2390z6756 (.O (nx2390z3), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (px3143), .I3 (px3266)) ;
         defparam ix2390z6756.INIT = 16'h153F;
    LUT6 ix2390z14627 (.O (nx2390z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \fsm_output(14)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[5]), .I5 (px3311
         )) ;
         defparam ix2390z14627.INIT = 64'h0105030F115533FF;
    LUT6 ix2390z31898 (.O (nx2390z1), .I0 (p_nbus_Vga_rsc_singleport_addr[12]), 
         .I1 (\p_fsm_output(38)  ), .I2 (\p_fsm_output(15)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3225), .I5 (px3311
         )) ;
         defparam ix2390z31898.INIT = 64'h0007070700777777;
    LUT4 ix1393z6756 (.O (nx1393z3), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (px3142), .I3 (px3265)) ;
         defparam ix1393z6756.INIT = 16'h153F;
    LUT6 ix1393z14627 (.O (nx1393z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \fsm_output(14)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[6]), .I5 (px3316
         )) ;
         defparam ix1393z14627.INIT = 64'h0105030F115533FF;
    LUT6 ix1393z31898 (.O (nx1393z1), .I0 (p_nbus_Vga_rsc_singleport_addr[13]), 
         .I1 (\p_fsm_output(38)  ), .I2 (\p_fsm_output(15)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3224), .I5 (px3316
         )) ;
         defparam ix1393z31898.INIT = 64'h0007070700777777;
    LUT5 ix396z23196 (.O (nx396z4), .I0 (p_nbus_Vga_rsc_singleport_addr[14]), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (px3141)) ;
         defparam ix396z23196.INIT = 32'h05075577;
    LUT6 ix396z23331 (.O (nx396z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[7]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_46_sdt_tmp_7[1]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[0])) ;
         defparam ix396z23331.INIT = 64'h0103050F113355FF;
    LUT6 ix396z1315 (.O (nx396z1), .I0 (\fsm_output(24)  ), .I1 (
         \p_fsm_output(23)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[6]), .I4 (px3264)
         , .I5 (nx396z3)) ;
         defparam ix396z1315.INIT = 64'h01110FFF00000000;
    LUT5 ix64935z5924 (.O (nx64935z5), .I0 (\fsm_output(24)  ), .I1 (
         \p_fsm_output(23)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         \p_reg_passe_y_1_acc_44_sdt_tmp_6(1)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[1])) ;
         defparam ix64935z5924.INIT = 32'h010F11FF;
    LUT6 ix64935z49374 (.O (nx64935z2), .I0 (nx64935z3), .I1 (
         p_nbus_Vga_rsc_singleport_addr[15]), .I2 (\fsm_output(22)  ), .I3 (
         \fsm_output(14)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[0]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[7])) ;
         defparam ix64935z49374.INIT = 64'h000B00BB0B0BBBBB;
    LUT6 ix63938z5411 (.O (nx63938z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[0]), .I5 (px3103)) ;
         defparam ix63938z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix63938z23330 (.O (nx63938z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[1]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[8]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[8])) ;
         defparam ix63938z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix62941z5411 (.O (nx62941z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[1]), .I5 (px3102)) ;
         defparam ix62941z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix62941z23330 (.O (nx62941z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[9]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[9])) ;
         defparam ix62941z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix49421z5411 (.O (nx49421z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[2]), .I5 (px3101)) ;
         defparam ix49421z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix49421z23330 (.O (nx49421z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[10]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[10])) ;
         defparam ix49421z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix48424z5411 (.O (nx48424z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[3]), .I5 (px3100)) ;
         defparam ix48424z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix48424z23330 (.O (nx48424z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[11]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[11])) ;
         defparam ix48424z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix47427z5411 (.O (nx47427z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[6]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[4]), .I5 (px3099)) ;
         defparam ix47427z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix47427z23330 (.O (nx47427z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[12]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[12])) ;
         defparam ix47427z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix46430z5411 (.O (nx46430z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[7]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[5]), .I5 (px3098)) ;
         defparam ix46430z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix46430z23330 (.O (nx46430z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[6]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[13]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[13])) ;
         defparam ix46430z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix45433z5411 (.O (nx45433z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[8]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[6]), .I5 (px3097)) ;
         defparam ix45433z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix45433z23330 (.O (nx45433z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[7]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[14]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[14])) ;
         defparam ix45433z23330.INIT = 64'h01031133050F55FF;
    LUT6 ix44436z5411 (.O (nx44436z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_43_itm[9]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[7]), .I5 (px3096)) ;
         defparam ix44436z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix44436z23330 (.O (nx44436z2), .I0 (\fsm_output(22)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\fsm_output(14)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[8]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_7_itm[15]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[15])) ;
         defparam ix44436z23330.INIT = 64'h01031133050F55FF;
    LUT2 ix59329z1315 (.O (px1208), .I0 (\fsm_output(24)  ), .I1 (
         \p_fsm_output(23)  )) ;
         defparam ix59329z1315.INIT = 4'h1;
    LUT4 ix43439z6275 (.O (nx43439z2), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_13_itm[16]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_51_psp[8])) ;
         defparam ix43439z6275.INIT = 16'h135F;
    LUT6 ix43439z10053 (.O (nx43439z1), .I0 (nx33411z3), .I1 (nx43439z2), .I2 (
         p_nbus_Vga_rsc_singleport_addr[16]), .I3 (\p_fsm_output(38)  ), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[8])) ;
         defparam ix43439z10053.INIT = 64'hAAA2AA22A2A22222;
    LUT5 ix43439z1316 (.O (p_nbus_Dst_rsc_singleport_addr[16]), .I0 (nx43439z1)
         , .I1 (\fsm_output(34)  ), .I2 (\p_fsm_output(21)  ), .I3 (
         \fsm_output(14)  ), .I4 (\p_fsm_output(13)  )) ;
         defparam ix43439z1316.INIT = 32'h00000002;
    LUT6 ix16353z5410 (.O (nx16353z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[1]), .I4 (px3168), .I5 (
         px3302)) ;
         defparam ix16353z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix15356z5410 (.O (nx15356z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[2]), .I4 (px3167), .I5 (
         px3301)) ;
         defparam ix15356z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix14359z5410 (.O (nx14359z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[3]), .I4 (px3166), .I5 (
         px3300)) ;
         defparam ix14359z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix13362z5410 (.O (nx13362z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[4]), .I4 (px3165), .I5 (
         px3299)) ;
         defparam ix13362z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix12365z5410 (.O (nx12365z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[5]), .I4 (px3164), .I5 (
         px3298)) ;
         defparam ix12365z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix11368z5410 (.O (nx11368z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[6]), .I4 (px3163), .I5 (
         px3297)) ;
         defparam ix11368z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix10371z5410 (.O (nx10371z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[7]), .I4 (px3162), .I5 (
         px3296)) ;
         defparam ix10371z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix9374z5410 (.O (nx9374z3), .I0 (\p_fsm_output(16)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\p_fsm_output(13)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_11[8]), .I4 (px3161), .I5 (
         px3295)) ;
         defparam ix9374z5410.INIT = 64'h0111033305550FFF;
    LUT6 ix10979z45090 (.O (nx10979z1), .I0 (nx13217z3), .I1 (nx13970z1), .I2 (
         \p_fsm_output(33)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[2]), .I4 (
         px3115), .I5 (px3293)) ;
         defparam ix10979z45090.INIT = 64'h080C88CC0A0FAAFF;
    LUT6 ix11976z45090 (.O (nx11976z1), .I0 (nx13217z3), .I1 (\p_fsm_output(33)  
         ), .I2 (\p_fsm_output(9)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[3]), .I4 (
         px3114), .I5 (px3200)) ;
         defparam ix11976z45090.INIT = 64'h02030A0F2233AAFF;
    LUT6 ix12973z45090 (.O (nx12973z1), .I0 (nx13217z3), .I1 (\p_fsm_output(33)  
         ), .I2 (\p_fsm_output(9)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[4]), .I4 (
         px3113), .I5 (px3199)) ;
         defparam ix12973z45090.INIT = 64'h02030A0F2233AAFF;
    LUT3 ix13970z1541 (.O (nx13970z3), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[5])) ;
         defparam ix13970z1541.INIT = 8'hE0;
    LUT6 ix13970z23331 (.O (nx13970z2), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3112), .I4 (
         px3198), .I5 (px3226)) ;
         defparam ix13970z23331.INIT = 64'h0103050F113355FF;
    LUT2 ix13970z1316 (.O (nx13970z1), .I0 (\fsm_output(27)  ), .I1 (
         \p_fsm_output(25)  )) ;
         defparam ix13970z1316.INIT = 4'h1;
    LUT3 ix14967z1540 (.O (nx14967z2), .I0 (\fsm_output(27)  ), .I1 (
         \p_fsm_output(25)  ), .I2 (px3289)) ;
         defparam ix14967z1540.INIT = 8'hE0;
    LUT6 ix14967z23330 (.O (nx14967z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3111), .I4 (
         px3197), .I5 (px3225)) ;
         defparam ix14967z23330.INIT = 64'h0103050F113355FF;
    LUT3 ix15964z1541 (.O (nx15964z3), .I0 (\fsm_output(27)  ), .I1 (
         \p_fsm_output(25)  ), .I2 (px3288)) ;
         defparam ix15964z1541.INIT = 8'hE0;
    LUT6 ix15964z23331 (.O (nx15964z2), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3110), .I4 (
         px3196), .I5 (px3224)) ;
         defparam ix15964z23331.INIT = 64'h0103050F113355FF;
    LUT6 ix16961z5413 (.O (nx16961z5), .I0 (nx41011z2), .I1 (\fsm_output(28)  )
         , .I2 (\fsm_output(26)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[6]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[6]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[0])) ;
         defparam ix16961z5413.INIT = 64'h02220AAA03330FFF;
    LUT4 ix16961z6276 (.O (nx16961z3), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(10)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[0]), .I3 (px3316)
         ) ;
         defparam ix16961z6276.INIT = 16'h135F;
    LUT5 ix16961z10190 (.O (nx16961z2), .I0 (nx16961z3), .I1 (\p_fsm_output(25)  
         ), .I2 (\p_fsm_output(9)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[0]), .I4 (
         px3195)) ;
         defparam ix16961z10190.INIT = 32'h020A22AA;
    LUT4 ix17958z6276 (.O (nx17958z4), .I0 (\fsm_output(26)  ), .I1 (
         \fsm_output(10)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[7]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[0])) ;
         defparam ix17958z6276.INIT = 16'h135F;
    LUT6 ix17958z5411 (.O (nx17958z3), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(27)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[1]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[7]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_slc_slc_tmp_5[1])) ;
         defparam ix17958z5411.INIT = 64'h0111033305550FFF;
    LUT6 ix17958z62755 (.O (nx17958z1), .I0 (px1500), .I1 (nx41011z2), .I2 (
         nx17958z3), .I3 (nx17958z4), .I4 (\p_fsm_output(9)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_44_sdt_tmp_7[1])) ;
         defparam ix17958z62755.INIT = 64'h4000C0005000F000;
    LUT6 ix18955z23332 (.O (nx18955z4), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(27)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[8]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[6]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[0])) ;
         defparam ix18955z23332.INIT = 64'h0103050F113355FF;
    LUT4 ix18955z6755 (.O (nx18955z2), .I0 (\p_fsm_output(33)  ), .I1 (
         \fsm_output(26)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[8]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[0])) ;
         defparam ix18955z6755.INIT = 16'h153F;
    LUT5 ix18955z10189 (.O (nx18955z1), .I0 (nx18955z2), .I1 (\p_fsm_output(25)  
         ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_reg_passe_y_acc_43_sdt_tmp_6[1])) ;
         defparam ix18955z10189.INIT = 32'h020A22AA;
    LUT5 ix19952z5412 (.O (nx19952z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[0]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[1])) ;
         defparam ix19952z5412.INIT = 32'h01110FFF;
    LUT6 ix19952z5411 (.O (nx19952z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[9]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[9])) ;
         defparam ix19952z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix19952z23330 (.O (nx19952z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[1]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[0]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[1])) ;
         defparam ix19952z23330.INIT = 64'h0103050F113355FF;
    LUT5 ix45996z5412 (.O (nx45996z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[1]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[2])) ;
         defparam ix45996z5412.INIT = 32'h01110FFF;
    LUT6 ix45996z5411 (.O (nx45996z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[10]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[10])) ;
         defparam ix45996z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix45996z23330 (.O (nx45996z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[1]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[2])) ;
         defparam ix45996z23330.INIT = 64'h0103050F113355FF;
    LUT5 ix44999z5412 (.O (nx44999z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[2]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[3])) ;
         defparam ix44999z5412.INIT = 32'h01110FFF;
    LUT6 ix44999z5411 (.O (nx44999z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[11]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[11])) ;
         defparam ix44999z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix44999z23330 (.O (nx44999z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[2]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[3])) ;
         defparam ix44999z23330.INIT = 64'h0103050F113355FF;
    LUT5 ix44002z5412 (.O (nx44002z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[3]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[4])) ;
         defparam ix44002z5412.INIT = 32'h01110FFF;
    LUT6 ix44002z5411 (.O (nx44002z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[6]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[12]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[12])) ;
         defparam ix44002z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix44002z23330 (.O (nx44002z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[3]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[4])) ;
         defparam ix44002z23330.INIT = 64'h0103050F113355FF;
    LUT5 ix43005z5412 (.O (nx43005z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[4]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[5])) ;
         defparam ix43005z5412.INIT = 32'h01110FFF;
    LUT6 ix43005z5411 (.O (nx43005z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[7]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[13]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[13])) ;
         defparam ix43005z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix43005z23330 (.O (nx43005z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[4]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[5])) ;
         defparam ix43005z23330.INIT = 64'h0103050F113355FF;
    LUT5 ix42008z5412 (.O (nx42008z3), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[5]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[6])) ;
         defparam ix42008z5412.INIT = 32'h01110FFF;
    LUT6 ix42008z5411 (.O (nx42008z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (\p_fsm_output(25)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_1_cse_1_sva[8]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_7_itm[14]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[14])) ;
         defparam ix42008z5411.INIT = 64'h0111055503330FFF;
    LUT6 ix42008z23330 (.O (nx42008z1), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[6]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[5]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[6])) ;
         defparam ix42008z23330.INIT = 64'h0103050F113355FF;
    LUT4 ix41011z6277 (.O (nx41011z4), .I0 (\fsm_output(10)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[6]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[7])) ;
         defparam ix41011z6277.INIT = 16'h135F;
    LUT4 ix41011z6276 (.O (nx41011z3), .I0 (\fsm_output(27)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_49_psp[7]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[6])) ;
         defparam ix41011z6276.INIT = 16'h135F;
    LUT6 ix41011z50659 (.O (nx41011z1), .I0 (nx41011z2), .I1 (nx41011z3), .I2 (
         nx41011z4), .I3 (\fsm_output(28)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_1_acc_13_itm[15]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[7])) ;
         defparam ix41011z50659.INIT = 64'h0080808000C0C0C0;
    LUT5 ix41011z1319 (.O (p_nbus_Src_rsc_singleport_addr[15]), .I0 (nx41011z1)
         , .I1 (\p_fsm_output(33)  ), .I2 (\fsm_output(26)  ), .I3 (
         \p_fsm_output(25)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_copy_y_1_acc_psp_1[7])) ;
         defparam ix41011z1319.INIT = 32'h000D0005;
    LUT6 ix40014z23330 (.O (nx40014z1), .I0 (\fsm_output(10)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_psp[7]), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_15[7]), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_17[8])) ;
         defparam ix40014z23330.INIT = 64'h0103050F113355FF;
    LUT6 ix40014z1314 (.O (p_nbus_Src_rsc_singleport_addr[16]), .I0 (
         \p_fsm_output(33)  ), .I1 (\fsm_output(12)  ), .I2 (\p_fsm_output(11)  
         ), .I3 (p_nbus_Main_Trans_Ond_Opt_core_inst_passe_y_acc_49_psp[8]), .I4 (
         nx33411z2), .I5 (nx40014z1)) ;
         defparam ix40014z1314.INIT = 64'h5400000055550000;
    LUT4 ix344z6754 (.O (nx344z1), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3131), .I3 (px3279)) ;
         defparam ix344z6754.INIT = 16'h153F;
    LUT4 ix1341z6754 (.O (nx1341z1), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3130), .I3 (px3278)) ;
         defparam ix1341z6754.INIT = 16'h153F;
    LUT4 ix2338z6274 (.O (nx2338z1), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3121), .I3 (px3129)) ;
         defparam ix2338z6274.INIT = 16'h135F;
    LUT4 ix3335z6274 (.O (nx3335z1), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3120), .I3 (px3128)) ;
         defparam ix3335z6274.INIT = 16'h135F;
    LUT4 ix4332z6754 (.O (nx4332z1), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3127), .I3 (px3275)) ;
         defparam ix4332z6754.INIT = 16'h153F;
    LUT4 ix5329z6754 (.O (nx5329z1), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3126), .I3 (px3274)) ;
         defparam ix5329z6754.INIT = 16'h153F;
    LUT4 ix6326z6754 (.O (nx6326z1), .I0 (\fsm_output(27)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3125), .I3 (px3273)) ;
         defparam ix6326z6754.INIT = 16'h153F;
    LUT4 ix7323z6274 (.O (nx7323z1), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  ), .I2 (px3116), .I3 (px3124)) ;
         defparam ix7323z6274.INIT = 16'h135F;
    LUT2 ix17592z1322 (.O (nx17592z1), .I0 (\fsm_output(4)  ), .I1 (
         p_st_copy_y_2_tr0)) ;
         defparam ix17592z1322.INIT = 4'h8;
    LUT2 ix16595z1322 (.O (nx16595z1), .I0 (nx48054z4), .I1 (\fsm_output(5)  )
         ) ;
         defparam ix16595z1322.INIT = 4'h8;
    LUT3 ix15598z1538 (.O (nx15598z1), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx15598z2)) ;
         defparam ix15598z1538.INIT = 8'hE0;
    LUT5 ix1463z1826 (.O (nx1463z1), .I0 (nx55033z2), .I1 (nx1463z2), .I2 (
         \p_fsm_output(30)  ), .I3 (\fsm_output(19)  ), .I4 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_2[8])) ;
         defparam ix1463z1826.INIT = 32'hF2F00200;
    LUT6 ix15598z23587 (.O (nx15598z2), .I0 (\fsm_output(37)  ), .I1 (px3219), .I2 (
         px3220), .I3 (px3318), .I4 (px3319), .I5 (px3320)) ;
         defparam ix15598z23587.INIT = 64'h7F57775577555700;
    LUT2 ix44064z1322 (.O (nx44064z1), .I0 (\fsm_output(40)  ), .I1 (
         p_st_copy_y_2_2_tr0)) ;
         defparam ix44064z1322.INIT = 4'h8;
    LUT6 ix48054z1363 (.O (nx48054z4), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (nx466z24), .I5 (nx466z30)) ;
         defparam ix48054z1363.INIT = 64'h000000000000002D;
    LUT2 ix48054z1325 (.O (nx48054z3), .I0 (nx48054z4), .I1 (\fsm_output(41)  )
         ) ;
         defparam ix48054z1325.INIT = 4'h8;
    LUT6 ix51360z1320 (.O (nx51360z6), .I0 (\fsm_output(36)  ), .I1 (
         \p_fsm_output(30)  ), .I2 (\fsm_output(29)  ), .I3 (\p_fsm_output(21)  
         ), .I4 (\fsm_output(19)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix51360z1320.INIT = 64'h0000000000000001;
    LUT4 ix51360z1318 (.O (nx51360z4), .I0 (\p_fsm_output(33)  ), .I1 (
         \fsm_output(18)  ), .I2 (\fsm_output(10)  ), .I3 (\fsm_output(7)  )) ;
         defparam ix51360z1318.INIT = 16'h0001;
    LUT6 ix51360z1315 (.O (nx51360z2), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(31)  ), .I2 (\fsm_output(20)  ), .I3 (\fsm_output(6)  ), .I4 (
         nx51360z3), .I5 (nx51360z4)) ;
         defparam ix51360z1315.INIT = 64'h0001000000000000;
    LUT6 ix51360z1314 (.O (px1281), .I0 (px1507), .I1 (nx51360z2), .I2 (
         nx33411z2), .I3 (nx51360z5), .I4 (nx44375z8), .I5 (nx51360z6)) ;
         defparam ix51360z1314.INIT = 64'h8000000000000000;
    LUT6 ix51360z1317 (.O (nx51360z3), .I0 (\fsm_output(24)  ), .I1 (
         \p_fsm_output(23)  ), .I2 (\fsm_output(22)  ), .I3 (\fsm_output(12)  )
         , .I4 (\p_fsm_output(11)  ), .I5 (\p_fsm_output(9)  )) ;
         defparam ix51360z1317.INIT = 64'h0000000000000001;
    LUT4 ix13217z1319 (.O (nx13217z5), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\fsm_output(14)  ), .I3 (\p_fsm_output(13)  
         )) ;
         defparam ix13217z1319.INIT = 16'h0001;
    LUT2 ix13217z1317 (.O (nx13217z3), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(26)  )) ;
         defparam ix13217z1317.INIT = 4'h1;
    LUT6 ix13217z1443 (.O (nx13217z2), .I0 (nx13217z3), .I1 (nx13217z4), .I2 (
         nx13217z5), .I3 (\p_fsm_output(30)  ), .I4 (\fsm_output(27)  ), .I5 (
         \fsm_output(10)  )) ;
         defparam ix13217z1443.INIT = 64'h0000000000000080;
    LUT2 ix51355z1318 (.O (px1286), .I0 (\fsm_output(8)  ), .I1 (px3195)) ;
         defparam ix51355z1318.INIT = 4'h4;
    LUT2 ix51354z1318 (.O (px1287), .I0 (\fsm_output(8)  ), .I1 (px3200)) ;
         defparam ix51354z1318.INIT = 4'h4;
    LUT2 ix51353z1318 (.O (px1288), .I0 (\fsm_output(8)  ), .I1 (px3199)) ;
         defparam ix51353z1318.INIT = 4'h4;
    LUT2 ix51352z1318 (.O (px1289), .I0 (\fsm_output(8)  ), .I1 (px3198)) ;
         defparam ix51352z1318.INIT = 4'h4;
    LUT2 ix50364z1318 (.O (px1290), .I0 (\fsm_output(8)  ), .I1 (px3197)) ;
         defparam ix50364z1318.INIT = 4'h4;
    LUT2 ix50363z1318 (.O (px1291), .I0 (\fsm_output(8)  ), .I1 (px3196)) ;
         defparam ix50363z1318.INIT = 4'h4;
    LUT2 ix13217z1318 (.O (nx13217z4), .I0 (\fsm_output(17)  ), .I1 (
         \fsm_output(8)  )) ;
         defparam ix13217z1318.INIT = 4'h1;
    LUT3 ix50361z1538 (.O (px1293), .I0 (\fsm_output(17)  ), .I1 (
         \fsm_output(8)  ), .I2 (px1507)) ;
         defparam ix50361z1538.INIT = 8'hE0;
    LUT5 ix1463z1315 (.O (nx1463z2), .I0 (px3219), .I1 (px3220), .I2 (px3318), .I3 (
         px3319), .I4 (px3320)) ;
         defparam ix1463z1315.INIT = 32'h84210000;
    LUT2 ix50357z1318 (.O (px1297), .I0 (\fsm_output(20)  ), .I1 (px3146)) ;
         defparam ix50357z1318.INIT = 4'h4;
    LUT2 ix50356z1318 (.O (px1298), .I0 (\fsm_output(20)  ), .I1 (px3145)) ;
         defparam ix50356z1318.INIT = 4'h4;
    LUT2 ix50355z1318 (.O (px1299), .I0 (\fsm_output(20)  ), .I1 (px3144)) ;
         defparam ix50355z1318.INIT = 4'h4;
    LUT2 ix48368z1318 (.O (px1300), .I0 (\fsm_output(20)  ), .I1 (px3143)) ;
         defparam ix48368z1318.INIT = 4'h4;
    LUT2 ix48367z1318 (.O (px1301), .I0 (\fsm_output(20)  ), .I1 (px3142)) ;
         defparam ix48367z1318.INIT = 4'h4;
    LUT2 ix48366z1318 (.O (px1302), .I0 (\fsm_output(20)  ), .I1 (px3141)) ;
         defparam ix48366z1318.INIT = 4'h4;
    LUT3 ix48365z1482 (.O (px1303), .I0 (px1507), .I1 (\fsm_output(29)  ), .I2 (
         \fsm_output(20)  )) ;
         defparam ix48365z1482.INIT = 8'hA8;
    LUT2 ix48360z1318 (.O (px1308), .I0 (\fsm_output(32)  ), .I1 (px3115)) ;
         defparam ix48360z1318.INIT = 4'h4;
    LUT2 ix48359z1318 (.O (px1309), .I0 (\fsm_output(32)  ), .I1 (px3114)) ;
         defparam ix48359z1318.INIT = 4'h4;
    LUT2 ix47371z1318 (.O (px1310), .I0 (\fsm_output(32)  ), .I1 (px3113)) ;
         defparam ix47371z1318.INIT = 4'h4;
    LUT2 ix47370z1318 (.O (px1311), .I0 (\fsm_output(32)  ), .I1 (px3112)) ;
         defparam ix47370z1318.INIT = 4'h4;
    LUT2 ix47369z1318 (.O (px1312), .I0 (\fsm_output(32)  ), .I1 (px3111)) ;
         defparam ix47369z1318.INIT = 4'h4;
    LUT2 ix47368z1318 (.O (px1313), .I0 (\fsm_output(32)  ), .I1 (px3110)) ;
         defparam ix47368z1318.INIT = 4'h4;
    LUT3 ix47367z1482 (.O (px1314), .I0 (px1507), .I1 (\fsm_output(35)  ), .I2 (
         \fsm_output(32)  )) ;
         defparam ix47367z1482.INIT = 8'hA8;
    LUT6 ix47366z62446 (.O (px1315), .I0 (\fsm_output(37)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3104), .I3 (px3105
         ), .I4 (px3261), .I5 (px3294)) ;
         defparam ix47366z62446.INIT = 64'hFDFDECECFFDDEECC;
    LUT4 ix47365z21862 (.O (px1316), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3260), .I2 (px3261
         ), .I3 (px3294)) ;
         defparam ix47365z21862.INIT = 16'h5044;
    LUT4 ix47364z21862 (.O (px1317), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3259), .I2 (px3260
         ), .I3 (px3294)) ;
         defparam ix47364z21862.INIT = 16'h5044;
    LUT4 ix47363z21862 (.O (px1318), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3258), .I2 (px3259
         ), .I3 (px3294)) ;
         defparam ix47363z21862.INIT = 16'h5044;
    LUT5 ix46374z6198 (.O (nx46374z2), .I0 (\fsm_output(36)  ), .I1 (
         \fsm_output(31)  ), .I2 (p_rtlcn30054), .I3 (px3294), .I4 (px3317)) ;
         defparam ix46374z6198.INIT = 32'h5F131313;
    LUT5 ix46374z13890 (.O (px1320), .I0 (nx46374z2), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3255), .I3 (px3256
         ), .I4 (px3294)) ;
         defparam ix46374z13890.INIT = 32'h20203120;
    LUT6 ix46373z62446 (.O (px1321), .I0 (\fsm_output(37)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3104), .I3 (px3107
         ), .I4 (px3254), .I5 (px3294)) ;
         defparam ix46373z62446.INIT = 64'hFDFDECECFFDDEECC;
    LUT4 ix46372z18802 (.O (px1322), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3107), .I2 (px3254
         ), .I3 (px3294)) ;
         defparam ix46372z18802.INIT = 16'h4450;
    LUT4 ix46371z21862 (.O (px1323), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3253), .I2 (px3254
         ), .I3 (px3294)) ;
         defparam ix46371z21862.INIT = 16'h5044;
    LUT4 ix46370z21862 (.O (px1324), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3252), .I2 (px3253
         ), .I3 (px3294)) ;
         defparam ix46370z21862.INIT = 16'h5044;
    LUT4 ix46369z21862 (.O (px1325), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3251), .I2 (px3252
         ), .I3 (px3294)) ;
         defparam ix46369z21862.INIT = 16'h5044;
    LUT4 ix46368z21862 (.O (px1326), .I0 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3250), .I2 (px3251
         ), .I3 (px3294)) ;
         defparam ix46368z21862.INIT = 16'h5044;
    LUT3 ix46367z1482 (.O (px1327), .I0 (px1507), .I1 (\fsm_output(37)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix46367z1482.INIT = 8'hA8;
    LUT6 ix46366z1314 (.O (px1328), .I0 (\fsm_output(41)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (Main_Trans_Ond_Opt_core_inst_fsm_output[41])
         , .I3 (px3200), .I4 (px3218), .I5 (nx48054z9)) ;
         defparam ix46366z1314.INIT = 64'h0105030F00000000;
    LUT5 ix46365z32170 (.O (px1329), .I0 (nx48054z6), .I1 (nx48054z9), .I2 (
         nx48054z12), .I3 (nx48054z15), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix46365z32170.INIT = 32'h00007888;
    LUT2 ix45377z1316 (.O (px1330), .I0 (nx39395z2), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45377z1316.INIT = 4'h2;
    LUT3 ix45376z1323 (.O (px1331), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45376z1323.INIT = 8'h09;
    LUT4 ix45375z1359 (.O (px1332), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45375z1359.INIT = 16'h002D;
    LUT5 ix45374z2079 (.O (px1333), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45374z2079.INIT = 32'h000002FD;
    LUT6 ix45373z1311 (.O (px1334), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (nx466z24), .I5 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45373z1311.INIT = 64'h000000000002FFFD;
    LUT2 ix45372z1316 (.O (px1335), .I0 (nx466z2), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45372z1316.INIT = 4'h2;
    LUT3 ix45371z1482 (.O (px1336), .I0 (px1507), .I1 (\fsm_output(5)  ), .I2 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix45371z1482.INIT = 8'hA8;
    LUT6 ix44375z1323 (.O (nx44375z8), .I0 (\fsm_output(35)  ), .I1 (
         \fsm_output(32)  ), .I2 (\fsm_output(17)  ), .I3 (\fsm_output(8)  ), .I4 (
         \fsm_output(5)  ), .I5 (\fsm_output(4)  )) ;
         defparam ix44375z1323.INIT = 64'h0000000000000001;
    LUT4 ix44375z1322 (.O (nx44375z7), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (\p_fsm_output(9)  )
         ) ;
         defparam ix44375z1322.INIT = 16'h0001;
    LUT2 ix64935z1317 (.O (nx64935z3), .I0 (\fsm_output(34)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix64935z1317.INIT = 4'h1;
    LUT6 ix44375z1320 (.O (nx44375z6), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(15)  ), .I2 (\fsm_output(14)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39]), .I4 (nx44375z7), .I5 (
         nx44375z8)) ;
         defparam ix44375z1320.INIT = 64'h0001000000000000;
    LUT4 ix44375z1326 (.O (nx44375z5), .I0 (\fsm_output(39)  ), .I1 (
         \p_fsm_output(38)  ), .I2 (\fsm_output(31)  ), .I3 (\fsm_output(7)  )
         ) ;
         defparam ix44375z1326.INIT = 16'h0001;
    LUT5 ix44375z1319 (.O (nx44375z4), .I0 (nx44375z5), .I1 (\p_fsm_output(13)  
         ), .I2 (\fsm_output(12)  ), .I3 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (
         \p_fsm_output_1_0(42)  )) ;
         defparam ix44375z1319.INIT = 32'h00000002;
    LUT6 ix44375z1317 (.O (nx44375z3), .I0 (\fsm_output(29)  ), .I1 (
         \p_fsm_output(21)  ), .I2 (\fsm_output(20)  ), .I3 (\fsm_output(19)  )
         , .I4 (\fsm_output(18)  ), .I5 (\p_fsm_output(16)  )) ;
         defparam ix44375z1317.INIT = 64'h0000000000000001;
    LUT6 ix44375z34083 (.O (nx44375z2), .I0 (nx33411z2), .I1 (nx33411z3), .I2 (
         nx48054z23), .I3 (nx44375z3), .I4 (\fsm_output(41)  ), .I5 (
         \fsm_output(40)  )) ;
         defparam ix44375z34083.INIT = 64'h0000000000008000;
    LUT6 ix44375z1442 (.O (px1345), .I0 (nx44375z2), .I1 (nx44375z4), .I2 (
         nx44375z6), .I3 (\fsm_output(36)  ), .I4 (\p_fsm_output(30)  ), .I5 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix44375z1442.INIT = 64'h0000000000000080;
    LUT6 ix51360z1319 (.O (nx51360z5), .I0 (\fsm_output(34)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\p_fsm_output(15)  ), .I3 (\fsm_output(14)  
         ), .I4 (\p_fsm_output(13)  ), .I5 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[39])) ;
         defparam ix51360z1319.INIT = 64'h0000000000000001;
    LUT2 ix41011z1317 (.O (nx41011z2), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  )) ;
         defparam ix41011z1317.INIT = 4'h1;
    LUT3 ix44372z1330 (.O (px1348), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[0])) ;
         defparam ix44372z1330.INIT = 8'h10;
    LUT3 ix44371z1330 (.O (px1349), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[1])) ;
         defparam ix44371z1330.INIT = 8'h10;
    LUT3 ix43383z1330 (.O (px1350), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[2])) ;
         defparam ix43383z1330.INIT = 8'h10;
    LUT3 ix43382z1330 (.O (px1351), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[3])) ;
         defparam ix43382z1330.INIT = 8'h10;
    LUT3 ix43381z1330 (.O (px1352), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[4])) ;
         defparam ix43381z1330.INIT = 8'h10;
    LUT3 ix43380z1330 (.O (px1353), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[5])) ;
         defparam ix43380z1330.INIT = 8'h10;
    LUT3 ix43379z1330 (.O (px1354), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[6])) ;
         defparam ix43379z1330.INIT = 8'h10;
    LUT3 ix43378z1330 (.O (px1355), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[7])) ;
         defparam ix43378z1330.INIT = 8'h10;
    LUT3 ix43377z1330 (.O (px1356), .I0 (\fsm_output(5)  ), .I1 (
         Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_x_1_sva_1[8])) ;
         defparam ix43377z1330.INIT = 8'h10;
    LUT4 ix43376z45002 (.O (px1357), .I0 (px1507), .I1 (\fsm_output(5)  ), .I2 (
         \fsm_output(4)  ), .I3 (Main_Trans_Ond_Opt_core_inst_fsm_output[41])) ;
         defparam ix43376z45002.INIT = 16'hAAA8;
    LUT3 ix43375z1332 (.O (px1358), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (px3220)) ;
         defparam ix43375z1332.INIT = 8'h12;
    LUT4 ix43374z5970 (.O (px1359), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (px3219), .I3 (px3220)) ;
         defparam ix43374z5970.INIT = 16'h1230;
    LUT4 ix42386z5410 (.O (px1360), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx48054z6), .I3 (nx48054z9)) ;
         defparam ix42386z5410.INIT = 16'h1000;
    LUT6 ix42385z5410 (.O (px1361), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx48054z6), .I3 (nx48054z9), .I4 (nx48054z12), 
         .I5 (nx48054z15)) ;
         defparam ix42385z5410.INIT = 64'h0111100010001000;
    LUT3 ix42384z1330 (.O (px1362), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx39395z2)) ;
         defparam ix42384z1330.INIT = 8'h10;
    LUT4 ix42383z5411 (.O (px1363), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx48054z5), .I3 (nx466z3)) ;
         defparam ix42383z5411.INIT = 16'h1001;
    LUT5 ix42382z5667 (.O (px1364), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx48054z5), .I3 (nx466z3), .I4 (nx466z10)) ;
         defparam ix42382z5667.INIT = 32'h00101101;
    LUT6 ix42381z5667 (.O (px1365), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx48054z5), .I3 (nx466z3), .I4 (nx466z10), .I5 (
         nx466z17)) ;
         defparam ix42381z5667.INIT = 64'h0000001011111101;
    LUT6 ix42380z1314 (.O (px1366), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (nx466z24), .I5 (nx48054z23)) ;
         defparam ix42380z1314.INIT = 64'h0002FFFD00000000;
    LUT3 ix42379z1330 (.O (px1367), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  ), .I2 (nx466z2)) ;
         defparam ix42379z1330.INIT = 8'h10;
    LUT4 ix42378z802 (.O (px1368), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (px1507)) ;
         defparam ix42378z802.INIT = 16'hFE00;
    LUT4 ix42377z1570 (.O (px1369), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[0])) ;
         defparam ix42377z1570.INIT = 16'h0100;
    LUT4 ix41389z1570 (.O (px1370), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[1])) ;
         defparam ix41389z1570.INIT = 16'h0100;
    LUT4 ix41388z1570 (.O (px1371), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[2])) ;
         defparam ix41388z1570.INIT = 16'h0100;
    LUT4 ix41387z1570 (.O (px1372), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[3])) ;
         defparam ix41387z1570.INIT = 16'h0100;
    LUT4 ix41386z1570 (.O (px1373), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[4])) ;
         defparam ix41386z1570.INIT = 16'h0100;
    LUT4 ix41385z1570 (.O (px1374), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[5])) ;
         defparam ix41385z1570.INIT = 16'h0100;
    LUT4 ix41384z1570 (.O (px1375), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[6])) ;
         defparam ix41384z1570.INIT = 16'h0100;
    LUT4 ix41383z1570 (.O (px1376), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[7])) ;
         defparam ix41383z1570.INIT = 16'h0100;
    LUT4 ix41382z1570 (.O (px1377), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(37)  ), .I2 (\fsm_output(6)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_image_copy_2_x_1_sva_1[8])) ;
         defparam ix41382z1570.INIT = 16'h0100;
    LUT2 ix48054z1328 (.O (nx48054z23), .I0 (\fsm_output(37)  ), .I1 (
         \fsm_output(6)  )) ;
         defparam ix48054z1328.INIT = 4'h1;
    LUT5 ix41380z1314 (.O (px1379), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(40)  ), .I2 (\fsm_output(37)  ), .I3 (\fsm_output(6)  ), .I4 (
         px1507)) ;
         defparam ix41380z1314.INIT = 32'hFFFE0000;
    LUT2 ix40392z1316 (.O (px1380), .I0 (nx55033z4), .I1 (\fsm_output(7)  )) ;
         defparam ix40392z1316.INIT = 4'h2;
    LUT3 ix40391z1320 (.O (px1381), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         \fsm_output(7)  )) ;
         defparam ix40391z1320.INIT = 8'h06;
    LUT4 ix40390z1344 (.O (px1382), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (\fsm_output(7)  )) ;
         defparam ix40390z1344.INIT = 16'h001E;
    LUT5 ix40389z1824 (.O (px1383), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (\fsm_output(7)  )) ;
         defparam ix40389z1824.INIT = 32'h000001FE;
    LUT6 ix40388z1312 (.O (px1384), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (nx55033z18), .I5 (\fsm_output(7)  )
         ) ;
         defparam ix40388z1312.INIT = 64'h000000000001FFFE;
    LUT2 ix40387z1316 (.O (px1385), .I0 (nx14457z2), .I1 (\fsm_output(7)  )) ;
         defparam ix40387z1316.INIT = 4'h2;
    LUT2 ix40386z1316 (.O (px1386), .I0 (nx55033z2), .I1 (\fsm_output(7)  )) ;
         defparam ix40386z1316.INIT = 4'h2;
    LUT3 ix40385z1482 (.O (px1387), .I0 (px1507), .I1 (\fsm_output(18)  ), .I2 (
         \fsm_output(7)  )) ;
         defparam ix40385z1482.INIT = 8'hA8;
    LUT6 ix40384z1314 (.O (px1388), .I0 (\fsm_output(41)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (\fsm_output(8)  ), .I3 (px3200), .I4 (px3218)
         , .I5 (nx48054z9)) ;
         defparam ix40384z1314.INIT = 64'h0105030F00000000;
    LUT5 ix40383z32170 (.O (px1389), .I0 (nx48054z6), .I1 (nx48054z9), .I2 (
         nx48054z12), .I3 (nx48054z15), .I4 (\fsm_output(8)  )) ;
         defparam ix40383z32170.INIT = 32'h00007888;
    LUT2 ix39395z1316 (.O (px1390), .I0 (nx39395z2), .I1 (\fsm_output(8)  )) ;
         defparam ix39395z1316.INIT = 4'h2;
    LUT3 ix39394z1323 (.O (px1391), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         \fsm_output(8)  )) ;
         defparam ix39394z1323.INIT = 8'h09;
    LUT4 ix39393z1359 (.O (px1392), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (\fsm_output(8)  )) ;
         defparam ix39393z1359.INIT = 16'h002D;
    LUT5 ix39392z2079 (.O (px1393), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (\fsm_output(8)  )) ;
         defparam ix39392z2079.INIT = 32'h000002FD;
    LUT6 ix39391z1311 (.O (px1394), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (nx466z24), .I5 (\fsm_output(8)  )) ;
         defparam ix39391z1311.INIT = 64'h000000000002FFFD;
    LUT2 ix39390z1316 (.O (px1395), .I0 (nx466z2), .I1 (\fsm_output(8)  )) ;
         defparam ix39390z1316.INIT = 4'h2;
    LUT5 ix39387z1316 (.O (nx39387z2), .I0 (\fsm_output(17)  ), .I1 (
         \p_fsm_output(16)  ), .I2 (\p_fsm_output(15)  ), .I3 (\fsm_output(14)  
         ), .I4 (\p_fsm_output(13)  )) ;
         defparam ix39387z1316.INIT = 32'h00000001;
    LUT3 ix15964z1316 (.O (nx15964z1), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  )) ;
         defparam ix15964z1316.INIT = 8'h01;
    LUT6 ix39387z1314 (.O (px1398), .I0 (\fsm_output(12)  ), .I1 (
         \p_fsm_output(11)  ), .I2 (\fsm_output(10)  ), .I3 (\fsm_output(8)  ), 
         .I4 (px1507), .I5 (nx39387z2)) ;
         defparam ix39387z1314.INIT = 64'hFF010000FF000000;
    LUT5 ix39386z42410 (.O (px1399), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\p_z_out_14(1)  )
         , .I3 (p_rtlcn30427), .I4 (px3184)) ;
         defparam ix39386z42410.INIT = 32'hF5DDA088;
    LUT5 ix37399z42410 (.O (px1400), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\p_z_out_14(2)  )
         , .I3 (p_rtlcn30427), .I4 (px3183)) ;
         defparam ix37399z42410.INIT = 32'hF5DDA088;
    LUT5 ix37398z42410 (.O (px1401), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\p_z_out_14(3)  )
         , .I3 (p_rtlcn30427), .I4 (px3182)) ;
         defparam ix37398z42410.INIT = 32'hF5DDA088;
    LUT5 ix37397z42410 (.O (px1402), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\p_z_out_14(4)  )
         , .I3 (p_rtlcn30427), .I4 (px3181)) ;
         defparam ix37397z42410.INIT = 32'hF5DDA088;
    LUT5 ix37396z42410 (.O (px1403), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\p_z_out_14(5)  )
         , .I3 (p_rtlcn30427), .I4 (px3180)) ;
         defparam ix37396z42410.INIT = 32'hF5DDA088;
    LUT5 ix37395z42410 (.O (px1404), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\p_z_out_14(6)  )
         , .I3 (p_rtlcn30427), .I4 (px3179)) ;
         defparam ix37395z42410.INIT = 32'hF5DDA088;
    LUT5 ix37394z42410 (.O (px1405), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\p_z_out_14(7)  )
         , .I3 (p_rtlcn30427), .I4 (px3178)) ;
         defparam ix37394z42410.INIT = 32'hF5DDA088;
    LUT5 ix37393z42410 (.O (px1406), .I0 (\p_fsm_output(11)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I2 (\p_z_out_14(8)  )
         , .I3 (p_rtlcn30427), .I4 (px3177)) ;
         defparam ix37393z42410.INIT = 32'hF5DDA088;
    LUT2 ix36397z1315 (.O (px1415), .I0 (\fsm_output(31)  ), .I1 (px3160)) ;
         defparam ix36397z1315.INIT = 4'h1;
    LUT3 ix36396z1334 (.O (px1416), .I0 (\fsm_output(31)  ), .I1 (px3159), .I2 (
         px3160)) ;
         defparam ix36396z1334.INIT = 8'h14;
    LUT4 ix36395z6502 (.O (px1417), .I0 (\fsm_output(31)  ), .I1 (px3158), .I2 (
         px3159), .I3 (px3160)) ;
         defparam ix36395z6502.INIT = 16'h1444;
    LUT5 ix36394z18790 (.O (px1418), .I0 (\fsm_output(31)  ), .I1 (px3157), .I2 (
         px3158), .I3 (px3159), .I4 (px3160)) ;
         defparam ix36394z18790.INIT = 32'h14444444;
    LUT6 ix36393z18790 (.O (px1419), .I0 (\fsm_output(31)  ), .I1 (px3156), .I2 (
         px3157), .I3 (px3158), .I4 (px3159), .I5 (px3160)) ;
         defparam ix36393z18790.INIT = 64'h1444444444444444;
    LUT2 ix35405z1316 (.O (px1420), .I0 (px1669), .I1 (\fsm_output(31)  )) ;
         defparam ix35405z1316.INIT = 4'h2;
    LUT3 ix35404z1332 (.O (px1421), .I0 (px1667), .I1 (\fsm_output(31)  ), .I2 (
         px3154)) ;
         defparam ix35404z1332.INIT = 8'h12;
    LUT3 ix35403z1346 (.O (px1422), .I0 (px1667), .I1 (\fsm_output(31)  ), .I2 (
         px3154)) ;
         defparam ix35403z1346.INIT = 8'h20;
    LUT3 ix35402z1482 (.O (px1423), .I0 (px1507), .I1 (\fsm_output(36)  ), .I2 (
         \fsm_output(31)  )) ;
         defparam ix35402z1482.INIT = 8'hA8;
    LUT2 ix35401z1315 (.O (px1424), .I0 (\fsm_output(19)  ), .I1 (px3152)) ;
         defparam ix35401z1315.INIT = 4'h1;
    LUT3 ix35400z1334 (.O (px1425), .I0 (\fsm_output(19)  ), .I1 (px3151), .I2 (
         px3152)) ;
         defparam ix35400z1334.INIT = 8'h14;
    LUT4 ix35399z6502 (.O (px1426), .I0 (\fsm_output(19)  ), .I1 (px3150), .I2 (
         px3151), .I3 (px3152)) ;
         defparam ix35399z6502.INIT = 16'h1444;
    LUT5 ix35398z18790 (.O (px1427), .I0 (\fsm_output(19)  ), .I1 (px3149), .I2 (
         px3150), .I3 (px3151), .I4 (px3152)) ;
         defparam ix35398z18790.INIT = 32'h14444444;
    LUT6 ix35397z18790 (.O (px1428), .I0 (\fsm_output(19)  ), .I1 (px3148), .I2 (
         px3149), .I3 (px3150), .I4 (px3151), .I5 (px3152)) ;
         defparam ix35397z18790.INIT = 64'h1444444444444444;
    LUT6 ix35396z18790 (.O (px1429), .I0 (\fsm_output(19)  ), .I1 (px3147), .I2 (
         px3148), .I3 (px3149), .I4 (px3150), .I5 (px1608)) ;
         defparam ix35396z18790.INIT = 64'h1444444444444444;
    LUT3 ix34408z1482 (.O (px1430), .I0 (px1507), .I1 (\p_fsm_output(30)  ), .I2 (
         \fsm_output(19)  )) ;
         defparam ix34408z1482.INIT = 8'hA8;
    LUT2 ix34407z1316 (.O (px1431), .I0 (nx55033z4), .I1 (\fsm_output(20)  )) ;
         defparam ix34407z1316.INIT = 4'h2;
    LUT3 ix34406z1320 (.O (px1432), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         \fsm_output(20)  )) ;
         defparam ix34406z1320.INIT = 8'h06;
    LUT4 ix34405z1344 (.O (px1433), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (\fsm_output(20)  )) ;
         defparam ix34405z1344.INIT = 16'h001E;
    LUT5 ix34404z1824 (.O (px1434), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (\fsm_output(20)  )) ;
         defparam ix34404z1824.INIT = 32'h000001FE;
    LUT6 ix34403z1312 (.O (px1435), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (nx55033z18), .I5 (\fsm_output(20)  
         )) ;
         defparam ix34403z1312.INIT = 64'h000000000001FFFE;
    LUT2 ix34402z1316 (.O (px1436), .I0 (nx14457z2), .I1 (\fsm_output(20)  )) ;
         defparam ix34402z1316.INIT = 4'h2;
    LUT2 ix34401z1316 (.O (px1437), .I0 (nx55033z2), .I1 (\fsm_output(20)  )) ;
         defparam ix34401z1316.INIT = 4'h2;
    LUT3 ix33411z1317 (.O (nx33411z3), .I0 (\fsm_output(24)  ), .I1 (
         \p_fsm_output(23)  ), .I2 (\fsm_output(22)  )) ;
         defparam ix33411z1317.INIT = 8'h01;
    LUT4 ix33411z1316 (.O (nx33411z2), .I0 (\fsm_output(28)  ), .I1 (
         \fsm_output(27)  ), .I2 (\fsm_output(26)  ), .I3 (\p_fsm_output(25)  )
         ) ;
         defparam ix33411z1316.INIT = 16'h0001;
    LUT5 ix33411z1442 (.O (px1440), .I0 (px1507), .I1 (nx33411z2), .I2 (
         nx33411z3), .I3 (\fsm_output(29)  ), .I4 (\fsm_output(20)  )) ;
         defparam ix33411z1442.INIT = 32'hAAAA0080;
    LUT5 ix33410z42410 (.O (px1441), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[1]), .I2 (\p_z_out_14(1)  )
         , .I3 (p_rtlcn30427), .I4 (px3139)) ;
         defparam ix33410z42410.INIT = 32'hF5DDA088;
    LUT5 ix33409z42410 (.O (px1442), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[2]), .I2 (\p_z_out_14(2)  )
         , .I3 (p_rtlcn30427), .I4 (px3138)) ;
         defparam ix33409z42410.INIT = 32'hF5DDA088;
    LUT5 ix33408z42410 (.O (px1443), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[3]), .I2 (\p_z_out_14(3)  )
         , .I3 (p_rtlcn30427), .I4 (px3137)) ;
         defparam ix33408z42410.INIT = 32'hF5DDA088;
    LUT5 ix33407z42410 (.O (px1444), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[4]), .I2 (\p_z_out_14(4)  )
         , .I3 (p_rtlcn30427), .I4 (px3136)) ;
         defparam ix33407z42410.INIT = 32'hF5DDA088;
    LUT5 ix33406z42410 (.O (px1445), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[5]), .I2 (\p_z_out_14(5)  )
         , .I3 (p_rtlcn30427), .I4 (px3135)) ;
         defparam ix33406z42410.INIT = 32'hF5DDA088;
    LUT5 ix33405z42410 (.O (px1446), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[6]), .I2 (\p_z_out_14(6)  )
         , .I3 (p_rtlcn30427), .I4 (px3134)) ;
         defparam ix33405z42410.INIT = 32'hF5DDA088;
    LUT5 ix33404z42410 (.O (px1447), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[7]), .I2 (\p_z_out_14(7)  )
         , .I3 (p_rtlcn30427), .I4 (px3133)) ;
         defparam ix33404z42410.INIT = 32'hF5DDA088;
    LUT5 ix33403z42410 (.O (px1448), .I0 (\p_fsm_output(23)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_3[8]), .I2 (\p_z_out_14(8)  )
         , .I3 (p_rtlcn30427), .I4 (px3132)) ;
         defparam ix33403z42410.INIT = 32'hF5DDA088;
    LUT2 ix32407z1315 (.O (px1457), .I0 (\fsm_output(32)  ), .I1 (px3115)) ;
         defparam ix32407z1315.INIT = 4'h1;
    LUT3 ix32406z1334 (.O (px1458), .I0 (\fsm_output(32)  ), .I1 (px3114), .I2 (
         px3115)) ;
         defparam ix32406z1334.INIT = 8'h14;
    LUT4 ix32405z6502 (.O (px1459), .I0 (\fsm_output(32)  ), .I1 (px3113), .I2 (
         px3114), .I3 (px3115)) ;
         defparam ix32405z6502.INIT = 16'h1444;
    LUT5 ix31417z18790 (.O (px1460), .I0 (\fsm_output(32)  ), .I1 (px3112), .I2 (
         px3113), .I3 (px3114), .I4 (px3115)) ;
         defparam ix31417z18790.INIT = 32'h14444444;
    LUT6 ix31416z18790 (.O (px1461), .I0 (\fsm_output(32)  ), .I1 (px3111), .I2 (
         px3112), .I3 (px3113), .I4 (px3114), .I5 (px3115)) ;
         defparam ix31416z18790.INIT = 64'h1444444444444444;
    LUT2 ix31415z1316 (.O (px1462), .I0 (px1681), .I1 (\fsm_output(32)  )) ;
         defparam ix31415z1316.INIT = 4'h2;
    LUT3 ix31414z1332 (.O (px1463), .I0 (px1679), .I1 (\fsm_output(32)  ), .I2 (
         px3109)) ;
         defparam ix31414z1332.INIT = 8'h12;
    LUT4 ix31413z5970 (.O (px1464), .I0 (px1679), .I1 (\fsm_output(32)  ), .I2 (
         px3108), .I3 (px3109)) ;
         defparam ix31413z5970.INIT = 16'h1230;
    LUT4 ix31412z44836 (.O (px1465), .I0 (px1507), .I1 (\fsm_output(35)  ), .I2 (
         \fsm_output(34)  ), .I3 (\fsm_output(32)  )) ;
         defparam ix31412z44836.INIT = 16'hAA02;
    LUT4 ix31411z44406 (.O (px1466), .I0 (nx13604z2), .I1 (px1483), .I2 (px1482)
         , .I3 (nx31411z2)) ;
         defparam ix31411z44406.INIT = 16'hA854;
    LUT6 ix30414z1321 (.O (px1476), .I0 (p_nbus_Vga_rsc_singleport_addr[8]), .I1 (
         \p_fsm_output(38)  ), .I2 (\fsm_output(32)  ), .I3 (\fsm_output(8)  ), 
         .I4 (px3249), .I5 (nx13604z21)) ;
         defparam ix30414z1321.INIT = 64'h0000000077770007;
    LUT5 ix30413z25634 (.O (px1477), .I0 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3228), .I2 (
         px3229), .I3 (nx13604z23), .I4 (nx13604z27)) ;
         defparam ix30413z25634.INIT = 32'h28775F00;
    LUT6 ix30412z20582 (.O (px1478), .I0 (nx13604z17), .I1 (nx13604z19), .I2 (
         nx13604z21), .I3 (nx13604z23), .I4 (nx13604z25), .I5 (nx13604z27)) ;
         defparam ix30412z20582.INIT = 64'h4B44BBBB4B444B44;
    LUT2 ix30411z1323 (.O (px1479), .I0 (nx13604z13), .I1 (nx13604z16)) ;
         defparam ix30411z1323.INIT = 4'h9;
    LUT3 ix29423z1415 (.O (px1480), .I0 (nx13604z11), .I1 (nx13604z13), .I2 (
         nx13604z16)) ;
         defparam ix29423z1415.INIT = 8'h65;
    LUT4 ix29422z23415 (.O (px1481), .I0 (nx13604z9), .I1 (nx13604z11), .I2 (
         nx13604z13), .I3 (nx13604z16)) ;
         defparam ix29422z23415.INIT = 16'h5655;
    LUT5 ix29421z23159 (.O (px1482), .I0 (nx13604z7), .I1 (nx13604z9), .I2 (
         nx13604z11), .I3 (nx13604z13), .I4 (nx13604z16)) ;
         defparam ix29421z23159.INIT = 32'h55565555;
    LUT6 ix29420z23159 (.O (px1483), .I0 (nx13604z3), .I1 (nx13604z7), .I2 (
         nx13604z9), .I3 (nx13604z11), .I4 (nx13604z13), .I5 (nx13604z16)) ;
         defparam ix29420z23159.INIT = 64'h5555555655555555;
    LUT6 ix31411z2086 (.O (nx31411z2), .I0 (\p_fsm_output(38)  ), .I1 (
         \fsm_output(32)  ), .I2 (\fsm_output(8)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (px3208), .I5 (
         px3221)) ;
         defparam ix31411z2086.INIT = 64'h0001000301010303;
    LUT5 ix13604z1356 (.O (nx13604z27), .I0 (p_nbus_Vga_rsc_singleport_addr[9])
         , .I1 (\p_fsm_output(38)  ), .I2 (\fsm_output(32)  ), .I3 (
         \fsm_output(8)  ), .I4 (px3250)) ;
         defparam ix13604z1356.INIT = 32'h77770007;
    LUT2 ix13604z1337 (.O (nx13604z25), .I0 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3228)) ;
         defparam ix13604z1337.INIT = 4'h8;
    LUT5 ix13604z1350 (.O (nx13604z23), .I0 (p_nbus_Vga_rsc_singleport_addr[8])
         , .I1 (\p_fsm_output(38)  ), .I2 (\fsm_output(32)  ), .I3 (
         \fsm_output(8)  ), .I4 (px3249)) ;
         defparam ix13604z1350.INIT = 32'h77770007;
    LUT2 ix13604z1334 (.O (nx13604z21), .I0 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3229)) ;
         defparam ix13604z1334.INIT = 4'h8;
    LUT5 ix13604z1344 (.O (nx13604z19), .I0 (p_nbus_Vga_rsc_singleport_addr[10])
         , .I1 (\p_fsm_output(38)  ), .I2 (\fsm_output(32)  ), .I3 (
         \fsm_output(8)  ), .I4 (px3251)) ;
         defparam ix13604z1344.INIT = 32'h77770007;
    LUT2 ix13604z1331 (.O (nx13604z17), .I0 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I1 (px3227)) ;
         defparam ix13604z1331.INIT = 4'h8;
    LUT6 ix13604z46565 (.O (nx13604z16), .I0 (nx13604z17), .I1 (nx13604z19), .I2 (
         nx13604z21), .I3 (nx13604z23), .I4 (nx13604z25), .I5 (nx13604z27)) ;
         defparam ix13604z46565.INIT = 64'hB0BB0000B0BBB0BB;
    LUT6 ix13604z12115 (.O (nx13604z13), .I0 (nx13604z4), .I1 (
         p_nbus_Vga_rsc_singleport_addr[11]), .I2 (\p_fsm_output(38)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (px3226), .I5 (
         px3252)) ;
         defparam ix13604z12115.INIT = 64'h003F3F3F002A2A2A;
    LUT6 ix13604z12114 (.O (nx13604z11), .I0 (nx13604z4), .I1 (
         p_nbus_Vga_rsc_singleport_addr[12]), .I2 (\p_fsm_output(38)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (px3225), .I5 (
         px3253)) ;
         defparam ix13604z12114.INIT = 64'h003F3F3F002A2A2A;
    LUT6 ix13604z12113 (.O (nx13604z9), .I0 (nx13604z4), .I1 (
         p_nbus_Vga_rsc_singleport_addr[13]), .I2 (\p_fsm_output(38)  ), .I3 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I4 (px3224), .I5 (
         px3254)) ;
         defparam ix13604z12113.INIT = 64'h003F3F3F002A2A2A;
    LUT4 ix13604z63014 (.O (nx13604z7), .I0 (\fsm_output(32)  ), .I1 (
         \fsm_output(8)  ), .I2 (px3255), .I3 (px1783)) ;
         defparam ix13604z63014.INIT = 16'hF100;
    LUT2 ix13604z1318 (.O (nx13604z4), .I0 (\fsm_output(32)  ), .I1 (
         \fsm_output(8)  )) ;
         defparam ix13604z1318.INIT = 4'h1;
    LUT6 ix13604z10190 (.O (nx13604z3), .I0 (nx13604z4), .I1 (\p_fsm_output(38)  
         ), .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (
         px3209), .I4 (px3222), .I5 (px3256)) ;
         defparam ix13604z10190.INIT = 64'h030F33FF020A22AA;
    LUT6 ix13604z1315 (.O (nx13604z2), .I0 (nx13604z3), .I1 (nx13604z7), .I2 (
         nx13604z9), .I3 (nx13604z11), .I4 (nx13604z13), .I5 (nx13604z16)) ;
         defparam ix13604z1315.INIT = 64'h0000000100000000;
    LUT6 ix16961z44937 (.O (px1502), .I0 (px1783), .I1 (nx62052z10), .I2 (
         \p_fsm_output(33)  ), .I3 (\p_fsm_output(9)  ), .I4 (px3109), .I5 (
         px3195)) ;
         defparam ix16961z44937.INIT = 64'h00C600660AC6AA66;
    LUT4 ix48054z1316 (.O (nx48054z2), .I0 (\fsm_output(40)  ), .I1 (
         p_Src_rsc_singleport_oswt), .I2 (p_Dst_rsc_singleport_oswt), .I3 (
         \p_fsm_output_1_0(42)  )) ;
         defparam ix48054z1316.INIT = 16'h0001;
    LUT6 ix48054z63004 (.O (px1507), .I0 (nx48054z2), .I1 (p_start), .I2 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I3 (
         p_mgc_start_sync_mgc_bsync_vld_oswt), .I4 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_mgc_start_sync_mgc_bsync_vld_icwt
         ), .I5 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_tiswt0_0n0s2
         )) ;
         defparam ix48054z63004.INIT = 64'hFCFFFCFFF8FAF0FA;
    LUT5 ix26421z1316 (.O (px1509), .I0 (px1775), .I1 (px1774), .I2 (px1770), .I3 (
         px1766), .I4 (px1763)) ;
         defparam ix26421z1316.INIT = 32'h00000002;
    LUT3 ix23436z1530 (.O (px1533), .I0 (\p_fsm_output(21)  ), .I1 (px3149), .I2 (
         px3261)) ;
         defparam ix23436z1530.INIT = 8'hD8;
    LUT3 ix23433z1530 (.O (px1536), .I0 (\p_fsm_output(21)  ), .I1 (px3150), .I2 (
         px3260)) ;
         defparam ix23433z1530.INIT = 8'hD8;
    LUT3 ix22442z1530 (.O (px1540), .I0 (\p_fsm_output(21)  ), .I1 (px3151), .I2 (
         px3259)) ;
         defparam ix22442z1530.INIT = 8'hD8;
    LUT6 ix22441z11337 (.O (px1541), .I0 (\p_fsm_output(21)  ), .I1 (px3151), .I2 (
         px3259), .I3 (px1548), .I4 (px1545), .I5 (px1544)) ;
         defparam ix22441z11337.INIT = 64'hD8D82727D8272727;
    LUT6 ix21445z1316 (.O (px1550), .I0 (px1775), .I1 (px1774), .I2 (px1770), .I3 (
         px1766), .I4 (px1763), .I5 (px1549)) ;
         defparam ix21445z1316.INIT = 64'h0002FFFDFFFD0002;
    LUT3 ix21444z1353 (.O (px1551), .I0 (\p_fsm_output(38)  ), .I1 (px3214), .I2 (
         px3244)) ;
         defparam ix21444z1353.INIT = 8'h27;
    LUT3 ix21438z1354 (.O (nx21438z2), .I0 (\p_fsm_output(38)  ), .I1 (px3218), 
         .I2 (px3248)) ;
         defparam ix21438z1354.INIT = 8'h27;
    LUT6 ix21438z28536 (.O (px1557), .I0 (px1790), .I1 (px1788), .I2 (px1786), .I3 (
         px1784), .I4 (px1781), .I5 (nx21438z2)) ;
         defparam ix21438z28536.INIT = 64'h6A5695A995A96A56;
    LUT6 ix17453z1316 (.O (px1594), .I0 (p_nbus_Src_rsc_singleport_data_out[0])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3329), .I5 (p_nbus_Vga_rsc_singleport_data_in[0])) ;
         defparam ix17453z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix17452z1316 (.O (px1595), .I0 (p_nbus_Src_rsc_singleport_data_out[1])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3330), .I5 (p_nbus_Vga_rsc_singleport_data_in[1])) ;
         defparam ix17452z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix17451z1316 (.O (px1596), .I0 (p_nbus_Src_rsc_singleport_data_out[2])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3331), .I5 (p_nbus_Vga_rsc_singleport_data_in[2])) ;
         defparam ix17451z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix17450z1316 (.O (px1597), .I0 (p_nbus_Src_rsc_singleport_data_out[3])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3332), .I5 (p_nbus_Vga_rsc_singleport_data_in[3])) ;
         defparam ix17450z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix17449z1316 (.O (px1598), .I0 (p_nbus_Src_rsc_singleport_data_out[4])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3333), .I5 (p_nbus_Vga_rsc_singleport_data_in[4])) ;
         defparam ix17449z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix17448z1316 (.O (px1599), .I0 (p_nbus_Src_rsc_singleport_data_out[5])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3334), .I5 (p_nbus_Vga_rsc_singleport_data_in[5])) ;
         defparam ix17448z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix15461z1316 (.O (px1600), .I0 (p_nbus_Src_rsc_singleport_data_out[6])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3335), .I5 (p_nbus_Vga_rsc_singleport_data_in[6])) ;
         defparam ix15461z1316.INIT = 64'hFFFEFCFE03020002;
    LUT6 ix15460z1316 (.O (px1601), .I0 (p_nbus_Src_rsc_singleport_data_out[7])
         , .I1 (\p_fsm_output(25)  ), .I2 (\p_fsm_output(23)  ), .I3 (
         p_Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_icwt), .I4 (
         px3336), .I5 (p_nbus_Vga_rsc_singleport_data_in[7])) ;
         defparam ix15460z1316.INIT = 64'hFFFEFCFE03020002;
    LUT3 ix15458z1392 (.O (px1603), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19649
         ), .I2 (px3256)) ;
         defparam ix15458z1392.INIT = 8'h4E;
    LUT3 ix15456z1392 (.O (px1605), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19650
         ), .I2 (px3262)) ;
         defparam ix15456z1392.INIT = 8'h4E;
    LUT3 ix15455z1392 (.O (px1606), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19651
         ), .I2 (px3261)) ;
         defparam ix15455z1392.INIT = 8'h4E;
    LUT3 ix15454z1392 (.O (px1607), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19652
         ), .I2 (px3260)) ;
         defparam ix15454z1392.INIT = 8'h4E;
    LUT3 ix15452z1392 (.O (px1609), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19653
         ), .I2 (px3259)) ;
         defparam ix15452z1392.INIT = 8'h4E;
    LUT3 ix14464z1392 (.O (px1610), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19654
         ), .I2 (px3258)) ;
         defparam ix14464z1392.INIT = 8'h4E;
    LUT3 ix14463z1334 (.O (px1611), .I0 (\p_fsm_output(30)  ), .I1 (p_rtlcn19655
         ), .I2 (px3207)) ;
         defparam ix14463z1334.INIT = 8'h14;
    LUT6 ix55033z1317 (.O (nx55033z3), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (nx55033z18), .I5 (nx55033z21)) ;
         defparam ix55033z1317.INIT = 64'h0000000000000001;
    LUT6 ix55033z24445 (.O (nx55033z2), .I0 (nx55033z3), .I1 (\p_fsm_output(21)  
         ), .I2 (\fsm_output(19)  ), .I3 (\fsm_output(18)  ), .I4 (px3140), .I5 (
         px3201)) ;
         defparam ix55033z24445.INIT = 64'h5556555A56565A5A;
    LUT2 ix14460z1323 (.O (px1614), .I0 (nx55033z2), .I1 (px3256)) ;
         defparam ix14460z1323.INIT = 4'h9;
    LUT6 ix55033z5725 (.O (nx55033z21), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3141), .I4 (px3202)
         , .I5 (px3256)) ;
         defparam ix55033z5725.INIT = 64'h050F55FF01031133;
    LUT6 ix14457z1313 (.O (nx14457z2), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (nx55033z18), .I5 (nx55033z21)) ;
         defparam ix14457z1313.INIT = 64'h00000001FFFFFFFE;
    LUT4 ix14457z56649 (.O (px1617), .I0 (\p_fsm_output(21)  ), .I1 (px3255), .I2 (
         px3262), .I3 (nx14457z2)) ;
         defparam ix14457z56649.INIT = 16'hD827;
    LUT6 ix55033z5724 (.O (nx55033z18), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3142), .I4 (px3203)
         , .I5 (px3262)) ;
         defparam ix55033z5724.INIT = 64'h050F55FF01031133;
    LUT6 ix14455z1315 (.O (px1619), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx55033z15), .I4 (nx14455z2), .I5 (nx55033z18)) ;
         defparam ix14455z1315.INIT = 64'h0001FFFEFFFE0001;
    LUT3 ix14455z1531 (.O (nx14455z2), .I0 (\p_fsm_output(21)  ), .I1 (px3254), 
         .I2 (px3261)) ;
         defparam ix14455z1531.INIT = 8'hD8;
    LUT6 ix55033z5723 (.O (nx55033z15), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3143), .I4 (px3204)
         , .I5 (px3261)) ;
         defparam ix55033z5723.INIT = 64'h050F55FF01031133;
    LUT5 ix13465z803 (.O (px1622), .I0 (nx55033z4), .I1 (nx55033z8), .I2 (
         nx55033z12), .I3 (nx13465z2), .I4 (nx55033z15)) ;
         defparam ix13465z803.INIT = 32'h01FEFE01;
    LUT3 ix13465z1531 (.O (nx13465z2), .I0 (\p_fsm_output(21)  ), .I1 (px3253), 
         .I2 (px3260)) ;
         defparam ix13465z1531.INIT = 8'hD8;
    LUT6 ix55033z5722 (.O (nx55033z12), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3144), .I4 (px3205)
         , .I5 (px3260)) ;
         defparam ix55033z5722.INIT = 64'h050F55FF01031133;
    LUT6 ix13462z56649 (.O (px1625), .I0 (\p_fsm_output(21)  ), .I1 (px3252), .I2 (
         px3259), .I3 (nx55033z4), .I4 (nx55033z8), .I5 (nx55033z12)) ;
         defparam ix13462z56649.INIT = 64'h272727D8D8D8D827;
    LUT6 ix55033z5721 (.O (nx55033z8), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3145), .I4 (px3206)
         , .I5 (px3259)) ;
         defparam ix55033z5721.INIT = 64'h050F55FF01031133;
    LUT5 ix13460z56649 (.O (px1627), .I0 (\p_fsm_output(21)  ), .I1 (px3251), .I2 (
         px3258), .I3 (nx55033z4), .I4 (nx55033z8)) ;
         defparam ix13460z56649.INIT = 32'h27D8D827;
    LUT6 ix55033z5720 (.O (nx55033z4), .I0 (\p_fsm_output(21)  ), .I1 (
         \fsm_output(19)  ), .I2 (\fsm_output(18)  ), .I3 (px3146), .I4 (px3207)
         , .I5 (px3258)) ;
         defparam ix55033z5720.INIT = 64'h050F55FF01031133;
    LUT4 ix13458z56649 (.O (px1629), .I0 (\p_fsm_output(21)  ), .I1 (px3250), .I2 (
         px3257), .I3 (nx55033z4)) ;
         defparam ix13458z56649.INIT = 16'hD827;
    LUT2 ix9756z1317 (.O (nx9756z2), .I0 (\p_fsm_output(13)  ), .I1 (px3303)) ;
         defparam ix9756z1317.INIT = 4'h2;
    LUT4 ix466z6284 (.O (nx466z31), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(5)  ), .I2 (px3211), .I3 (px3241)) ;
         defparam ix466z6284.INIT = 16'h135F;
    LUT5 ix466z1358 (.O (nx466z30), .I0 (nx466z31), .I1 (\fsm_output(20)  ), .I2 (
         \p_fsm_output(9)  ), .I3 (\fsm_output(7)  ), .I4 (px3193)) ;
         defparam ix466z1358.INIT = 32'h00020022;
    LUT6 ix466z1312 (.O (nx466z2), .I0 (nx48054z5), .I1 (nx466z3), .I2 (nx466z10
         ), .I3 (nx466z17), .I4 (nx466z24), .I5 (nx466z30)) ;
         defparam ix466z1312.INIT = 64'h00000002FFFFFFFD;
    LUT4 ix12466z58899 (.O (px1634), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[1]), .I3 (px3256)) ;
         defparam ix12466z58899.INIT = 16'hE0F1;
    LUT4 ix466z6282 (.O (nx466z25), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(5)  ), .I2 (px3212), .I3 (px3242)) ;
         defparam ix466z6282.INIT = 16'h135F;
    LUT6 ix466z1356 (.O (nx466z24), .I0 (nx466z25), .I1 (\fsm_output(20)  ), .I2 (
         \p_fsm_output(9)  ), .I3 (\fsm_output(7)  ), .I4 (px3194), .I5 (px3256)
         ) ;
         defparam ix466z1356.INIT = 64'h0A0AAAAA00020022;
    LUT6 ix9755z1315 (.O (nx9755z2), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (nx466z24), .I5 (\p_fsm_output(9)  )) ;
         defparam ix9755z1315.INIT = 64'h0002FFFD00000000;
    LUT4 ix12462z58899 (.O (px1638), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[2]), .I3 (px3255)) ;
         defparam ix12462z58899.INIT = 16'hE0F1;
    LUT6 ix466z5724 (.O (nx466z18), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(20)  ), .I2 (\fsm_output(5)  ), .I3 (px3213), .I4 (px3243)
         , .I5 (px3255)) ;
         defparam ix466z5724.INIT = 64'h050F55FF01031133;
    LUT5 ix466z1842 (.O (nx466z17), .I0 (nx466z18), .I1 (\p_fsm_output(9)  ), .I2 (
         \fsm_output(7)  ), .I3 (px3195), .I4 (px3262)) ;
         defparam ix466z1842.INIT = 32'h22AA020A;
    LUT5 ix9754z1315 (.O (nx9754z2), .I0 (nx48054z5), .I1 (nx466z3), .I2 (
         nx466z10), .I3 (nx466z17), .I4 (\p_fsm_output(9)  )) ;
         defparam ix9754z1315.INIT = 32'h02FD0000;
    LUT4 ix11471z58899 (.O (px1642), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[3]), .I3 (px3254)) ;
         defparam ix11471z58899.INIT = 16'hE0F1;
    LUT4 ix9753z64084 (.O (nx9753z2), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (px3283), .I3 (px3306)) ;
         defparam ix9753z64084.INIT = 16'hF531;
    LUT6 ix466z5722 (.O (nx466z11), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(20)  ), .I2 (\fsm_output(5)  ), .I3 (px3214), .I4 (px3244)
         , .I5 (px3254)) ;
         defparam ix466z5722.INIT = 64'h050F55FF01031133;
    LUT5 ix466z1840 (.O (nx466z10), .I0 (nx466z11), .I1 (\p_fsm_output(9)  ), .I2 (
         \fsm_output(7)  ), .I3 (px3196), .I4 (px3261)) ;
         defparam ix466z1840.INIT = 32'h22AA020A;
    LUT4 ix11467z58899 (.O (px1646), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[4]), .I3 (px3253)) ;
         defparam ix11467z58899.INIT = 16'hE0F1;
    LUT4 ix9752z64084 (.O (nx9752z2), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (px3284), .I3 (px3307)) ;
         defparam ix9752z64084.INIT = 16'hF531;
    LUT6 ix466z5720 (.O (nx466z4), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(20)  ), .I2 (\fsm_output(5)  ), .I3 (px3215), .I4 (px3245)
         , .I5 (px3253)) ;
         defparam ix466z5720.INIT = 64'h050F55FF01031133;
    LUT5 ix466z1838 (.O (nx466z3), .I0 (nx466z4), .I1 (\p_fsm_output(9)  ), .I2 (
         \fsm_output(7)  ), .I3 (px3197), .I4 (px3260)) ;
         defparam ix466z1838.INIT = 32'h22AA020A;
    LUT6 ix48054z3230 (.O (nx48054z5), .I0 (nx48054z6), .I1 (nx48054z9), .I2 (
         nx48054z12), .I3 (nx48054z15), .I4 (nx48054z17), .I5 (nx48054z18)) ;
         defparam ix48054z3230.INIT = 64'h0000077707770777;
    LUT4 ix10475z58899 (.O (px1651), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[5]), .I3 (px3252)) ;
         defparam ix10475z58899.INIT = 16'hE0F1;
    LUT2 ix9751z1317 (.O (nx9751z2), .I0 (\p_fsm_output(13)  ), .I1 (px3308)) ;
         defparam ix9751z1317.INIT = 4'h2;
    LUT6 ix48054z14636 (.O (nx48054z18), .I0 (\fsm_output(41)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (\fsm_output(5)  ), .I3 (px3198), .I4 (px3216)
         , .I5 (px3246)) ;
         defparam ix48054z14636.INIT = 64'h0105030F115533FF;
    LUT4 ix48054z64093 (.O (nx48054z17), .I0 (\fsm_output(20)  ), .I1 (
         \fsm_output(7)  ), .I2 (px3252), .I3 (px3259)) ;
         defparam ix48054z64093.INIT = 16'hF531;
    LUT6 ix39395z64939 (.O (nx39395z2), .I0 (nx48054z6), .I1 (nx48054z9), .I2 (
         nx48054z12), .I3 (nx48054z15), .I4 (nx48054z17), .I5 (nx48054z18)) ;
         defparam ix39395z64939.INIT = 64'h0777F888F888F888;
    LUT4 ix10470z58899 (.O (px1656), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[6]), .I3 (px3251)) ;
         defparam ix10470z58899.INIT = 16'hE0F1;
    LUT6 ix48054z1582 (.O (nx48054z15), .I0 (\fsm_output(41)  ), .I1 (
         \fsm_output(20)  ), .I2 (\fsm_output(7)  ), .I3 (px3217), .I4 (px3251)
         , .I5 (px3258)) ;
         defparam ix48054z1582.INIT = 64'h55FF1133050F0103;
    LUT4 ix48054z6281 (.O (nx48054z12), .I0 (\p_fsm_output(9)  ), .I1 (
         \fsm_output(5)  ), .I2 (px3199), .I3 (px3247)) ;
         defparam ix48054z6281.INIT = 16'h135F;
    LUT5 ix9750z1315 (.O (nx9750z2), .I0 (nx48054z6), .I1 (nx48054z9), .I2 (
         nx48054z12), .I3 (nx48054z15), .I4 (\p_fsm_output(9)  )) ;
         defparam ix9750z1315.INIT = 32'h78880000;
    LUT4 ix9479z58899 (.O (px1660), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[7]), .I3 (px3250)) ;
         defparam ix9479z58899.INIT = 16'hE0F1;
    LUT6 ix48054z1594 (.O (nx48054z9), .I0 (\fsm_output(20)  ), .I1 (
         \fsm_output(7)  ), .I2 (\fsm_output(5)  ), .I3 (px3248), .I4 (px3250), 
         .I5 (px3257)) ;
         defparam ix48054z1594.INIT = 64'h0FFF055503330111;
    LUT4 ix48054z6759 (.O (nx48054z6), .I0 (\fsm_output(41)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (px3200), .I3 (px3218)) ;
         defparam ix48054z6759.INIT = 16'h153F;
    LUT4 ix9749z64084 (.O (nx9749z2), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (px3287), .I3 (px3310)) ;
         defparam ix9749z64084.INIT = 16'hF531;
    LUT4 ix9475z58899 (.O (px1664), .I0 (\p_fsm_output(25)  ), .I1 (
         \p_fsm_output(13)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_z_out_9[8]), .I3 (px3249)) ;
         defparam ix9475z58899.INIT = 16'hE0F1;
    LUT5 ix64045z1311 (.O (px1761), .I0 (px1775), .I1 (px1774), .I2 (px1770), .I3 (
         px1766), .I4 (px1763)) ;
         defparam ix64045z1311.INIT = 32'h0002FFFD;
    LUT4 ix64045z6759 (.O (nx64045z10), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3153), .I3 (px3211)) ;
         defparam ix64045z6759.INIT = 16'h153F;
    LUT5 ix64045z10193 (.O (px1763), .I0 (nx64045z10), .I1 (\p_fsm_output(9)  )
         , .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3201
         ), .I4 (px3241)) ;
         defparam ix64045z10193.INIT = 32'h020A22AA;
    LUT4 ix64045z6757 (.O (nx64045z7), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3154), .I3 (px3212)) ;
         defparam ix64045z6757.INIT = 16'h153F;
    LUT5 ix64045z10191 (.O (px1766), .I0 (nx64045z7), .I1 (\p_fsm_output(9)  ), 
         .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3202)
         , .I4 (px3242)) ;
         defparam ix64045z10191.INIT = 32'h020A22AA;
    LUT4 ix64045z6755 (.O (nx64045z4), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3155), .I3 (px3213)) ;
         defparam ix64045z6755.INIT = 16'h153F;
    LUT5 ix64045z10189 (.O (px1770), .I0 (nx64045z4), .I1 (\p_fsm_output(9)  ), 
         .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3203)
         , .I4 (px3243)) ;
         defparam ix64045z10189.INIT = 32'h020A22AA;
    LUT6 ix63047z1313 (.O (px1772), .I0 (\p_fsm_output(38)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3214), .I3 (
         px3244), .I4 (px1775), .I5 (px1773)) ;
         defparam ix63047z1313.INIT = 64'h135FECA00000FFFF;
    LUT4 ix63046z6273 (.O (px1773), .I0 (\p_fsm_output(33)  ), .I1 (
         \p_fsm_output(9)  ), .I2 (px3156), .I3 (px3204)) ;
         defparam ix63046z6273.INIT = 16'h135F;
    LUT4 ix63040z6755 (.O (nx63040z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3157), .I3 (px3215)) ;
         defparam ix63040z6755.INIT = 16'h153F;
    LUT5 ix63040z10189 (.O (px1778), .I0 (nx63040z3), .I1 (\p_fsm_output(9)  ), 
         .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3205)
         , .I4 (px3245)) ;
         defparam ix63040z10189.INIT = 32'h020A22AA;
    LUT6 ix63040z34250 (.O (px1779), .I0 (px1790), .I1 (px1788), .I2 (px1786), .I3 (
         px1784), .I4 (px1778), .I5 (px1781)) ;
         defparam ix63040z34250.INIT = 64'h1501EAFE7F5780A8;
    LUT5 ix62052z39627 (.O (px1780), .I0 (px1790), .I1 (px1788), .I2 (px1786), .I3 (
         px1784), .I4 (px1781)) ;
         defparam ix62052z39627.INIT = 32'h6A5695A9;
    LUT6 ix62052z14631 (.O (nx62052z10), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3160), .I4 (
         px3218), .I5 (px3248)) ;
         defparam ix62052z14631.INIT = 64'h0105030F115533FF;
    LUT6 ix62052z23096 (.O (px1784), .I0 (px1783), .I1 (nx62052z10), .I2 (
         \p_fsm_output(33)  ), .I3 (\p_fsm_output(9)  ), .I4 (px3109), .I5 (
         px3195)) ;
         defparam ix62052z23096.INIT = 64'hFF31FF11F5315511;
    LUT4 ix62047z6753 (.O (px1785), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3108), .I3 (px3209)) ;
         defparam ix62047z6753.INIT = 16'h153F;
    LUT4 ix62052z6277 (.O (nx62052z6), .I0 (\p_fsm_output(38)  ), .I1 (
         p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I2 (px3217), .I3 (
         px3247)) ;
         defparam ix62052z6277.INIT = 16'h135F;
    LUT5 ix62052z10191 (.O (px1788), .I0 (nx62052z6), .I1 (\p_fsm_output(33)  )
         , .I2 (\p_fsm_output(9)  ), .I3 (px3159), .I4 (px3207)) ;
         defparam ix62052z10191.INIT = 32'h020A22AA;
    LUT4 ix62052z6755 (.O (nx62052z3), .I0 (\p_fsm_output(38)  ), .I1 (
         \p_fsm_output(33)  ), .I2 (px3158), .I3 (px3216)) ;
         defparam ix62052z6755.INIT = 16'h153F;
    LUT5 ix62052z10189 (.O (px1790), .I0 (nx62052z3), .I1 (\p_fsm_output(9)  ), 
         .I2 (p_nbus_Main_Trans_Ond_Opt_core_inst_fsm_output[41]), .I3 (px3206)
         , .I4 (px3246)) ;
         defparam ix62052z10189.INIT = 32'h020A22AA;
endmodule


module Main_Trans_Ond_Opt_core_wait_ctrl_0 ( p_mgc_start_sync_mgc_bsync_vld_oswt, 
                                             p_start, 
                                             \p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)  , 
                                             p_Src_rsc_singleport_icwt, 
                                             p_Vga_triosy_lz, px1507, 
                                             p_Src_rsc_singleport_tiswt0_0n0s2, 
                                             p_rst, p_clk, 
                                             p_mgc_start_sync_mgc_bsync_vld_icwt
                                              ) ;

    input p_mgc_start_sync_mgc_bsync_vld_oswt ;
    input p_start ;
    input \p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)   ;
    input p_Src_rsc_singleport_icwt ;
    output p_Vga_triosy_lz ;
    input px1507 ;
    output p_Src_rsc_singleport_tiswt0_0n0s2 ;
    input p_rst ;
    input p_clk ;
    output p_mgc_start_sync_mgc_bsync_vld_icwt ;

    wire nx27670z1, nx27176z1, nx4, nx52;



    LUT2 ix27670z1328 (.O (nx27670z1), .I0 (px1507), .I1 (p_rst)) ;
         defparam ix27670z1328.INIT = 4'hE;
    LUT3 ix44945z1538 (.O (p_Vga_triosy_lz), .I0 (p_Src_rsc_singleport_icwt), .I1 (
         p_Src_rsc_singleport_tiswt0_0n0s2), .I2 (
         \p_Main_Trans_Ond_Opt_core_fsm_inst_fsm_output_1_0(42)  )) ;
         defparam ix44945z1538.INIT = 8'hE0;
    LUT4 ix27176z39282 (.O (nx27176z1), .I0 (p_start), .I1 (
         p_mgc_start_sync_mgc_bsync_vld_oswt), .I2 (
         p_mgc_start_sync_mgc_bsync_vld_icwt), .I3 (
         p_Src_rsc_singleport_tiswt0_0n0s2)) ;
         defparam ix27176z39282.INIT = 16'h9450;
    VCC reg_mgc_start_sync_mgc_bsync_vld_icwt_I22_FD_PWR (.P (nx4)) ;
    FDRE reg_mgc_start_sync_mgc_bsync_vld_icwt (.Q (
         p_mgc_start_sync_mgc_bsync_vld_icwt), .C (p_clk), .CE (nx4), .D (
         nx27176z1), .R (p_rst)) ;
    GND reg_Src_rsc_singleport_tiswt0_0n0s2_I24_FD_GND (.G (nx52)) ;
    FDRE reg_Src_rsc_singleport_tiswt0_0n0s2 (.Q (
         p_Src_rsc_singleport_tiswt0_0n0s2), .C (p_clk), .CE (nx4), .D (
         nx27670z1), .R (nx52)) ;
endmodule

