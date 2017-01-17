// ----------------------------------------------------------------------------
// SystemC Top Module
//
//    HLS version: 2011a.200 Production Release
//       HLS date: Mon Jun  2 22:10:04 PDT 2014
//  Flow Packages: HDL_Tcl 2008a.1, SCVerify 2009a.1
//
//   Generated by: xph3sle512@cimeld16
// Generated date: Tue Dec 13 10:28:16 CET 2016
//
// ----------------------------------------------------------------------------
//---------------------------------------------------
// scverify_top.cpp
//---------------------------------------------------

#include <iostream>
#include "scverify_top.h"
#include <mc_simulator_extensions.h>
// 
// -------------------------------------
// scverify_top
// top module instantiating reference design,
// DUT and comparator
// -------------------------------------
// 
#include <mt19937ar.c>


// ============================================
// Function: setup_debug
// --------------------------------------------

void scverify_top::setup_debug()
{
   #ifdef MC_DEFAULT_TRANSACTOR_LOG
      static int Src_flags = MC_DEFAULT_TRANSACTOR_LOG;
   #else
      static int Src_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
   #endif
      static int Src_count = -1;
   #ifdef MC_DEFAULT_TRANSACTOR_LOG
      static int Dst_flags = MC_DEFAULT_TRANSACTOR_LOG;
   #else
      static int Dst_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
   #endif
      static int Dst_count = -1;
   #ifdef MC_DEFAULT_TRANSACTOR_LOG
      static int Vga_flags = MC_DEFAULT_TRANSACTOR_LOG;
   #else
      static int Vga_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
   #endif
      static int Vga_count = -1;
   #ifdef MC_DEFAULT_TRANSACTOR_LOG
      static int nbLevels_flags = MC_DEFAULT_TRANSACTOR_LOG;
   #else
      static int nbLevels_flags = MC_TRANSACTOR_UNDERFLOW | MC_TRANSACTOR_WAIT;
   #endif
      static int nbLevels_count = -1;
   
      // At the breakpoint, modify the local variables
      // above to turn on/off different levels of transaction
      // logging for each variable. Available flags are:
      //   MC_TRANSACTOR_EMPTY       - log empty FIFOs (on by default)
      //   MC_TRANSACTOR_UNDERFLOW   - log FIFOs that run empty and then are loaded again (off)
      //   MC_TRANSACTOR_READ        - log all read events
      //   MC_TRANSACTOR_WRITE       - log all write events
      //   MC_TRANSACTOR_LOAD        - log all FIFO load events
      //   MC_TRANSACTOR_DUMP        - log all FIFO dump events
      //   MC_TRANSACTOR_STREAMCNT   - log all streamed port index counter events
      //   MC_TRANSACTOR_WAIT        - log user specified handshake waits
      //   MC_TRANSACTOR_SIZE        - log input FIFO size updates
   
      // In ModelSim, type ccs_extensions::ccs_opts to bring up a GUI to set these options
   
      debug("Src:271:Src",Src_flags,Src_count);
      debug("Dst:273:Dst",Dst_flags,Dst_count);
      debug("Vga:274:Vga",Vga_flags,Vga_count);
      debug("nbLevels:275:nbLevels",nbLevels_flags,nbLevels_count);
}
// ============================================
// Function: install_observe_foreign_signals
// --------------------------------------------

void scverify_top::install_observe_foreign_signals()
{
   #if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
   #if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
   #ifdef MTI_SYSTEMC
     OFS_Main_Trans_Ond_Opt_core_inst_core_wen.observe_foreign_signal("/scverify_top/rtl/Main_Trans_Ond_Opt_core_inst/core_wen");
     OFS_mgc_start_sync_mgc_bsync_vld_vd.observe_foreign_signal("/scverify_top/rtl/mgc_start_sync_mgc_bsync_vld_vd");
   #endif
   #ifdef VCS_SYSTEMC
   #if defined(CCS_DUT_VHDL)
   #include <hdl_connect_vhdl.h>
   #define HDL_CONNECT_FN hdl_connect_vhdl
   #else
   #if defined(CCS_DUT_VERILOG)
   #include <hdl_connect_v.h>
   #define HDL_CONNECT_FN hdl_connect_v
   #endif
   #endif
     HDL_CONNECT_FN(OFS_Main_Trans_Ond_Opt_core_inst_core_wen,"scverify_top.rtl.Main_Trans_Ond_Opt_core_inst.core_wen",HDL_INPUT,0);
     HDL_CONNECT_FN(OFS_mgc_start_sync_mgc_bsync_vld_vd,"scverify_top.rtl.mgc_start_sync_mgc_bsync_vld_vd",HDL_INPUT,0);
   #endif
   #ifdef NCSC
     OFS_Main_Trans_Ond_Opt_core_inst_core_wen.observe_foreign_signal("scverify_top.rtl.Main_Trans_Ond_Opt_core_inst.core_wen");
     OFS_mgc_start_sync_mgc_bsync_vld_vd.observe_foreign_signal("scverify_top.rtl.mgc_start_sync_mgc_bsync_vld_vd");
   #endif
   #endif
   #endif
}
// ============================================
// Function: debug
// --------------------------------------------

void scverify_top::debug(const char *varname, int flags, int count)
{
   sc_module *xlator_p = 0;
   sc_attr_base *debug_attr_p = 0;
   if (strcmp(varname,"Src:271:Src") == 0) {
      xlator_p = Src_transactor;
   }
   if (strcmp(varname,"Dst:273:Dst") == 0) {
      xlator_p = Dst_transactor;
   }
   if (strcmp(varname,"Vga:274:Vga") == 0) {
      xlator_p = Vga_transactor;
   }
   if (strcmp(varname,"nbLevels:275:nbLevels") == 0) {
      xlator_p = nbLevels_transactor;
   }
   if (xlator_p) {
      debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_EVENT");
      if (!debug_attr_p) {
         debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_EVENT",flags);
         xlator_p->add_attribute(*debug_attr_p);
      }
      ((sc_attribute<int>*)debug_attr_p)->value = flags;
   }
   if (count>=0) {
      debug_attr_p = xlator_p->get_attribute("MC_TRANSACTOR_COUNT");
      if (!debug_attr_p) {
         debug_attr_p = new sc_attribute<int>("MC_TRANSACTOR_COUNT",count);
         xlator_p->add_attribute(*debug_attr_p);
      }
      ((sc_attribute<int>*)debug_attr_p)->value = count;
   }
}
// ---------------------------------------------------------------
// Process: SC_METHOD deadlock_notify
// Static sensitivity: sensitive << deadlock_event;

void scverify_top::deadlock_notify() {
   if (deadlocked.read() == SC_LOGIC_1) {
      testbench_INST->check_results();
      SC_REPORT_ERROR("System","Simulation deadlock detected");
      sc_stop();
   }
}
// ---------------------------------------------------------------
// Process: SC_METHOD deadlock_watch
// Static sensitivity: sensitive  << OFS_Main_Trans_Ond_Opt_core_inst_core_wen << clk;

void scverify_top::deadlock_watch() {
   // DEADLOCK_WATCH
   #if !defined(CCS_DUT_SYSC) && defined(DEADLOCK_DETECTION)
   #if defined(CCS_DUT_CYCLE) || defined(CCS_DUT_RTL)
   #if defined(MTI_SYSTEMC) || defined(NCSC) || defined(VCS_SYSTEMC)
      if (! clk )
      {
         if (
            (OFS_Main_Trans_Ond_Opt_core_inst_core_wen.read() == SC_LOGIC_0) &&
            (OFS_mgc_start_sync_mgc_bsync_vld_vd.read() == SC_LOGIC_1)
         )
         {
            deadlocked.write(SC_LOGIC_1);
            deadlock_event.notify(350623714.32, SC_NS);
         } else {
            if (deadlocked.read() == SC_LOGIC_1) {
               deadlock_event.cancel();
            }
            deadlocked.write(SC_LOGIC_0);
         }
      }
   #endif
   #endif
   #endif
   // DEADLOCK_WATCH END
}
// ---------------------------------------------------------------
// Process: SC_METHOD generate_outsync
// Static sensitivity: sensitive << clk << catapult_done << rst;

void scverify_top::generate_outsync() {
   static int active_edge = 1;
   if (rst.read() == 1) {
      out_sync.write(SC_LOGIC_0);
      inout_sync.write(SC_LOGIC_0);
   } else {
      if ( clk.read() == active_edge ) {
         out_sync.write(catapult_done.read());
         inout_sync.write(catapult_done.read());
      }
   }
}
// ---------------------------------------------------------------
// Process: SC_METHOD generate_insync
// Static sensitivity: sensitive << clk << catapult_done << rst;

void scverify_top::generate_insync() {
   static int active_edge = 1;
   static bool ready_flag = false;
   static bool done_flag = true;
   static bool seen_first_ready_pulse = false;
   if (rst.read() == 1) {
      catapult_start.write(SC_LOGIC_0);
      in_sync.write(SC_LOGIC_0);
   } else {
      catapult_start.write(SC_LOGIC_1);
      if ( clk.read() == active_edge ) {
       if (!ready_flag && done_flag) {
         in_sync.write(catapult_done.read());
       } else {
         if (seen_first_ready_pulse) {
            in_sync.write(catapult_ready.read());
         }
         if (catapult_ready.read() == SC_LOGIC_1) {
            if (!seen_first_ready_pulse) {
               seen_first_ready_pulse = true;
            }
         }
       }
      }
   }
}
// ---------------------------------------------------------------
// Process: SC_METHOD generate_reset
// Static sensitivity: sensitive << reset_deactivation_event;

void scverify_top::generate_reset() {
      static bool first = true;
      if (first || sc_time_stamp() == SC_ZERO_TIME)
      {
         setup_debug();
         first = false;
         rst.write(SC_LOGIC_1);
         reset_deactivation_event.notify(166.68, SC_NS);
      } else {
         Src_transactor->reset_streams();
         Dst_transactor->reset_streams();
         Vga_transactor->reset_streams();
         nbLevels_transactor->reset_streams();
         rst.write(SC_LOGIC_0);
      }
   
}
#if defined(MC_SIMULATOR_OSCI) || defined(MC_SIMULATOR_VCS)
int sc_main(int argc, char *argv[])
{
   sc_report_handler::set_actions("/IEEE_Std_1666/deprecated", SC_DO_NOTHING);
   scverify_top scverify_top("scverify_top");
   sc_start();
   return scverify_top.testbench_INST->failed();
}
#else
MC_MODULE_EXPORT(scverify_top);
#endif
