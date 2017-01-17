
--------> ./rtl_funcs.vhd 
-----------------------------------------------------------------------
-- Package that declares synthesizable functions needed for RTL output
-----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

PACKAGE funcs IS

-----------------------------------------------------------------
-- utility functions
-----------------------------------------------------------------

   FUNCTION TO_STDLOGIC(arg1: BOOLEAN) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: STD_ULOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: STD_LOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGIC(arg1: SIGNED(0 DOWNTO 0)) RETURN STD_LOGIC;
   FUNCTION TO_STDLOGICVECTOR(arg1: STD_LOGIC) RETURN STD_LOGIC_VECTOR;

   FUNCTION maximum(arg1, arg2 : INTEGER) RETURN INTEGER;
   FUNCTION minimum(arg1, arg2 : INTEGER) RETURN INTEGER;
   FUNCTION ifeqsel(arg1, arg2, seleq, selne : INTEGER) RETURN INTEGER;
   FUNCTION resolve_std_logic_vector(input1: STD_LOGIC_VECTOR; input2 : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- logic functions
-----------------------------------------------------------------

   FUNCTION and_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION or_s (inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION xor_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC;

   FUNCTION and_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;
   FUNCTION or_v (inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;
   FUNCTION xor_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- mux functions
-----------------------------------------------------------------

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC       ) RETURN STD_LOGIC;
   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC       ) RETURN STD_LOGIC_VECTOR;
   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

   FUNCTION mux1hot_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC;
   FUNCTION mux1hot_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- latch functions
-----------------------------------------------------------------
   FUNCTION lat_s(dinput: STD_LOGIC       ; clk: STD_LOGIC; doutput: STD_LOGIC       ) RETURN STD_LOGIC;
   FUNCTION lat_v(dinput: STD_LOGIC_VECTOR; clk: STD_LOGIC; doutput: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- tristate functions
-----------------------------------------------------------------
--   FUNCTION tri_s(dinput: STD_LOGIC       ; control: STD_LOGIC) RETURN STD_LOGIC;
--   FUNCTION tri_v(dinput: STD_LOGIC_VECTOR; control: STD_LOGIC) RETURN STD_LOGIC_VECTOR;

-----------------------------------------------------------------
-- compare functions returning STD_LOGIC
-- in contrast to the functions returning boolean
-----------------------------------------------------------------

   FUNCTION "=" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "=" (l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "/="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "/="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "<="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "<="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION "<" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION "<" (l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION ">="(l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION ">="(l, r: SIGNED  ) RETURN STD_LOGIC;
   FUNCTION ">" (l, r: UNSIGNED) RETURN STD_LOGIC;
   FUNCTION ">" (l, r: SIGNED  ) RETURN STD_LOGIC;

   -- RETURN 2 bits (left => lt, right => eq)
   FUNCTION cmp (l, r: STD_LOGIC_VECTOR) RETURN STD_LOGIC;

-----------------------------------------------------------------
-- Vectorized Overloaded Arithmetic Operators
-----------------------------------------------------------------

   FUNCTION faccu(arg: UNSIGNED; width: NATURAL) RETURN UNSIGNED;

   FUNCTION fabs(arg1: SIGNED  ) RETURN UNSIGNED;

   FUNCTION "/"  (l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "MOD"(l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "REM"(l, r: UNSIGNED) RETURN UNSIGNED;
   FUNCTION "**" (l, r: UNSIGNED) RETURN UNSIGNED;

   FUNCTION "/"  (l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "MOD"(l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "REM"(l, r: SIGNED  ) RETURN SIGNED  ;
   FUNCTION "**" (l, r: SIGNED  ) RETURN SIGNED  ;

-----------------------------------------------------------------
--               S H I F T   F U C T I O N S
-- negative shift shifts the opposite direction
-- *_stdar functions use shift functions from std_logic_arith
-----------------------------------------------------------------

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION fshl(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshl(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION frot(arg1: STD_LOGIC_VECTOR; arg2: STD_LOGIC_VECTOR; signd2: BOOLEAN; sdir: INTEGER range -1 TO 1) RETURN STD_LOGIC_VECTOR;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR;

   -----------------------------------------------------------------
   -- *_stdar functions use shift functions from std_logic_arith
   -----------------------------------------------------------------
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED;

   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED  ;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED;

-----------------------------------------------------------------
-- indexing functions: LSB always has index 0
-----------------------------------------------------------------

   FUNCTION readindex(vec: STD_LOGIC_VECTOR; index: INTEGER                 ) RETURN STD_LOGIC;
   FUNCTION readslice(vec: STD_LOGIC_VECTOR; index: INTEGER; width: POSITIVE) RETURN STD_LOGIC_VECTOR;

   FUNCTION writeindex(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC       ; index: INTEGER) RETURN STD_LOGIC_VECTOR;
   FUNCTION n_bits(p: NATURAL) RETURN POSITIVE;
   --FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; index: INTEGER) RETURN STD_LOGIC_VECTOR;
   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; enable: STD_LOGIC_VECTOR; byte_width: INTEGER;  index: INTEGER) RETURN STD_LOGIC_VECTOR ;

   FUNCTION ceil_log2(size : NATURAL) return NATURAL;
   FUNCTION bits(size : NATURAL) return NATURAL;
END funcs;


--------------------------- B O D Y ----------------------------


PACKAGE BODY funcs IS

-----------------------------------------------------------------
-- utility functions
-----------------------------------------------------------------

   FUNCTION TO_STDLOGIC(arg1: BOOLEAN) RETURN STD_LOGIC IS
     BEGIN IF arg1 THEN RETURN '1'; ELSE RETURN '0'; END IF; END;
   FUNCTION TO_STDLOGIC(arg1: STD_ULOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: STD_LOGIC_VECTOR(0 DOWNTO 0)) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;
   FUNCTION TO_STDLOGIC(arg1: SIGNED(0 DOWNTO 0)) RETURN STD_LOGIC IS
     BEGIN RETURN arg1(0); END;

   FUNCTION TO_STDLOGICVECTOR(arg1: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS
     VARIABLE result: STD_LOGIC_VECTOR(0 DOWNTO 0);
   BEGIN
     result := (0 => arg1);
     RETURN result;
   END;

   FUNCTION maximum (arg1,arg2: INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 > arg2) THEN
       RETURN(arg1) ;
     ELSE
       RETURN(arg2) ;
     END IF;
   END;

   FUNCTION minimum (arg1,arg2: INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 < arg2) THEN
       RETURN(arg1) ;
     ELSE
       RETURN(arg2) ;
     END IF;
   END;

   FUNCTION ifeqsel(arg1, arg2, seleq, selne : INTEGER) RETURN INTEGER IS
   BEGIN
     IF(arg1 = arg2) THEN
       RETURN(seleq) ;
     ELSE
       RETURN(selne) ;
     END IF;
   END;

   FUNCTION resolve_std_logic_vector(input1: STD_LOGIC_VECTOR; input2: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len: INTEGER := input1'length;
     ALIAS input1a: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS input1;
     ALIAS input2a: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS input2;
     VARIABLE result: STD_LOGIC_VECTOR(len-1 DOWNTO 0) := (others=>'0');
   BEGIN
     result := (others => '0');
--pragma translate_off
     FOR i IN len-1 DOWNTO 0 LOOP
       result(i) := resolved(input1a(i) & input2a(i));
     END LOOP;
--pragma translate_on
     RETURN result;
   END;

   FUNCTION resolve_unsigned(input1: UNSIGNED; input2: UNSIGNED) RETURN UNSIGNED IS
   BEGIN RETURN UNSIGNED(resolve_std_logic_vector(STD_LOGIC_VECTOR(input1), STD_LOGIC_VECTOR(input2))); END;

   FUNCTION resolve_signed(input1: SIGNED; input2: SIGNED) RETURN SIGNED IS
   BEGIN RETURN SIGNED(resolve_std_logic_vector(STD_LOGIC_VECTOR(input1), STD_LOGIC_VECTOR(input2))); END;

-----------------------------------------------------------------
-- Logic Functions
-----------------------------------------------------------------

   FUNCTION "not"(arg1: UNSIGNED) RETURN UNSIGNED IS
     BEGIN RETURN UNSIGNED(not STD_LOGIC_VECTOR(arg1)); END;
   FUNCTION and_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(and_v(inputs, 1)); END;
   FUNCTION or_s (inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(or_v(inputs, 1)); END;
   FUNCTION xor_s(inputs: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
     BEGIN RETURN TO_STDLOGIC(xor_v(inputs, 1)); END;

   FUNCTION and_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'length;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'length/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
--pragma translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
--pragma translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     FOR i IN icnt2-1 DOWNTO 1 LOOP
       inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
       result := result AND inputsx(olenM1 DOWNTO 0);
     END LOOP;
     RETURN result;
   END;

   FUNCTION or_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'length;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'length/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
--pragma translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
--pragma translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     FOR i IN icnt2-1 DOWNTO 1 LOOP
       inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
       result := result OR inputsx(olenM1 DOWNTO 0);
     END LOOP;
     RETURN result;
   END;

   FUNCTION xor_v(inputs: STD_LOGIC_VECTOR; olen: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT ilen: POSITIVE := inputs'length;
     CONSTANT ilenM1: POSITIVE := ilen-1; --2.1.6.3
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT ilenMolenM1: INTEGER := ilen-olen-1; --2.1.6.3
     VARIABLE inputsx: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0);
     CONSTANT icnt2: POSITIVE:= inputs'length/olen;
     VARIABLE result: STD_LOGIC_VECTOR(olen-1 DOWNTO 0);
   BEGIN
--pragma translate_off
     ASSERT ilen REM olen = 0 SEVERITY FAILURE;
--pragma translate_on
     inputsx := inputs;
     result := inputsx(olenM1 DOWNTO 0);
     FOR i IN icnt2-1 DOWNTO 1 LOOP
       inputsx(ilenMolenM1 DOWNTO 0) := inputsx(ilenM1 DOWNTO olen);
       result := result XOR inputsx(olenM1 DOWNTO 0);
     END LOOP;
     RETURN result;
   END;

-----------------------------------------------------------------
-- Muxes
-----------------------------------------------------------------

   FUNCTION mux_sel2_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(1 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 4;
     ALIAS    inputs0: STD_LOGIC_VECTOR( inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector( size-1 DOWNTO 0):= (others=>'0') ;
   BEGIN
     -- synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "00" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "01" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "10" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "11" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN others =>
--pragma translate_off
       result := (others => '0');
--pragma translate_on
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_sel3_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(2 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 8;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0) := (others=>'0');
   BEGIN
     -- synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "001" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "010" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "011" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN "100" =>
       result := inputs0(5*size-1 DOWNTO 4*size);
     WHEN "101" =>
       result := inputs0(6*size-1 DOWNTO 5*size);
     WHEN "110" =>
       result := inputs0(7*size-1 DOWNTO 6*size);
     WHEN "111" =>
       result := inputs0(8*size-1 DOWNTO 7*size);
     WHEN others =>
--pragma translate_off
       result := (others => '0');
--pragma translate_on
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_sel4_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(3 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 16;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0) := (others => '0');
   BEGIN
     -- synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "0000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "0001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "0010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "0011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "0100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "0101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "0110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "0111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "1000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "1001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "1010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "1011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "1100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "1101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "1110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "1111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN others =>
--pragma translate_off
       result := (others => '0');
--pragma translate_on
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_sel5_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(4 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 32;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0 ):= (others=>'0');
   BEGIN
     -- synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "00000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "00001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "00010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "00011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "00100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "00101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "00110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "00111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "01000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "01001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "01010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "01011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "01100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "01101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "01110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "01111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN "10000" =>
       result := inputs0( 17*size-1 DOWNTO 16*size);
     WHEN "10001" =>
       result := inputs0( 18*size-1 DOWNTO 17*size);
     WHEN "10010" =>
       result := inputs0( 19*size-1 DOWNTO 18*size);
     WHEN "10011" =>
       result := inputs0( 20*size-1 DOWNTO 19*size);
     WHEN "10100" =>
       result := inputs0( 21*size-1 DOWNTO 20*size);
     WHEN "10101" =>
       result := inputs0( 22*size-1 DOWNTO 21*size);
     WHEN "10110" =>
       result := inputs0( 23*size-1 DOWNTO 22*size);
     WHEN "10111" =>
       result := inputs0( 24*size-1 DOWNTO 23*size);
     WHEN "11000" =>
       result := inputs0( 25*size-1 DOWNTO 24*size);
     WHEN "11001" =>
       result := inputs0( 26*size-1 DOWNTO 25*size);
     WHEN "11010" =>
       result := inputs0( 27*size-1 DOWNTO 26*size);
     WHEN "11011" =>
       result := inputs0( 28*size-1 DOWNTO 27*size);
     WHEN "11100" =>
       result := inputs0( 29*size-1 DOWNTO 28*size);
     WHEN "11101" =>
       result := inputs0( 30*size-1 DOWNTO 29*size);
     WHEN "11110" =>
       result := inputs0( 31*size-1 DOWNTO 30*size);
     WHEN "11111" =>
       result := inputs0( 32*size-1 DOWNTO 31*size);
     WHEN others =>
--pragma translate_off
       result := (others => '0');
--pragma translate_on
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_sel6_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(5 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 64;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0) := (others=>'0');
   BEGIN
     -- synthesis only
     -- simulation inconsistent with control values 'UXZHLWD'
     CASE sel IS
     WHEN "000000" =>
       result := inputs0( 1*size-1 DOWNTO 0*size);
     WHEN "000001" =>
       result := inputs0( 2*size-1 DOWNTO 1*size);
     WHEN "000010" =>
       result := inputs0( 3*size-1 DOWNTO 2*size);
     WHEN "000011" =>
       result := inputs0( 4*size-1 DOWNTO 3*size);
     WHEN "000100" =>
       result := inputs0( 5*size-1 DOWNTO 4*size);
     WHEN "000101" =>
       result := inputs0( 6*size-1 DOWNTO 5*size);
     WHEN "000110" =>
       result := inputs0( 7*size-1 DOWNTO 6*size);
     WHEN "000111" =>
       result := inputs0( 8*size-1 DOWNTO 7*size);
     WHEN "001000" =>
       result := inputs0( 9*size-1 DOWNTO 8*size);
     WHEN "001001" =>
       result := inputs0( 10*size-1 DOWNTO 9*size);
     WHEN "001010" =>
       result := inputs0( 11*size-1 DOWNTO 10*size);
     WHEN "001011" =>
       result := inputs0( 12*size-1 DOWNTO 11*size);
     WHEN "001100" =>
       result := inputs0( 13*size-1 DOWNTO 12*size);
     WHEN "001101" =>
       result := inputs0( 14*size-1 DOWNTO 13*size);
     WHEN "001110" =>
       result := inputs0( 15*size-1 DOWNTO 14*size);
     WHEN "001111" =>
       result := inputs0( 16*size-1 DOWNTO 15*size);
     WHEN "010000" =>
       result := inputs0( 17*size-1 DOWNTO 16*size);
     WHEN "010001" =>
       result := inputs0( 18*size-1 DOWNTO 17*size);
     WHEN "010010" =>
       result := inputs0( 19*size-1 DOWNTO 18*size);
     WHEN "010011" =>
       result := inputs0( 20*size-1 DOWNTO 19*size);
     WHEN "010100" =>
       result := inputs0( 21*size-1 DOWNTO 20*size);
     WHEN "010101" =>
       result := inputs0( 22*size-1 DOWNTO 21*size);
     WHEN "010110" =>
       result := inputs0( 23*size-1 DOWNTO 22*size);
     WHEN "010111" =>
       result := inputs0( 24*size-1 DOWNTO 23*size);
     WHEN "011000" =>
       result := inputs0( 25*size-1 DOWNTO 24*size);
     WHEN "011001" =>
       result := inputs0( 26*size-1 DOWNTO 25*size);
     WHEN "011010" =>
       result := inputs0( 27*size-1 DOWNTO 26*size);
     WHEN "011011" =>
       result := inputs0( 28*size-1 DOWNTO 27*size);
     WHEN "011100" =>
       result := inputs0( 29*size-1 DOWNTO 28*size);
     WHEN "011101" =>
       result := inputs0( 30*size-1 DOWNTO 29*size);
     WHEN "011110" =>
       result := inputs0( 31*size-1 DOWNTO 30*size);
     WHEN "011111" =>
       result := inputs0( 32*size-1 DOWNTO 31*size);
     WHEN "100000" =>
       result := inputs0( 33*size-1 DOWNTO 32*size);
     WHEN "100001" =>
       result := inputs0( 34*size-1 DOWNTO 33*size);
     WHEN "100010" =>
       result := inputs0( 35*size-1 DOWNTO 34*size);
     WHEN "100011" =>
       result := inputs0( 36*size-1 DOWNTO 35*size);
     WHEN "100100" =>
       result := inputs0( 37*size-1 DOWNTO 36*size);
     WHEN "100101" =>
       result := inputs0( 38*size-1 DOWNTO 37*size);
     WHEN "100110" =>
       result := inputs0( 39*size-1 DOWNTO 38*size);
     WHEN "100111" =>
       result := inputs0( 40*size-1 DOWNTO 39*size);
     WHEN "101000" =>
       result := inputs0( 41*size-1 DOWNTO 40*size);
     WHEN "101001" =>
       result := inputs0( 42*size-1 DOWNTO 41*size);
     WHEN "101010" =>
       result := inputs0( 43*size-1 DOWNTO 42*size);
     WHEN "101011" =>
       result := inputs0( 44*size-1 DOWNTO 43*size);
     WHEN "101100" =>
       result := inputs0( 45*size-1 DOWNTO 44*size);
     WHEN "101101" =>
       result := inputs0( 46*size-1 DOWNTO 45*size);
     WHEN "101110" =>
       result := inputs0( 47*size-1 DOWNTO 46*size);
     WHEN "101111" =>
       result := inputs0( 48*size-1 DOWNTO 47*size);
     WHEN "110000" =>
       result := inputs0( 49*size-1 DOWNTO 48*size);
     WHEN "110001" =>
       result := inputs0( 50*size-1 DOWNTO 49*size);
     WHEN "110010" =>
       result := inputs0( 51*size-1 DOWNTO 50*size);
     WHEN "110011" =>
       result := inputs0( 52*size-1 DOWNTO 51*size);
     WHEN "110100" =>
       result := inputs0( 53*size-1 DOWNTO 52*size);
     WHEN "110101" =>
       result := inputs0( 54*size-1 DOWNTO 53*size);
     WHEN "110110" =>
       result := inputs0( 55*size-1 DOWNTO 54*size);
     WHEN "110111" =>
       result := inputs0( 56*size-1 DOWNTO 55*size);
     WHEN "111000" =>
       result := inputs0( 57*size-1 DOWNTO 56*size);
     WHEN "111001" =>
       result := inputs0( 58*size-1 DOWNTO 57*size);
     WHEN "111010" =>
       result := inputs0( 59*size-1 DOWNTO 58*size);
     WHEN "111011" =>
       result := inputs0( 60*size-1 DOWNTO 59*size);
     WHEN "111100" =>
       result := inputs0( 61*size-1 DOWNTO 60*size);
     WHEN "111101" =>
       result := inputs0( 62*size-1 DOWNTO 61*size);
     WHEN "111110" =>
       result := inputs0( 63*size-1 DOWNTO 62*size);
     WHEN "111111" =>
       result := inputs0( 64*size-1 DOWNTO 63*size);
     WHEN others =>
--pragma translate_off
       result := (others => '0');
--pragma translate_on
     END CASE;
     RETURN result;
   END;

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC) RETURN STD_LOGIC IS
   BEGIN RETURN TO_STDLOGIC(mux_v(inputs, sel)); END;

   FUNCTION mux_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
   BEGIN RETURN TO_STDLOGIC(mux_v(inputs, sel)); END;

   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS  --pragma hls_map_to_operator mux
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     CONSTANT size   : POSITIVE := inputs'length / 2;
     CONSTANT olen   : POSITIVE := inputs'length / 2;
     VARIABLE result : STD_LOGIC_VECTOR(olen-1 DOWNTO 0) := (others=>'0');
   BEGIN
--pragma translate_off
     ASSERT inputs'length = olen * 2 SEVERITY FAILURE;
--pragma translate_on
       CASE sel IS
       WHEN '1' | 'H' =>
         result := inputs0( size-1 DOWNTO 0);
       WHEN '0' | 'L' =>
         result := inputs0(2*size-1  DOWNTO size);
       WHEN others =>
--pragma translate_off
         result := resolve_std_logic_vector(inputs0(size-1 DOWNTO 0), inputs0( 2*size-1 DOWNTO size));
--pragma translate_on
       END CASE;
       RETURN result;
   END;
--   BEGIN RETURN mux_v(inputs, TO_STDLOGICVECTOR(sel)); END;

   FUNCTION mux_v(inputs: STD_LOGIC_VECTOR; sel : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS --pragma hls_map_to_operator mux
     ALIAS    inputs0: STD_LOGIC_VECTOR( inputs'length-1 DOWNTO 0) IS inputs;
     ALIAS    sel0   : STD_LOGIC_VECTOR( sel'length-1 DOWNTO 0 ) IS sel;

     VARIABLE sellen : INTEGER RANGE 2-sel'length TO sel'length;
     CONSTANT size   : POSITIVE := inputs'length / 2;
     CONSTANT olen   : POSITIVE := inputs'length / 2**sel'length;
     VARIABLE result : STD_LOGIC_VECTOR(olen-1 DOWNTO 0):= (others=>'0');
     TYPE inputs_array_type is array(natural range <>) of std_logic_vector( olen - 1 DOWNTO 0);
     VARIABLE inputs_array : inputs_array_type( 2**sel'length - 1 DOWNTO 0);
   BEGIN
     sellen := sel'length;
--pragma translate_off
     ASSERT inputs'length = olen * 2**sellen SEVERITY FAILURE;
     sellen := 2-sellen;
--pragma translate_on
     CASE sellen IS
     WHEN 1 =>
       CASE sel0(0) IS

       WHEN '1' | 'H' =>
         result := inputs0(  size-1 DOWNTO 0);
       WHEN '0' | 'L' =>
         result := inputs0(2*size-1 DOWNTO size);
       WHEN others =>
--pragma translate_off
         result := resolve_std_logic_vector(inputs0( size-1 DOWNTO 0), inputs0( 2*size-1 DOWNTO size));
--pragma translate_on
       END CASE;
     WHEN 2 =>
       result := mux_sel2_v(inputs, not sel);
     WHEN 3 =>
       result := mux_sel3_v(inputs, not sel);
     WHEN 4 =>
       result := mux_sel4_v(inputs, not sel);
     WHEN 5 =>
       result := mux_sel5_v(inputs, not sel);
     WHEN 6 =>
       result := mux_sel6_v(inputs, not sel);
     WHEN others =>
-- pragma translate_off
       IF(Is_X(sel0)) THEN
         result := (others => '0');
       ELSE
-- pragma translate_on
         FOR i in 0 to 2**sel'length - 1 LOOP
           inputs_array(i) := inputs0( ((i + 1) * olen) - 1  DOWNTO i*olen);
         END LOOP;
         result := inputs_array(CONV_INTEGER( (UNSIGNED(NOT sel0)) ));
-- pragma translate_off
       END IF;
-- pragma translate_on
     END CASE;
     RETURN result;
   END;

-----------------------------------------------------------------
-- 1-hot Multipexors
-----------------------------------------------------------------

   FUNCTION mux1hot_sel4_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(3 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 4;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0) := (others=>'0');
   BEGIN
     -- synthesis only
     -- simulation inconsistent with input values 'UXZHLWD'
     CASE sel IS
     WHEN "1000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "0100" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "0010" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "0001" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN others =>
       result := (others => '0');
     END CASE;
     RETURN result;
   END;

   FUNCTION mux1hot_sel16_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(15 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 16;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     -- synthesis only
     -- simulation inconsistent with input values 'UXZHLWD'
     CASE sel IS
     WHEN "1000000000000000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "0100000000000000" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "0010000000000000" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "0001000000000000" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN "0000100000000000" =>
       result := inputs0(5*size-1 DOWNTO 4*size);
     WHEN "0000010000000000" =>
       result := inputs0(6*size-1 DOWNTO 5*size);
     WHEN "0000001000000000" =>
       result := inputs0(7*size-1 DOWNTO 6*size);
     WHEN "0000000100000000" =>
       result := inputs0(8*size-1 DOWNTO 7*size);
     WHEN "0000000010000000" =>
       result := inputs0(9*size-1 DOWNTO 8*size);
     WHEN "0000000001000000" =>
       result := inputs0(10*size-1 DOWNTO 9*size);
     WHEN "0000000000100000" =>
       result := inputs0(11*size-1 DOWNTO 10*size);
     WHEN "0000000000010000" =>
       result := inputs0(12*size-1 DOWNTO 11*size);
     WHEN "0000000000001000" =>
       result := inputs0(13*size-1 DOWNTO 12*size);
     WHEN "0000000000000100" =>
       result := inputs0(14*size-1 DOWNTO 13*size);
     WHEN "0000000000000010" =>
       result := inputs0(15*size-1 DOWNTO 14*size);
     WHEN "0000000000000001" =>
       result := inputs0(16*size-1 DOWNTO 15*size);
     WHEN others =>
       result := (others => '0');
     END CASE;
     RETURN result;
   END;

   FUNCTION mux1hot_sel64_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(63 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 64;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     -- synthesis only
     -- simulation inconsistent with input values 'UXZHLWD'
     CASE sel IS
     WHEN "1000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "0100000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "0010000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "0001000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN "0000100000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(5*size-1 DOWNTO 4*size);
     WHEN "0000010000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(6*size-1 DOWNTO 5*size);
     WHEN "0000001000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(7*size-1 DOWNTO 6*size);
     WHEN "0000000100000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(8*size-1 DOWNTO 7*size);
     WHEN "0000000010000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(9*size-1 DOWNTO 8*size);
     WHEN "0000000001000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(10*size-1 DOWNTO 9*size);
     WHEN "0000000000100000000000000000000000000000000000000000000000000000" =>
       result := inputs0(11*size-1 DOWNTO 10*size);
     WHEN "0000000000010000000000000000000000000000000000000000000000000000" =>
       result := inputs0(12*size-1 DOWNTO 11*size);
     WHEN "0000000000001000000000000000000000000000000000000000000000000000" =>
       result := inputs0(13*size-1 DOWNTO 12*size);
     WHEN "0000000000000100000000000000000000000000000000000000000000000000" =>
       result := inputs0(14*size-1 DOWNTO 13*size);
     WHEN "0000000000000010000000000000000000000000000000000000000000000000" =>
       result := inputs0(15*size-1 DOWNTO 14*size);
     WHEN "0000000000000001000000000000000000000000000000000000000000000000" =>
       result := inputs0(16*size-1 DOWNTO 15*size);
     WHEN "0000000000000000100000000000000000000000000000000000000000000000" =>
       result := inputs0(17*size-1 DOWNTO 16*size);
     WHEN "0000000000000000010000000000000000000000000000000000000000000000" =>
       result := inputs0(18*size-1 DOWNTO 17*size);
     WHEN "0000000000000000001000000000000000000000000000000000000000000000" =>
       result := inputs0(19*size-1 DOWNTO 18*size);
     WHEN "0000000000000000000100000000000000000000000000000000000000000000" =>
       result := inputs0(20*size-1 DOWNTO 19*size);
     WHEN "0000000000000000000010000000000000000000000000000000000000000000" =>
       result := inputs0(21*size-1 DOWNTO 20*size);
     WHEN "0000000000000000000001000000000000000000000000000000000000000000" =>
       result := inputs0(22*size-1 DOWNTO 21*size);
     WHEN "0000000000000000000000100000000000000000000000000000000000000000" =>
       result := inputs0(23*size-1 DOWNTO 22*size);
     WHEN "0000000000000000000000010000000000000000000000000000000000000000" =>
       result := inputs0(24*size-1 DOWNTO 23*size);
     WHEN "0000000000000000000000001000000000000000000000000000000000000000" =>
       result := inputs0(25*size-1 DOWNTO 24*size);
     WHEN "0000000000000000000000000100000000000000000000000000000000000000" =>
       result := inputs0(26*size-1 DOWNTO 25*size);
     WHEN "0000000000000000000000000010000000000000000000000000000000000000" =>
       result := inputs0(27*size-1 DOWNTO 26*size);
     WHEN "0000000000000000000000000001000000000000000000000000000000000000" =>
       result := inputs0(28*size-1 DOWNTO 27*size);
     WHEN "0000000000000000000000000000100000000000000000000000000000000000" =>
       result := inputs0(29*size-1 DOWNTO 28*size);
     WHEN "0000000000000000000000000000010000000000000000000000000000000000" =>
       result := inputs0(30*size-1 DOWNTO 29*size);
     WHEN "0000000000000000000000000000001000000000000000000000000000000000" =>
       result := inputs0(31*size-1 DOWNTO 30*size);
     WHEN "0000000000000000000000000000000100000000000000000000000000000000" =>
       result := inputs0(32*size-1 DOWNTO 31*size);
     WHEN "0000000000000000000000000000000010000000000000000000000000000000" =>
       result := inputs0(33*size-1 DOWNTO 32*size);
     WHEN "0000000000000000000000000000000001000000000000000000000000000000" =>
       result := inputs0(34*size-1 DOWNTO 33*size);
     WHEN "0000000000000000000000000000000000100000000000000000000000000000" =>
       result := inputs0(35*size-1 DOWNTO 34*size);
     WHEN "0000000000000000000000000000000000010000000000000000000000000000" =>
       result := inputs0(36*size-1 DOWNTO 35*size);
     WHEN "0000000000000000000000000000000000001000000000000000000000000000" =>
       result := inputs0(37*size-1 DOWNTO 36*size);
     WHEN "0000000000000000000000000000000000000100000000000000000000000000" =>
       result := inputs0(38*size-1 DOWNTO 37*size);
     WHEN "0000000000000000000000000000000000000010000000000000000000000000" =>
       result := inputs0(39*size-1 DOWNTO 38*size);
     WHEN "0000000000000000000000000000000000000001000000000000000000000000" =>
       result := inputs0(40*size-1 DOWNTO 39*size);
     WHEN "0000000000000000000000000000000000000000100000000000000000000000" =>
       result := inputs0(41*size-1 DOWNTO 40*size);
     WHEN "0000000000000000000000000000000000000000010000000000000000000000" =>
       result := inputs0(42*size-1 DOWNTO 41*size);
     WHEN "0000000000000000000000000000000000000000001000000000000000000000" =>
       result := inputs0(43*size-1 DOWNTO 42*size);
     WHEN "0000000000000000000000000000000000000000000100000000000000000000" =>
       result := inputs0(44*size-1 DOWNTO 43*size);
     WHEN "0000000000000000000000000000000000000000000010000000000000000000" =>
       result := inputs0(45*size-1 DOWNTO 44*size);
     WHEN "0000000000000000000000000000000000000000000001000000000000000000" =>
       result := inputs0(46*size-1 DOWNTO 45*size);
     WHEN "0000000000000000000000000000000000000000000000100000000000000000" =>
       result := inputs0(47*size-1 DOWNTO 46*size);
     WHEN "0000000000000000000000000000000000000000000000010000000000000000" =>
       result := inputs0(48*size-1 DOWNTO 47*size);
     WHEN "0000000000000000000000000000000000000000000000001000000000000000" =>
       result := inputs0(49*size-1 DOWNTO 48*size);
     WHEN "0000000000000000000000000000000000000000000000000100000000000000" =>
       result := inputs0(50*size-1 DOWNTO 49*size);
     WHEN "0000000000000000000000000000000000000000000000000010000000000000" =>
       result := inputs0(51*size-1 DOWNTO 50*size);
     WHEN "0000000000000000000000000000000000000000000000000001000000000000" =>
       result := inputs0(52*size-1 DOWNTO 51*size);
     WHEN "0000000000000000000000000000000000000000000000000000100000000000" =>
       result := inputs0(53*size-1 DOWNTO 52*size);
     WHEN "0000000000000000000000000000000000000000000000000000010000000000" =>
       result := inputs0(54*size-1 DOWNTO 53*size);
     WHEN "0000000000000000000000000000000000000000000000000000001000000000" =>
       result := inputs0(55*size-1 DOWNTO 54*size);
     WHEN "0000000000000000000000000000000000000000000000000000000100000000" =>
       result := inputs0(56*size-1 DOWNTO 55*size);
     WHEN "0000000000000000000000000000000000000000000000000000000010000000" =>
       result := inputs0(57*size-1 DOWNTO 56*size);
     WHEN "0000000000000000000000000000000000000000000000000000000001000000" =>
       result := inputs0(58*size-1 DOWNTO 57*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000100000" =>
       result := inputs0(59*size-1 DOWNTO 58*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000010000" =>
       result := inputs0(60*size-1 DOWNTO 59*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000001000" =>
       result := inputs0(61*size-1 DOWNTO 60*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000100" =>
       result := inputs0(62*size-1 DOWNTO 61*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000010" =>
       result := inputs0(63*size-1 DOWNTO 62*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000001" =>
       result := inputs0(64*size-1 DOWNTO 63*size);
     WHEN others =>
       result := (others => '0');
     END CASE;
     RETURN result;
   END;


   FUNCTION mux1hot_sel256_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR(255 DOWNTO 0))
   RETURN STD_LOGIC_VECTOR IS
     CONSTANT size   : POSITIVE := inputs'length / 256;
     ALIAS    inputs0: STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     VARIABLE result : STD_LOGIC_Vector(size-1 DOWNTO 0);
   BEGIN
     CASE sel IS
     WHEN "1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(1*size-1 DOWNTO 0*size);
     WHEN "0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(2*size-1 DOWNTO 1*size);
     WHEN "0010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(3*size-1 DOWNTO 2*size);
     WHEN "0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(4*size-1 DOWNTO 3*size);
     WHEN "0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(5*size-1 DOWNTO 4*size);
     WHEN "0000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(6*size-1 DOWNTO 5*size);
     WHEN "0000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(7*size-1 DOWNTO 6*size);
     WHEN "0000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(8*size-1 DOWNTO 7*size);
     WHEN "0000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(9*size-1 DOWNTO 8*size);
     WHEN "0000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(10*size-1 DOWNTO 9*size);
     WHEN "0000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(11*size-1 DOWNTO 10*size);
     WHEN "0000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(12*size-1 DOWNTO 11*size);
     WHEN "0000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(13*size-1 DOWNTO 12*size);
     WHEN "0000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(14*size-1 DOWNTO 13*size);
     WHEN "0000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(15*size-1 DOWNTO 14*size);
     WHEN "0000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(16*size-1 DOWNTO 15*size);
     WHEN "0000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(17*size-1 DOWNTO 16*size);
     WHEN "0000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(18*size-1 DOWNTO 17*size);
     WHEN "0000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(19*size-1 DOWNTO 18*size);
     WHEN "0000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(20*size-1 DOWNTO 19*size);
     WHEN "0000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(21*size-1 DOWNTO 20*size);
     WHEN "0000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(22*size-1 DOWNTO 21*size);
     WHEN "0000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(23*size-1 DOWNTO 22*size);
     WHEN "0000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(24*size-1 DOWNTO 23*size);
     WHEN "0000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(25*size-1 DOWNTO 24*size);
     WHEN "0000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(26*size-1 DOWNTO 25*size);
     WHEN "0000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(27*size-1 DOWNTO 26*size);
     WHEN "0000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(28*size-1 DOWNTO 27*size);
     WHEN "0000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(29*size-1 DOWNTO 28*size);
     WHEN "0000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(30*size-1 DOWNTO 29*size);
     WHEN "0000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(31*size-1 DOWNTO 30*size);
     WHEN "0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(32*size-1 DOWNTO 31*size);
     WHEN "0000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(33*size-1 DOWNTO 32*size);
     WHEN "0000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(34*size-1 DOWNTO 33*size);
     WHEN "0000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(35*size-1 DOWNTO 34*size);
     WHEN "0000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(36*size-1 DOWNTO 35*size);
     WHEN "0000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(37*size-1 DOWNTO 36*size);
     WHEN "0000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(38*size-1 DOWNTO 37*size);
     WHEN "0000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(39*size-1 DOWNTO 38*size);
     WHEN "0000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(40*size-1 DOWNTO 39*size);
     WHEN "0000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(41*size-1 DOWNTO 40*size);
     WHEN "0000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(42*size-1 DOWNTO 41*size);
     WHEN "0000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(43*size-1 DOWNTO 42*size);
     WHEN "0000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(44*size-1 DOWNTO 43*size);
     WHEN "0000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(45*size-1 DOWNTO 44*size);
     WHEN "0000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(46*size-1 DOWNTO 45*size);
     WHEN "0000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(47*size-1 DOWNTO 46*size);
     WHEN "0000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(48*size-1 DOWNTO 47*size);
     WHEN "0000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(49*size-1 DOWNTO 48*size);
     WHEN "0000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(50*size-1 DOWNTO 49*size);
     WHEN "0000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(51*size-1 DOWNTO 50*size);
     WHEN "0000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(52*size-1 DOWNTO 51*size);
     WHEN "0000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(53*size-1 DOWNTO 52*size);
     WHEN "0000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(54*size-1 DOWNTO 53*size);
     WHEN "0000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(55*size-1 DOWNTO 54*size);
     WHEN "0000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(56*size-1 DOWNTO 55*size);
     WHEN "0000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(57*size-1 DOWNTO 56*size);
     WHEN "0000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(58*size-1 DOWNTO 57*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(59*size-1 DOWNTO 58*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(60*size-1 DOWNTO 59*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(61*size-1 DOWNTO 60*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(62*size-1 DOWNTO 61*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(63*size-1 DOWNTO 62*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(64*size-1 DOWNTO 63*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(65*size-1 DOWNTO 64*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(66*size-1 DOWNTO 65*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(67*size-1 DOWNTO 66*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(68*size-1 DOWNTO 67*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(69*size-1 DOWNTO 68*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(70*size-1 DOWNTO 69*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(71*size-1 DOWNTO 70*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(72*size-1 DOWNTO 71*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(73*size-1 DOWNTO 72*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(74*size-1 DOWNTO 73*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(75*size-1 DOWNTO 74*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(76*size-1 DOWNTO 75*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(77*size-1 DOWNTO 76*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(78*size-1 DOWNTO 77*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(79*size-1 DOWNTO 78*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(80*size-1 DOWNTO 79*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(81*size-1 DOWNTO 80*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(82*size-1 DOWNTO 81*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(83*size-1 DOWNTO 82*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(84*size-1 DOWNTO 83*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(85*size-1 DOWNTO 84*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(86*size-1 DOWNTO 85*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(87*size-1 DOWNTO 86*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(88*size-1 DOWNTO 87*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(89*size-1 DOWNTO 88*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(90*size-1 DOWNTO 89*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(91*size-1 DOWNTO 90*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(92*size-1 DOWNTO 91*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(93*size-1 DOWNTO 92*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(94*size-1 DOWNTO 93*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(95*size-1 DOWNTO 94*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(96*size-1 DOWNTO 95*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(97*size-1 DOWNTO 96*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(98*size-1 DOWNTO 97*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(99*size-1 DOWNTO 98*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(100*size-1 DOWNTO 99*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(101*size-1 DOWNTO 100*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(102*size-1 DOWNTO 101*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(103*size-1 DOWNTO 102*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(104*size-1 DOWNTO 103*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(105*size-1 DOWNTO 104*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(106*size-1 DOWNTO 105*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(107*size-1 DOWNTO 106*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(108*size-1 DOWNTO 107*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(109*size-1 DOWNTO 108*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(110*size-1 DOWNTO 109*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(111*size-1 DOWNTO 110*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(112*size-1 DOWNTO 111*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(113*size-1 DOWNTO 112*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(114*size-1 DOWNTO 113*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(115*size-1 DOWNTO 114*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(116*size-1 DOWNTO 115*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(117*size-1 DOWNTO 116*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(118*size-1 DOWNTO 117*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(119*size-1 DOWNTO 118*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(120*size-1 DOWNTO 119*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(121*size-1 DOWNTO 120*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(122*size-1 DOWNTO 121*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(123*size-1 DOWNTO 122*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(124*size-1 DOWNTO 123*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(125*size-1 DOWNTO 124*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(126*size-1 DOWNTO 125*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(127*size-1 DOWNTO 126*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(128*size-1 DOWNTO 127*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(129*size-1 DOWNTO 128*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(130*size-1 DOWNTO 129*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(131*size-1 DOWNTO 130*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(132*size-1 DOWNTO 131*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(133*size-1 DOWNTO 132*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(134*size-1 DOWNTO 133*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(135*size-1 DOWNTO 134*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(136*size-1 DOWNTO 135*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(137*size-1 DOWNTO 136*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(138*size-1 DOWNTO 137*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(139*size-1 DOWNTO 138*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(140*size-1 DOWNTO 139*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(141*size-1 DOWNTO 140*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(142*size-1 DOWNTO 141*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(143*size-1 DOWNTO 142*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(144*size-1 DOWNTO 143*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(145*size-1 DOWNTO 144*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(146*size-1 DOWNTO 145*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(147*size-1 DOWNTO 146*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(148*size-1 DOWNTO 147*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(149*size-1 DOWNTO 148*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(150*size-1 DOWNTO 149*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(151*size-1 DOWNTO 150*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(152*size-1 DOWNTO 151*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(153*size-1 DOWNTO 152*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(154*size-1 DOWNTO 153*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(155*size-1 DOWNTO 154*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(156*size-1 DOWNTO 155*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(157*size-1 DOWNTO 156*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(158*size-1 DOWNTO 157*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(159*size-1 DOWNTO 158*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(160*size-1 DOWNTO 159*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(161*size-1 DOWNTO 160*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(162*size-1 DOWNTO 161*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(163*size-1 DOWNTO 162*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(164*size-1 DOWNTO 163*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(165*size-1 DOWNTO 164*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(166*size-1 DOWNTO 165*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(167*size-1 DOWNTO 166*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(168*size-1 DOWNTO 167*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(169*size-1 DOWNTO 168*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(170*size-1 DOWNTO 169*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(171*size-1 DOWNTO 170*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(172*size-1 DOWNTO 171*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(173*size-1 DOWNTO 172*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(174*size-1 DOWNTO 173*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(175*size-1 DOWNTO 174*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(176*size-1 DOWNTO 175*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(177*size-1 DOWNTO 176*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(178*size-1 DOWNTO 177*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(179*size-1 DOWNTO 178*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(180*size-1 DOWNTO 179*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(181*size-1 DOWNTO 180*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(182*size-1 DOWNTO 181*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(183*size-1 DOWNTO 182*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(184*size-1 DOWNTO 183*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(185*size-1 DOWNTO 184*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(186*size-1 DOWNTO 185*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(187*size-1 DOWNTO 186*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(188*size-1 DOWNTO 187*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(189*size-1 DOWNTO 188*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(190*size-1 DOWNTO 189*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(191*size-1 DOWNTO 190*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(192*size-1 DOWNTO 191*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(193*size-1 DOWNTO 192*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(194*size-1 DOWNTO 193*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(195*size-1 DOWNTO 194*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(196*size-1 DOWNTO 195*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(197*size-1 DOWNTO 196*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(198*size-1 DOWNTO 197*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(199*size-1 DOWNTO 198*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(200*size-1 DOWNTO 199*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(201*size-1 DOWNTO 200*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000" =>
       result := inputs0(202*size-1 DOWNTO 201*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000" =>
       result := inputs0(203*size-1 DOWNTO 202*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000" =>
       result := inputs0(204*size-1 DOWNTO 203*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000" =>
       result := inputs0(205*size-1 DOWNTO 204*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000" =>
       result := inputs0(206*size-1 DOWNTO 205*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000" =>
       result := inputs0(207*size-1 DOWNTO 206*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000" =>
       result := inputs0(208*size-1 DOWNTO 207*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000" =>
       result := inputs0(209*size-1 DOWNTO 208*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000" =>
       result := inputs0(210*size-1 DOWNTO 209*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000" =>
       result := inputs0(211*size-1 DOWNTO 210*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000" =>
       result := inputs0(212*size-1 DOWNTO 211*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000" =>
       result := inputs0(213*size-1 DOWNTO 212*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000" =>
       result := inputs0(214*size-1 DOWNTO 213*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000" =>
       result := inputs0(215*size-1 DOWNTO 214*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000" =>
       result := inputs0(216*size-1 DOWNTO 215*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000" =>
       result := inputs0(217*size-1 DOWNTO 216*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000" =>
       result := inputs0(218*size-1 DOWNTO 217*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000" =>
       result := inputs0(219*size-1 DOWNTO 218*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000" =>
       result := inputs0(220*size-1 DOWNTO 219*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000" =>
       result := inputs0(221*size-1 DOWNTO 220*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000" =>
       result := inputs0(222*size-1 DOWNTO 221*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000" =>
       result := inputs0(223*size-1 DOWNTO 222*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000" =>
       result := inputs0(224*size-1 DOWNTO 223*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000" =>
       result := inputs0(225*size-1 DOWNTO 224*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000" =>
       result := inputs0(226*size-1 DOWNTO 225*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000" =>
       result := inputs0(227*size-1 DOWNTO 226*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000" =>
       result := inputs0(228*size-1 DOWNTO 227*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000" =>
       result := inputs0(229*size-1 DOWNTO 228*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000" =>
       result := inputs0(230*size-1 DOWNTO 229*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000" =>
       result := inputs0(231*size-1 DOWNTO 230*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000" =>
       result := inputs0(232*size-1 DOWNTO 231*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000" =>
       result := inputs0(233*size-1 DOWNTO 232*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000" =>
       result := inputs0(234*size-1 DOWNTO 233*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000" =>
       result := inputs0(235*size-1 DOWNTO 234*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000" =>
       result := inputs0(236*size-1 DOWNTO 235*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000" =>
       result := inputs0(237*size-1 DOWNTO 236*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000" =>
       result := inputs0(238*size-1 DOWNTO 237*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000" =>
       result := inputs0(239*size-1 DOWNTO 238*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000" =>
       result := inputs0(240*size-1 DOWNTO 239*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000" =>
       result := inputs0(241*size-1 DOWNTO 240*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000" =>
       result := inputs0(242*size-1 DOWNTO 241*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000" =>
       result := inputs0(243*size-1 DOWNTO 242*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000" =>
       result := inputs0(244*size-1 DOWNTO 243*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000" =>
       result := inputs0(245*size-1 DOWNTO 244*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000" =>
       result := inputs0(246*size-1 DOWNTO 245*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000" =>
       result := inputs0(247*size-1 DOWNTO 246*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000" =>
       result := inputs0(248*size-1 DOWNTO 247*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000" =>
       result := inputs0(249*size-1 DOWNTO 248*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000" =>
       result := inputs0(250*size-1 DOWNTO 249*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000" =>
       result := inputs0(251*size-1 DOWNTO 250*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000" =>
       result := inputs0(252*size-1 DOWNTO 251*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000" =>
       result := inputs0(253*size-1 DOWNTO 252*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100" =>
       result := inputs0(254*size-1 DOWNTO 253*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010" =>
       result := inputs0(255*size-1 DOWNTO 254*size);
     WHEN "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001" =>
       result := inputs0(256*size-1 DOWNTO 255*size);
     WHEN others =>
       result := (others => '0');
     END CASE;
     RETURN result;
   END;




   FUNCTION mux1hot_s(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
   BEGIN RETURN TO_STDLOGIC(mux1hot_v(inputs, sel)); END;

   FUNCTION mux1hot_v(inputs: STD_LOGIC_VECTOR; sel: STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS --pragma hls_map_to_operator mux1h
     CONSTANT size       : POSITIVE := inputs'length / sel'length;
     CONSTANT sellen2    : NATURAL := sel'length / 2;
     ALIAS    inputs0    : STD_LOGIC_VECTOR(inputs'length-1 DOWNTO 0) IS inputs;
     ALIAS    sel0       : STD_LOGIC_VECTOR(sel'length-1 DOWNTO 0) IS sel;
     CONSTANT max_ext    : POSITIVE := 256;
     VARIABLE sellen     : NATURAL;
     VARIABLE inputs_ext : STD_LOGIC_VECTOR(max_ext*size-1 DOWNTO 0);
     VARIABLE sel_ext    : STD_LOGIC_VECTOR(max_ext-1 DOWNTO 0);
     VARIABLE result     : STD_LOGIC_VECTOR(size-1 DOWNTO 0);
     VARIABLE assigned   : BOOLEAN := FALSE;
     VARIABLE cmpval     : STD_LOGIC_VECTOR(sel'length-1 DOWNTO 0);
   BEGIN
     sellen := sel'length;
--pragma translate_off
     ASSERT inputs'length = sel'length * size SEVERITY FAILURE;
     sellen := max_ext + 1;
--pragma translate_on
     IF sellen2 = 0 THEN
       result := inputs;
     ELSIF sellen <= max_ext THEN
       inputs_ext(inputs'length-1 DOWNTO 0) := inputs;
       sel_ext := (others => '0');
       sel_ext(sel'length-1 DOWNTO 0) := sel;
       IF sel'length <= 4 THEN
         result := mux1hot_sel4_v(inputs_ext(4*size-1 DOWNTO 0), sel_ext(3 DOWNTO 0));
       ELSIF sel'length <= 16 THEN
         result := mux1hot_sel16_v(inputs_ext(16*size-1 DOWNTO 0), sel_ext(15 DOWNTO 0));
       ELSIF sel'length <= 64 THEN
         result := mux1hot_sel64_v(inputs_ext(64*size-1 DOWNTO 0), sel_ext(63 DOWNTO 0));
       ELSE
         result := mux1hot_sel256_v(inputs_ext(256*size-1 DOWNTO 0), sel_ext(255 DOWNTO 0));
       END IF;
     ELSE
       -- Please be careful about placing the translate_off/on directives
       -- The following code till the translate_off directive IS required for
       -- synthesis of 1hot muxes with control width > 256
       result := (others => '0');
       FOR i in 0 to sel'length - 1 LOOP
         cmpval := (others => '0');
         cmpval(i) := '1';
	 IF ( sel0 = cmpval ) THEN
	   result := inputs0( (i + 1)*size-1 DOWNTO i*size );
	   assigned := TRUE;
	 END IF;
       END LOOP;
-- pragma translate_off
       IF NOT assigned THEN -- Strictly for simulation purpose
         result := (others => 'Z');
         FOR i IN 0 to sel'length - 1 LOOP
           IF sel0(i) = '1' THEN
             result := resolve_std_logic_vector(result, inputs0( ((i+1)*size-1) DOWNTO i*size ));
             assigned := TRUE;
           END IF;
         END LOOP;
         IF NOT assigned THEN
           result := (others => '0');
         END IF;
       END IF;
-- pragma translate_on
     END IF;
     RETURN result;
   END;

-----------------------------------------------------------------
-- Latches
-----------------------------------------------------------------

   FUNCTION lat_s(dinput: STD_LOGIC; clk: STD_LOGIC; doutput: STD_LOGIC) RETURN STD_LOGIC IS
   BEGIN RETURN mux_s(STD_LOGIC_VECTOR'(doutput & dinput), clk); END;

   FUNCTION lat_v(dinput: STD_LOGIC_VECTOR ; clk: STD_LOGIC; doutput: STD_LOGIC_VECTOR ) RETURN STD_LOGIC_VECTOR IS
   BEGIN
--pragma translate_off
     ASSERT dinput'length = doutput'length SEVERITY FAILURE;
--pragma translate_on
     RETURN mux_v(doutput & dinput, clk);
   END;

-----------------------------------------------------------------
-- Tri-States
-----------------------------------------------------------------
--   FUNCTION tri_s(dinput: STD_LOGIC; control: STD_LOGIC) RETURN STD_LOGIC IS
--   BEGIN RETURN TO_STDLOGIC(tri_v(TO_STDLOGICVECTOR(dinput), control)); END;
--
--   FUNCTION tri_v(dinput: STD_LOGIC_VECTOR ; control: STD_LOGIC) RETURN STD_LOGIC_VECTOR IS
--     VARIABLE result: STD_LOGIC_VECTOR(dinput'range);
--   BEGIN
--     CASE control IS
--     WHEN '0' | 'L' =>
--       result := (others => 'Z');
--     WHEN '1' | 'H' =>
--       FOR i IN dinput'range LOOP
--         result(i) := to_UX01(dinput(i));
--       END LOOP;
--     WHEN others =>
---- pragma translate_off
--       result := (others => '0');
---- pragma translate_on
--     END CASE;
--     RETURN result;
--   END;

-----------------------------------------------------------------
-- compare functions returning STD_LOGIC
-- in contrast to the functions returning boolean
-----------------------------------------------------------------

   FUNCTION "=" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "/="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;
   FUNCTION "/="(l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN or_s(STD_LOGIC_VECTOR(l) xor STD_LOGIC_VECTOR(r)); END;

   FUNCTION "<" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     VARIABLE diff: UNSIGNED(l'length DOWNTO 0);
   BEGIN
--pragma translate_off
     ASSERT l'length = r'length SEVERITY FAILURE;
--pragma translate_on
     diff := ('0'&l) - ('0'&r);
     RETURN diff(l'length);
   END;
   FUNCTION "<"(l, r: SIGNED  ) RETURN STD_LOGIC IS
   BEGIN
     RETURN (UNSIGNED(l) < UNSIGNED(r)) xor (l(l'left) xor r(r'left));
   END;

   FUNCTION "<="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(r < l); END;
   FUNCTION "<=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(r < l); END;
   FUNCTION ">" (l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN r < l; END;
   FUNCTION ">"(l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN r < l; END;
   FUNCTION ">="(l, r: UNSIGNED) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(l < r); END;
   FUNCTION ">=" (l, r: SIGNED  ) RETURN STD_LOGIC IS
     BEGIN RETURN not STD_LOGIC'(l < r); END;

   FUNCTION cmp (l, r: STD_LOGIC_VECTOR) RETURN STD_LOGIC IS
   BEGIN
--pragma translate_off
     ASSERT l'length = r'length SEVERITY FAILURE;
--pragma translate_on
     RETURN not or_s(l xor r);
   END;

-----------------------------------------------------------------
-- Vectorized Overloaded Arithmetic Operators
-----------------------------------------------------------------

   --some functions to placate spyglass
   FUNCTION mult_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a*b;
   END mult_natural;

   FUNCTION div_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a/b;
   END div_natural;

   FUNCTION mod_natural(a,b : NATURAL) RETURN NATURAL IS
   BEGIN
     return a mod b;
   END mod_natural;

   FUNCTION add_unsigned(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a+b;
   END add_unsigned;

   FUNCTION sub_unsigned(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a-b;
   END sub_unsigned;

   FUNCTION sub_int(a,b : INTEGER) RETURN INTEGER IS
   BEGIN
     return a-b;
   END sub_int;

   FUNCTION concat_0(b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return '0' & b;
   END concat_0;

   FUNCTION concat_uns(a,b : UNSIGNED) RETURN UNSIGNED IS
   BEGIN
     return a&b;
   END concat_uns;

   FUNCTION concat_vect(a,b : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS
   BEGIN
     return a&b;
   END concat_vect;





   FUNCTION faccu(arg: UNSIGNED; width: NATURAL) RETURN UNSIGNED IS
     CONSTANT ninps : NATURAL := arg'length / width;
     ALIAS    arg0  : UNSIGNED(arg'length-1 DOWNTO 0) IS arg;
     VARIABLE result: UNSIGNED(width-1 DOWNTO 0);
     VARIABLE from  : INTEGER;
     VARIABLE dto   : INTEGER;
   BEGIN
--pragma translate_off
     ASSERT arg'length = width * ninps SEVERITY FAILURE;
--pragma translate_on
     result := (OTHERS => '0');
     FOR i IN ninps-1 DOWNTO 0 LOOP
       --result := result + arg0((i+1)*width-1 DOWNTO i*width);
       from := mult_natural((i+1), width)-1; --2.1.6.3
       dto  := mult_natural(i,width); --2.1.6.3
       result := add_unsigned(result , arg0(from DOWNTO dto) );
     END LOOP;
     RETURN result;
   END faccu;

   FUNCTION  fabs (arg1: SIGNED) RETURN UNSIGNED IS
   BEGIN
     CASE arg1(arg1'left) IS
     WHEN '1' | 'H' =>
       RETURN UNSIGNED'("0") - UNSIGNED(arg1);
     WHEN '0' | 'L' =>
       RETURN UNSIGNED(arg1);
     WHEN others =>
       RETURN resolve_unsigned(UNSIGNED(arg1), UNSIGNED'("0") - UNSIGNED(arg1));
     END CASE;
   END;

   PROCEDURE divmod(l, r: UNSIGNED; rdiv, rmod: OUT UNSIGNED) IS
     CONSTANT llen: INTEGER := l'length;
     CONSTANT rlen: INTEGER := r'length;
     CONSTANT llen_plus_rlen: INTEGER := llen + rlen;
     VARIABLE lbuf: UNSIGNED(llen+rlen-1 DOWNTO 0);
     VARIABLE diff: UNSIGNED(rlen DOWNTO 0);
   BEGIN
--pragma translate_off
     ASSERT rdiv'length = llen AND rmod'length = rlen SEVERITY FAILURE;
--pragma translate_on
     lbuf := (others => '0');
     lbuf(llen-1 DOWNTO 0) := l;
     FOR i IN rdiv'range LOOP
       diff := sub_unsigned(lbuf(llen_plus_rlen-1 DOWNTO llen-1) ,(concat_0(r)));
       rdiv(i) := not diff(rlen);
       IF diff(rlen) = '0' THEN
         lbuf(llen_plus_rlen-1 DOWNTO llen-1) := diff;
       END IF;
       lbuf(llen_plus_rlen-1 DOWNTO 1) := lbuf(llen_plus_rlen-2 DOWNTO 0);
     END LOOP;
     rmod := lbuf(llen_plus_rlen-1 DOWNTO llen);
   END divmod;

   FUNCTION "/"  (l, r: UNSIGNED) RETURN UNSIGNED IS
     VARIABLE rdiv: UNSIGNED(l'length-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'length-1 DOWNTO 0);
   BEGIN
     divmod(l, r, rdiv, rmod);
     RETURN rdiv;
   END "/";

   FUNCTION "MOD"(l, r: UNSIGNED) RETURN UNSIGNED IS
     VARIABLE rdiv: UNSIGNED(l'length-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'length-1 DOWNTO 0);
   BEGIN
     divmod(l, r, rdiv, rmod);
     RETURN rmod;
   END;

   FUNCTION "REM"(l, r: UNSIGNED) RETURN UNSIGNED IS
     BEGIN RETURN l MOD r; END;

   FUNCTION "/"  (l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'length-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'length-1 DOWNTO 0);
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'left)) /= to_X01(r(r'left)) THEN
       rdiv := UNSIGNED'("0") - rdiv;
     END IF;
     RETURN SIGNED(rdiv); -- overflow problem "1000" / "11"
   END "/";

   FUNCTION "MOD"(l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'length-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'length-1 DOWNTO 0);
     CONSTANT rnul: UNSIGNED(r'length-1 DOWNTO 0) := (others => '0');
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'left)) = '1' THEN
       rmod := UNSIGNED'("0") - rmod;
     END IF;
     IF rmod /= rnul AND to_X01(l(l'left)) /= to_X01(r(r'left)) THEN
       rmod := UNSIGNED(r) + rmod;
     END IF;
     RETURN SIGNED(rmod);
   END "MOD";

   FUNCTION "REM"(l, r: SIGNED  ) RETURN SIGNED  IS
     VARIABLE rdiv: UNSIGNED(l'length-1 DOWNTO 0);
     VARIABLE rmod: UNSIGNED(r'length-1 DOWNTO 0);
   BEGIN
     divmod(fabs(l), fabs(r), rdiv, rmod);
     IF to_X01(l(l'left)) = '1' THEN
       rmod := UNSIGNED'("0") - rmod;
     END IF;
     RETURN SIGNED(rmod);
   END "REM";

   FUNCTION mult_unsigned(l,r : UNSIGNED) return UNSIGNED is
   BEGIN
     return l*r;
   END mult_unsigned;

   FUNCTION "**" (l, r : UNSIGNED) RETURN UNSIGNED IS
     CONSTANT llen  : NATURAL := l'length;
     VARIABLE result: UNSIGNED(llen-1 DOWNTO 0);
     VARIABLE fak   : UNSIGNED(llen-1 DOWNTO 0);
   BEGIN
     fak := l;
     result := (others => '0'); result(0) := '1';
     FOR i IN r'reverse_range LOOP
       --was:result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(result & (result*fak)), r(i)));
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR( concat_uns(result , mult_unsigned(result,fak) )), r(i)));

       fak := mult_unsigned(fak , fak);
     END LOOP;
     RETURN result;
   END "**";

   FUNCTION "**" (l, r : SIGNED) RETURN SIGNED IS
     CONSTANT rlen  : NATURAL := r'length;
     ALIAS    r0    : SIGNED(0 TO r'length-1) IS r;
     VARIABLE result: SIGNED(l'range);
   BEGIN
     CASE r(r'left) IS
     WHEN '0' | 'L' =>
       result := SIGNED(UNSIGNED(l) ** UNSIGNED(r0(1 TO r'length-1)));
     WHEN '1' | 'H' =>
       result := (others => '0');
     WHEN others =>
       result := (others => '0');
     END CASE;
     RETURN result;
   END "**";

-----------------------------------------------------------------
--               S H I F T   F U C T I O N S
-- negative shift shifts the opposite direction
-----------------------------------------------------------------

   FUNCTION add_nat(arg1 : NATURAL; arg2 : NATURAL ) RETURN NATURAL IS
   BEGIN
     return (arg1 + arg2);
   END;

--   FUNCTION UNSIGNED_2_BIT_VECTOR(arg1 : NATURAL; arg2 : NATURAL ) RETURN BIT_VECTOR IS
--   BEGIN
--     return (arg1 + arg2);
--   END;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'length-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shl(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'length-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: SIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shl(SIGNED(result), arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'length-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shr(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr_stdar(arg1: SIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; -- 2.1.6.3
     CONSTANT ilenub: INTEGER := arg1'length-1;
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: SIGNED(len-1 DOWNTO 0);
   BEGIN
     result := (others => sbit);
     result(ilenub DOWNTO 0) := arg1;
     result := shr(result, arg2);
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg1l: NATURAL := arg1'length - 1;
     ALIAS    arg1x: UNSIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: UNSIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0) := (others=>'0');
   BEGIN
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr_stdar(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshl_stdar(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN others =>
--pragma translate_off
         result := resolve_unsigned(
           fshl_stdar(arg1x, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
--pragma translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl_stdar(arg1: SIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT arg1l: NATURAL := arg1'length - 1;
     ALIAS    arg1x: SIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: SIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: SIGNED(olen-1 DOWNTO 0) := (others=>'0');
   BEGIN
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr_stdar(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshl_stdar(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN others =>
--pragma translate_off
         result := resolve_signed(
           fshl_stdar(arg1x, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr_stdar(arg1x_pad(arg1l+1 DOWNTO 1), '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
--pragma translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg2l: INTEGER := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0) := (others => '0');
   BEGIN
     IF arg2l = 0 THEN
       RETURN fshl_stdar(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
--pragma translate_off
         result := resolve_unsigned(
           fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
--pragma translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr_stdar(arg1: SIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN SIGNED IS
     CONSTANT arg2l: INTEGER := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: SIGNED(olen-1 DOWNTO 0) := (others => '0');
   BEGIN
     IF arg2l = 0 THEN
       RETURN fshl_stdar(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
--pragma translate_off
         result := resolve_signed(
           fshr_stdar(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl_stdar(arg1 & '0', '0' & not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
--pragma translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshl_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl_stdar(arg1, arg2, '0', olen); END;
   FUNCTION fshr_stdar(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr_stdar(arg1, arg2, '0', olen); END;

   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshl_stdar(arg1, arg2, arg1(arg1'left), olen); END;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshr_stdar(arg1, arg2, arg1(arg1'left), olen); END;
   FUNCTION fshl_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshl_stdar(arg1, arg2, arg1(arg1'left), olen); END;
   FUNCTION fshr_stdar(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN fshr_stdar(arg1, arg2, arg1(arg1'left), olen); END;


   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
     VARIABLE temp: UNSIGNED(len-1 DOWNTO 0);
     --SUBTYPE  sw_range IS NATURAL range 1 TO len;
     VARIABLE sw: NATURAL range 1 TO len;
     VARIABLE temp_idx : INTEGER; --2.1.6.3
   BEGIN
     sw := 1;
     result := (others => sbit);
     result(ilen-1 DOWNTO 0) := arg1;
     FOR i IN arg2'reverse_range LOOP
       temp := (others => '0');
       FOR i2 IN len-1-sw DOWNTO 0 LOOP
         --was:temp(i2+sw) := result(i2);
         temp_idx := add_nat(i2,sw);
         temp(temp_idx) := result(i2);
       END LOOP;
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(concat_uns(result,temp)), arg2(i)));
       sw := minimum(mult_natural(sw,2), len);
     END LOOP;
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT ilen: INTEGER := arg1'length;
     CONSTANT olenM1: INTEGER := olen-1; --2.1.6.3
     CONSTANT len: INTEGER := maximum(ilen, olen);
     VARIABLE result: UNSIGNED(len-1 DOWNTO 0);
     VARIABLE temp: UNSIGNED(len-1 DOWNTO 0);
     SUBTYPE  sw_range IS NATURAL range 1 TO len;
     VARIABLE sw: sw_range;
     VARIABLE result_idx : INTEGER; --2.1.6.3
   BEGIN
     sw := 1;
     result := (others => sbit);
     result(ilen-1 DOWNTO 0) := arg1;
     FOR i IN arg2'reverse_range LOOP
       temp := (others => sbit);
       FOR i2 IN len-1-sw DOWNTO 0 LOOP
         -- was: temp(i2) := result(i2+sw);
         result_idx := add_nat(i2,sw);
         temp(i2) := result(result_idx);
       END LOOP;
       result := UNSIGNED(mux_v(STD_LOGIC_VECTOR(concat_uns(result,temp)), arg2(i)));
       sw := minimum(mult_natural(sw,2), len);
     END LOOP;
     RETURN result(olenM1 DOWNTO 0);
   END;

   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg1l: NATURAL := arg1'length - 1;
     ALIAS    arg1x: UNSIGNED(arg1l DOWNTO 0) IS arg1;
     CONSTANT arg2l: NATURAL := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE arg1x_pad: UNSIGNED(arg1l+1 DOWNTO 0);
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0) := (others=>'0');
   BEGIN
     arg1x_pad(arg1l+1) := sbit;
     arg1x_pad(arg1l downto 0) := arg1x;
     IF arg2l = 0 THEN
       RETURN fshr(arg1x_pad, UNSIGNED(arg2x), sbit, olen);
     -- ELSIF arg1l = 0 THEN
     --   RETURN fshl(sbit & arg1x, arg2x, sbit, olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshl(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshr(arg1x_pad(arg1l+1 DOWNTO 1), not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN others =>
--pragma translate_off
         result := resolve_unsigned(
           fshl(arg1x_pad, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit,  olen),
           fshr(arg1x_pad(arg1l+1 DOWNTO 1), not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen)
         );
--pragma translate_on
         RETURN result;
       END CASE;
     END IF;
   END;

   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; sbit: STD_LOGIC; olen: POSITIVE) RETURN UNSIGNED IS
     CONSTANT arg2l: INTEGER := arg2'length - 1;
     ALIAS    arg2x: SIGNED(arg2l DOWNTO 0) IS arg2;
     VARIABLE result: UNSIGNED(olen-1 DOWNTO 0) := (others => '0');
   BEGIN
     IF arg2l = 0 THEN
       RETURN fshl(arg1, UNSIGNED(arg2x), olen);
     ELSE
       CASE arg2x(arg2l) IS
       WHEN '0' | 'L' =>
         RETURN fshr(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen);
       WHEN '1' | 'H' =>
         RETURN fshl(arg1 & '0', not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen);
       WHEN others =>
--pragma translate_off
         result := resolve_unsigned(
           fshr(arg1, UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), sbit, olen),
           fshl(arg1 & '0', not UNSIGNED(arg2x(arg2l-1 DOWNTO 0)), olen)
         );
--pragma translate_on
	 return result;
       END CASE;
     END IF;
   END;

   FUNCTION fshl(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl(arg1, arg2, '0', olen); END;
   FUNCTION fshr(arg1: UNSIGNED; arg2: UNSIGNED; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr(arg1, arg2, '0', olen); END;
   FUNCTION fshl(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshl(arg1, arg2, '0', olen); END;
   FUNCTION fshr(arg1: UNSIGNED; arg2: SIGNED  ; olen: POSITIVE) RETURN UNSIGNED IS
     BEGIN RETURN fshr(arg1, arg2, '0', olen); END;

   FUNCTION fshl(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshl(UNSIGNED(arg1), arg2, arg1(arg1'left), olen)); END;
   FUNCTION fshr(arg1: SIGNED  ; arg2: UNSIGNED; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshr(UNSIGNED(arg1), arg2, arg1(arg1'left), olen)); END;
   FUNCTION fshl(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshl(UNSIGNED(arg1), arg2, arg1(arg1'left), olen)); END;
   FUNCTION fshr(arg1: SIGNED  ; arg2: SIGNED  ; olen: POSITIVE) RETURN SIGNED   IS
     BEGIN RETURN SIGNED(fshr(UNSIGNED(arg1), arg2, arg1(arg1'left), olen)); END;


   FUNCTION frot(arg1: STD_LOGIC_VECTOR; arg2: STD_LOGIC_VECTOR; signd2: BOOLEAN; sdir: INTEGER range -1 TO 1) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len: INTEGER := arg1'length;
     VARIABLE result: STD_LOGIC_VECTOR(len-1 DOWNTO 0):= (others=>'0');
     VARIABLE temp: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
     SUBTYPE sw_range IS NATURAL range 0 TO len-1;
     VARIABLE sw: sw_range;
     VARIABLE temp_idx : INTEGER; --2.1.6.3
   BEGIN
     result := arg1;
     sw := sdir MOD len;
     FOR i IN arg2'reverse_range LOOP
       EXIT WHEN sw = 0;
       IF signd2 AND i = arg2'left THEN
         sw := sub_int(len,sw);
       END IF;
       -- temp := result(len-sw-1 DOWNTO 0) & result(len-1 DOWNTO len-sw)
       FOR i2 IN len-1 DOWNTO 0 LOOP
         --was: temp((i2+sw) MOD len) := result(i2);
         temp_idx := add_nat(i2,sw) MOD len;
         temp(temp_idx) := result(i2);
       END LOOP;
       result := mux_v(STD_LOGIC_VECTOR(concat_vect(result,temp)), arg2(i));
       sw := mod_natural(mult_natural(sw,2), len);
     END LOOP;
     RETURN result;
   END frot;

   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), FALSE, 1); END;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: UNSIGNED) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), FALSE, -1); END;
   FUNCTION frol(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), TRUE, 1); END;
   FUNCTION fror(arg1: STD_LOGIC_VECTOR; arg2: SIGNED  ) RETURN STD_LOGIC_VECTOR IS
     BEGIN RETURN frot(arg1, STD_LOGIC_VECTOR(arg2), TRUE, -1); END;

-----------------------------------------------------------------
-- indexing functions: LSB always has index 0
-----------------------------------------------------------------

   FUNCTION readindex(vec: STD_LOGIC_VECTOR; index: INTEGER                 ) RETURN STD_LOGIC IS
     CONSTANT len : INTEGER := vec'length;
     ALIAS    vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS vec;
   BEGIN
     IF index >= len OR index < 0 THEN
       RETURN '0';
     END IF;
     RETURN vec0(index);
   END;

   FUNCTION readslice(vec: STD_LOGIC_VECTOR; index: INTEGER; width: POSITIVE) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len : INTEGER := vec'length;
     CONSTANT indexPwidthM1 : INTEGER := index+width-1; --2.1.6.3
     ALIAS    vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0) IS vec;
     CONSTANT xxx : STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (others => '0');
   BEGIN
     IF index+width > len OR index < 0 THEN
       RETURN xxx;
     END IF;
     RETURN vec0(indexPwidthM1 DOWNTO index);
   END;

   FUNCTION writeindex(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC       ; index: INTEGER) RETURN STD_LOGIC_VECTOR IS
     CONSTANT len : INTEGER := vec'length;
     VARIABLE vec0: STD_LOGIC_VECTOR(len-1 DOWNTO 0);
     CONSTANT xxx : STD_LOGIC_VECTOR(len-1 DOWNTO 0) := (others => '0');
   BEGIN
     vec0 := vec;
     IF index >= len OR index < 0 THEN
       RETURN xxx;
     END IF;
     vec0(index) := dinput;
     RETURN vec0;
   END;

   FUNCTION n_bits(p: NATURAL) RETURN POSITIVE IS
     VARIABLE n_b : POSITIVE;
     VARIABLE p_v : NATURAL;
   BEGIN
     p_v := p;
     FOR i IN 1 TO 32 LOOP
       p_v := div_natural(p_v,2);
       n_b := i;
       EXIT WHEN (p_v = 0);
     END LOOP;
     RETURN n_b;
   END;


--   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; index: INTEGER) RETURN STD_LOGIC_VECTOR IS
--
--     CONSTANT vlen: INTEGER := vec'length;
--     CONSTANT ilen: INTEGER := dinput'length;
--     CONSTANT max_shift: INTEGER := vlen-ilen;
--     CONSTANT ones: UNSIGNED(ilen-1 DOWNTO 0) := (others => '1');
--     CONSTANT xxx : STD_LOGIC_VECTOR(vlen-1 DOWNTO 0) := (others => '0');
--     VARIABLE shift : UNSIGNED(n_bits(max_shift)-1 DOWNTO 0);
--     VARIABLE vec0: STD_LOGIC_VECTOR(vlen-1 DOWNTO 0);
--     VARIABLE inp: UNSIGNED(vlen-1 DOWNTO 0);
--     VARIABLE mask: UNSIGNED(vlen-1 DOWNTO 0);
--   BEGIN
--     inp := (others => '0');
--     mask := (others => '0');
--
--     IF index > max_shift OR index < 0 THEN
--       RETURN xxx;
--     END IF;
--
--     shift := CONV_UNSIGNED(index, shift'length);
--     inp(ilen-1 DOWNTO 0) := UNSIGNED(dinput);
--     mask(ilen-1 DOWNTO 0) := ones;
--     inp := fshl(inp, shift, vlen);
--     mask := fshl(mask, shift, vlen);
--     vec0 := (vec and (not STD_LOGIC_VECTOR(mask))) or STD_LOGIC_VECTOR(inp);
--     RETURN vec0;
--   END;

   FUNCTION writeslice(vec: STD_LOGIC_VECTOR; dinput: STD_LOGIC_VECTOR; enable: STD_LOGIC_VECTOR; byte_width: INTEGER;  index: INTEGER) RETURN STD_LOGIC_VECTOR IS

     type enable_matrix is array (0 to enable'length-1 ) of std_logic_vector(byte_width-1 downto 0);
     CONSTANT vlen: INTEGER := vec'length;
     CONSTANT ilen: INTEGER := dinput'length;
     CONSTANT max_shift: INTEGER := vlen-ilen;
     CONSTANT ones: UNSIGNED(ilen-1 DOWNTO 0) := (others => '1');
     CONSTANT xxx : STD_LOGIC_VECTOR(vlen-1 DOWNTO 0) := (others => '0');
     VARIABLE shift : UNSIGNED(n_bits(max_shift)-1 DOWNTO 0);
     VARIABLE vec0: STD_LOGIC_VECTOR(vlen-1 DOWNTO 0);
     VARIABLE inp: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE mask: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE mask2: UNSIGNED(vlen-1 DOWNTO 0);
     VARIABLE enables: enable_matrix;
     VARIABLE cat_enables: STD_LOGIC_VECTOR(ilen-1 DOWNTO 0 ) := (others => '0');
     VARIABLE lsbi : INTEGER := 0;
     VARIABLE msbi : INTEGER := byte_width-1;

   BEGIN
     inp := (others => '0');
     mask := (others => '0');

     IF index > max_shift OR index < 0 THEN
       RETURN xxx;
     END IF;

     --initialize enables
     for i in 0 TO (enable'length-1) loop
       enables(i)  := (others => enable(i));
       cat_enables(msbi downto lsbi) := enables(i) ;
       lsbi := msbi+1;
       msbi := msbi+byte_width;
     end loop;


     shift := CONV_UNSIGNED(index, shift'length);
     inp(ilen-1 DOWNTO 0) := UNSIGNED(dinput);
     mask(ilen-1 DOWNTO 0) := UNSIGNED((STD_LOGIC_VECTOR(ones) AND cat_enables));
     inp := fshl(inp, shift, vlen);
     mask := fshl(mask, shift, vlen);
     vec0 := (vec and (not STD_LOGIC_VECTOR(mask))) or STD_LOGIC_VECTOR(inp);
     RETURN vec0;
   END;


   FUNCTION ceil_log2(size : NATURAL) return NATURAL is
     VARIABLE cnt : NATURAL := 1;
     VARIABLE res : NATURAL := 0;
   begin
     while (cnt < size) loop
       res := res + 1;
       cnt := 2 * cnt;
     end loop;
     return res;
   END;

   FUNCTION bits(size : NATURAL) return NATURAL is
   begin
     return ceil_log2(size);
   END;

END funcs;

--------> ./rtl_mux_pkg.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.200 Production Release
--  HLS Date:       Mon Jun  2 22:10:04 PDT 2014
-- 
--  Generated by:   xph3sle512@cimeld16
--  Generated date: Tue Dec 13 10:28:32 2016
-- ----------------------------------------------------------------------

-- 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.funcs.ALL;

PACKAGE Main_Trans_Ond_Opt_mux_pkg IS 
  FUNCTION MUX_s_1_2_2(inputs : STD_LOGIC_VECTOR(1 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC;
  FUNCTION MUX_v_8_2_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_8_4_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_s_1_4_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
      DOWNTO 0))
    RETURN STD_LOGIC;
  FUNCTION MUX1HOT_s_1_7_2(inputs : STD_LOGIC_VECTOR(6 DOWNTO 0); sel : STD_LOGIC_VECTOR(6
      DOWNTO 0))
    RETURN STD_LOGIC;
  FUNCTION MUX1HOT_v_7_9_2(inputs : STD_LOGIC_VECTOR(62 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_2_8_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC_VECTOR(7
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_5_9_2(inputs : STD_LOGIC_VECTOR(44 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_s_1_5_2(inputs : STD_LOGIC_VECTOR(4 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
      DOWNTO 0))
    RETURN STD_LOGIC;
  FUNCTION MUX1HOT_v_8_5_2(inputs : STD_LOGIC_VECTOR(39 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_8_10_2(inputs : STD_LOGIC_VECTOR(79 DOWNTO 0); sel : STD_LOGIC_VECTOR(9
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_2_9_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_5_10_2(inputs : STD_LOGIC_VECTOR(49 DOWNTO 0); sel : STD_LOGIC_VECTOR(9
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_3_2_2(inputs : STD_LOGIC_VECTOR(5 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_9_2_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_2_2_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_7_2_2(inputs : STD_LOGIC_VECTOR(13 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_6_2_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_5_2_2(inputs : STD_LOGIC_VECTOR(9 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_17_2_2(inputs : STD_LOGIC_VECTOR(33 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_16_2_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_8_3_2(inputs : STD_LOGIC_VECTOR(23 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_15_2_2(inputs : STD_LOGIC_VECTOR(29 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_s_1_3_2(inputs : STD_LOGIC_VECTOR(2 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
      DOWNTO 0))
    RETURN STD_LOGIC;
  FUNCTION MUX1HOT_v_7_5_2(inputs : STD_LOGIC_VECTOR(34 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_3_4_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_9_3_2(inputs : STD_LOGIC_VECTOR(26 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX1HOT_v_7_3_2(inputs : STD_LOGIC_VECTOR(20 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
END Main_Trans_Ond_Opt_mux_pkg;

PACKAGE BODY Main_Trans_Ond_Opt_mux_pkg IS
FUNCTION MUX_s_1_2_2(inputs : STD_LOGIC_VECTOR(1 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := TO_STDLOGIC(inputs(0 DOWNTO 0));
      WHEN '0' =>
        result := TO_STDLOGIC(inputs(1 DOWNTO 1));
      WHEN others =>
        result := '0';
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1));
            result_new := '0';
          ELSE
            result := resolved(result & TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1)));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_8_2_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(15 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(7 DOWNTO 0);
      WHEN '0' =>
        result := inputs(15 DOWNTO 8);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*8-1 DOWNTO i*8);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*8-1 DOWNTO i*8));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX1HOT_v_8_4_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(31 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 7 DOWNTO 0) and tmp;
    FOR i in 1 TO 3 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*8-1 DOWNTO i*8) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_s_1_4_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
    DOWNTO 0))
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(3 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := sel(0);
    result := inputs(0) and tmp;
    FOR i in 1 TO 3 LOOP 
      tmp := sel(i);
      result := result or ( inputs(i) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_s_1_7_2(inputs : STD_LOGIC_VECTOR(6 DOWNTO 0); sel : STD_LOGIC_VECTOR(6
    DOWNTO 0))
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := sel(0);
    result := inputs(0) and tmp;
    FOR i in 1 TO 6 LOOP 
      tmp := sel(i);
      result := result or ( inputs(i) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_7_9_2(inputs : STD_LOGIC_VECTOR(62 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(62 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 6 DOWNTO 0) and tmp;
    FOR i in 1 TO 8 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*7-1 DOWNTO i*7) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_2_8_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC_VECTOR(7
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(15 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 1 DOWNTO 0) and tmp;
    FOR i in 1 TO 7 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*2-1 DOWNTO i*2) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_5_9_2(inputs : STD_LOGIC_VECTOR(44 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(44 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 4 DOWNTO 0) and tmp;
    FOR i in 1 TO 8 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*5-1 DOWNTO i*5) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_s_1_5_2(inputs : STD_LOGIC_VECTOR(4 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
    DOWNTO 0))
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := sel(0);
    result := inputs(0) and tmp;
    FOR i in 1 TO 4 LOOP 
      tmp := sel(i);
      result := result or ( inputs(i) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_8_5_2(inputs : STD_LOGIC_VECTOR(39 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(39 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 7 DOWNTO 0) and tmp;
    FOR i in 1 TO 4 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*8-1 DOWNTO i*8) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_8_10_2(inputs : STD_LOGIC_VECTOR(79 DOWNTO 0); sel : STD_LOGIC_VECTOR(9
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(79 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 7 DOWNTO 0) and tmp;
    FOR i in 1 TO 9 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*8-1 DOWNTO i*8) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_2_9_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC_VECTOR(8
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(17 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 1 DOWNTO 0) and tmp;
    FOR i in 1 TO 8 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*2-1 DOWNTO i*2) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_5_10_2(inputs : STD_LOGIC_VECTOR(49 DOWNTO 0); sel : STD_LOGIC_VECTOR(9
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(49 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 4 DOWNTO 0) and tmp;
    FOR i in 1 TO 9 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*5-1 DOWNTO i*5) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX_v_3_2_2(inputs : STD_LOGIC_VECTOR(5 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(5 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(2 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(2 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(2 DOWNTO 0);
      WHEN '0' =>
        result := inputs(5 DOWNTO 3);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*3-1 DOWNTO i*3);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*3-1 DOWNTO i*3));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_9_2_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(17 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(8 DOWNTO 0);
      WHEN '0' =>
        result := inputs(17 DOWNTO 9);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*9-1 DOWNTO i*9);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*9-1 DOWNTO i*9));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_2_2_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(3 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(1 DOWNTO 0);
      WHEN '0' =>
        result := inputs(3 DOWNTO 2);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*2-1 DOWNTO i*2);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*2-1 DOWNTO i*2));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_7_2_2(inputs : STD_LOGIC_VECTOR(13 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(13 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(6 DOWNTO 0);
      WHEN '0' =>
        result := inputs(13 DOWNTO 7);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*7-1 DOWNTO i*7);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*7-1 DOWNTO i*7));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_6_2_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(11 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(5 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(5 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(5 DOWNTO 0);
      WHEN '0' =>
        result := inputs(11 DOWNTO 6);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*6-1 DOWNTO i*6);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*6-1 DOWNTO i*6));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_5_2_2(inputs : STD_LOGIC_VECTOR(9 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(9 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(4 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(4 DOWNTO 0);
      WHEN '0' =>
        result := inputs(9 DOWNTO 5);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*5-1 DOWNTO i*5);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*5-1 DOWNTO i*5));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_17_2_2(inputs : STD_LOGIC_VECTOR(33 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(33 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(16 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(16 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(16 DOWNTO 0);
      WHEN '0' =>
        result := inputs(33 DOWNTO 17);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*17-1 DOWNTO i*17);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*17-1 DOWNTO i*17));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_16_2_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(31 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(15 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(15 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(15 DOWNTO 0);
      WHEN '0' =>
        result := inputs(31 DOWNTO 16);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*16-1 DOWNTO i*16);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*16-1 DOWNTO i*16));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX1HOT_v_8_3_2(inputs : STD_LOGIC_VECTOR(23 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(23 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 7 DOWNTO 0) and tmp;
    FOR i in 1 TO 2 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*8-1 DOWNTO i*8) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX_v_15_2_2(inputs : STD_LOGIC_VECTOR(29 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(29 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(14 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(14 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(14 DOWNTO 0);
      WHEN '0' =>
        result := inputs(29 DOWNTO 15);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*15-1 DOWNTO i*15);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*15-1 DOWNTO i*15));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX1HOT_s_1_3_2(inputs : STD_LOGIC_VECTOR(2 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
    DOWNTO 0))
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(2 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := sel(0);
    result := inputs(0) and tmp;
    FOR i in 1 TO 2 LOOP 
      tmp := sel(i);
      result := result or ( inputs(i) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_7_5_2(inputs : STD_LOGIC_VECTOR(34 DOWNTO 0); sel : STD_LOGIC_VECTOR(4
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(34 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 6 DOWNTO 0) and tmp;
    FOR i in 1 TO 4 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*7-1 DOWNTO i*7) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_3_4_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(11 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(2 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(2 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 2 DOWNTO 0) and tmp;
    FOR i in 1 TO 3 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*3-1 DOWNTO i*3) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_9_3_2(inputs : STD_LOGIC_VECTOR(26 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(26 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 8 DOWNTO 0) and tmp;
    FOR i in 1 TO 2 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*9-1 DOWNTO i*9) and tmp);
    END LOOP;
  RETURN result;
END;

FUNCTION MUX1HOT_v_7_3_2(inputs : STD_LOGIC_VECTOR(20 DOWNTO 0); sel : STD_LOGIC_VECTOR(2
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(20 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(6 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    tmp := (OTHERS=>sel(0));
    result := inputs( 6 DOWNTO 0) and tmp;
    FOR i in 1 TO 2 LOOP 
      tmp := (OTHERS=>sel(i));
      result := result or ( inputs((i+1)*7-1 DOWNTO i*7) and tmp);
    END LOOP;
  RETURN result;
END;

END Main_Trans_Ond_Opt_mux_pkg;



--------> ./rtl_mgc_ioport.vhd 

--------------------------------------------------------------------
--                M G C _ I O P O R T _ C O M P S
--------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE mgc_ioport_comps IS

-- INPUT COMPONENTS

COMPONENT mgc_in_wire
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_in_wire_en
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_in_wire_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
   );
END COMPONENT;

COMPONENT mgc_chan_in
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0);
    size     : OUT std_logic_vector(sz_width-1 DOWNTO 0);
    req_size : IN  std_logic;
    sizez    : IN std_logic_vector(sz_width-1 DOWNTO 0);
    sizelz   : OUT std_logic
   );
END COMPONENT;

COMPONENT mgc_in_wire_wait_nb
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0);
    size     : OUT   std_logic_vector(sz_width-1 DOWNTO 0);
    req_size : in    std_logic
  );
END COMPONENT;

-- OUTPUT COMPONENTS

COMPONENT mgc_out_stdreg
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_stdreg_en
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;


COMPONENT mgc_out_stdreg_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_reg_pos
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_reg_neg
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_reg
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_buf_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_fifo_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

-- implementation for mgc_out_fifo_wait
COMPONENT mgc_out_fifo_wait_core
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0);
    size     : OUT std_logic_vector(sz_width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_out_prereg_en
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

-- INOUT COMPONENTS

COMPONENT mgc_inout_stdreg_en
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ldin     : IN    std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    lzout    : OUT   std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_inout_stdreg_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_hid_tribuf
  GENERIC (
    width    : INTEGER
  );
  PORT (
    I_SIG    : IN     std_logic_vector(width-1 DOWNTO 0);
    ENABLE   : IN     boolean ;
    O_SIG    : OUT    std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_inout_buf_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mgc_inout_fifo_wait
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

-- IO SYNCHRONIZATION

COMPONENT mgc_io_sync
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END COMPONENT;

COMPONENT mgc_bsync_rdy
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    rd       : IN    std_logic;
    rz       : OUT   std_logic
  );
END COMPONENT;

COMPONENT mgc_bsync_vld
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    vd       : OUT   std_logic;
    vz       : IN    std_logic
  );
END COMPONENT;

COMPONENT mgc_bsync_rv
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    rd       : IN    std_logic;
    vd       : OUT   std_logic;
    rz       : OUT   std_logic;
    vz       : IN    std_logic
  );
END COMPONENT;

-- PIPE

COMPONENT mgc_pipe
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER;
    fifo_sz  : INTEGER;
    log2_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    size     : OUT   std_logic_vector(sz_width-1 DOWNTO 0);
    req_size : in    std_logic
  );
END COMPONENT;

COMPONENT mgc_sync
  PORT (
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic
  );
END COMPONENT;

-- The start of the asynch CDC components
COMPONENT mgc_regfile_pos
generic
(
  data_width   : integer;
  addr_width   : integer;
  num_of_words : integer;
  ph_en        : integer RANGE 0 to 1;
  ph_arst      : integer RANGE 0 to 1;
  ph_srst      : integer RANGE 0 to 1
);
port
(
  clk           : IN  std_logic;
  arst          : IN  std_logic;
  srst          : IN  std_logic;
  en            : IN  std_logic;
  write_en      : IN  std_logic;
  write_address : IN  std_logic_vector (addr_width - 1 downto 0);
  write_data    : IN  std_logic_vector (data_width - 1 downto 0);
  read_address  : IN  std_logic_vector (addr_width - 1 downto 0);
  read_data     : OUT std_logic_vector (data_width - 1 downto 0)
);
END COMPONENT;

COMPONENT mgc_regfile_neg
generic
(
  data_width   : integer;
  addr_width   : integer;
  num_of_words : integer;
  ph_en        : integer RANGE 0 to 1;
  ph_arst      : integer RANGE 0 to 1;
  ph_srst      : integer RANGE 0 to 1
);
port
(
  clk           : IN  std_logic;
  arst          : IN  std_logic;
  srst          : IN  std_logic;
  en            : IN  std_logic;
  write_en      : IN  std_logic;
  write_address : IN  std_logic_vector (addr_width - 1 downto 0);
  write_data    : IN  std_logic_vector (data_width - 1 downto 0);
  read_address  : IN  std_logic_vector (addr_width - 1 downto 0);
  read_data     : OUT std_logic_vector (data_width - 1 downto 0)
);
END COMPONENT;

COMPONENT mgc_regfile
generic
(
  data_width   : integer;
  addr_width   : integer;
  num_of_words : integer;
  ph_clk       : integer RANGE 0 TO 1;
  ph_en        : integer RANGE 0 to 1;
  ph_arst      : integer RANGE 0 to 1;
  ph_srst      : integer RANGE 0 to 1
);
port
(
  clk           : IN  std_logic;
  arst          : IN  std_logic;
  srst          : IN  std_logic;
  en            : IN  std_logic;
  write_en      : IN  std_logic;
  write_address : IN  std_logic_vector (addr_width - 1 downto 0);
  write_data    : IN  std_logic_vector (data_width - 1 downto 0);
  read_address  : IN  std_logic_vector (addr_width - 1 downto 0);
  read_data     : OUT std_logic_vector (data_width - 1 downto 0)
);
END COMPONENT;

COMPONENT mgc_in_ram
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  num_byte_enables  : integer;
  no_of_ports       : integer
);
port
(
 d  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 ad : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 bd : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 z  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 az : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 bz : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END COMPONENT;

COMPONENT mgc_out_ram
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  num_byte_enables  : integer;
  no_of_ports       : integer
);
port
(
 d  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 ad : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 bd : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 z  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 az : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 bz : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END COMPONENT;

COMPONENT mgc_inout_ram
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  we_active         : integer;
  num_byte_enables  : integer;
  no_of_ports       : integer
);
port
(
 id  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 od  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 ad  : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 rd  : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 wd  : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 iz  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 oz  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 az  : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 rz  : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0);
 wz  : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END COMPONENT;


COMPONENT funccall_inout
generic
(
  ram_id           : integer;
  width           : integer;  -- models the concat of the return value (data)
  addr_width      : integer  -- models the concat of the input arguments (addr)
);
port
(
  d  : out  STD_LOGIC_VECTOR(width - 1 downto 0);
  ad : in  STD_LOGIC_VECTOR(addr_width - 1 downto 0) ;
  bd : in  STD_LOGIC;
  z  : in  STD_LOGIC_VECTOR(width - 1 downto 0);
  az : out  STD_LOGIC_VECTOR(addr_width - 1 downto 0) ;
  bz : out  STD_LOGIC
);
END COMPONENT;

COMPONENT modulario_en_in
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
   );
END COMPONENT;


END mgc_ioport_comps;


--------------------------------------------------------------------
--                        E N T I T I E S
--------------------------------------------------------------------

-----------------
-- INPUT ENTITIES
-----------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_in_wire IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_in_wire;

ARCHITECTURE beh OF mgc_in_wire IS
BEGIN

  d <= z;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_in_wire_en IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_in_wire_en;

ARCHITECTURE beh OF mgc_in_wire_en IS
BEGIN

  lz <= ld;
  d  <= z;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_in_wire_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_in_wire_wait;

ARCHITECTURE beh OF mgc_in_wire_wait IS
BEGIN

  lz <= ld;
  vd <= vz;
  d  <= z;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_chan_in IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0);
    size     : OUT std_logic_vector(sz_width-1 DOWNTO 0);
    req_size : IN  std_logic;
    sizez    : IN std_logic_vector(sz_width-1 DOWNTO 0);
    sizelz   : OUT std_logic
  );
END mgc_chan_in;

ARCHITECTURE beh OF mgc_chan_in IS
BEGIN

  lz <= ld;
  vd <= vz;
  d  <= z;
  size <= sizez;
  sizelz <= req_size;

END beh;


------------------
-- OUTPUT ENTITIES
------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_stdreg IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_stdreg;

ARCHITECTURE beh OF mgc_out_stdreg IS
BEGIN

  z <= d;

End beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_stdreg_en IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_stdreg_en;

ARCHITECTURE beh OF mgc_out_stdreg_en IS
BEGIN

  lz <= ld;
  z  <= d;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_stdreg_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_stdreg_wait;

ARCHITECTURE beh OF mgc_out_stdreg_wait IS
BEGIN

  lz   <= ld;
  vd   <= vz;
  z    <= d;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_reg_pos IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_reg_pos;

ARCHITECTURE beh OF mgc_out_reg_pos IS
BEGIN

  PROCESS ( clk, arst )
  BEGIN
    IF conv_integer(arst) = ph_arst THEN
      lz <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF conv_integer(srst) = ph_srst THEN
        lz <= '0';
      ELSIF conv_integer(en) = ph_en THEN
        lz <= ld;
      END IF;
    END IF;
  END PROCESS;

  PROCESS ( clk, arst )
  BEGIN
    IF conv_integer(arst) = ph_arst THEN
      z  <= (others => '0');
    ELSIF clk'EVENT AND clk = '1' THEN
      IF conv_integer(srst) = ph_srst THEN
        z  <= (others => '0');
      ELSIF (conv_integer(en) = ph_en) AND (conv_integer(ld) = 1) THEN
        z <= d;
      END IF;
    END IF;
  END PROCESS;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_reg_neg IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_reg_neg;

ARCHITECTURE beh OF mgc_out_reg_neg IS
BEGIN

  PROCESS ( clk, arst )
  BEGIN
    IF conv_integer(arst) = ph_arst THEN
      lz <= '0';
    ELSIF clk'EVENT AND clk = '0' THEN
      IF conv_integer(srst) = ph_srst THEN
        lz <= '0';
      ELSIF conv_integer(en) = ph_en THEN
        lz <= ld;
      END IF;
    END IF;
  END PROCESS;

  PROCESS ( clk, arst )
  BEGIN
    IF conv_integer(arst) = ph_arst THEN
      z  <= (others => '0');
    ELSIF clk'EVENT AND clk = '0' THEN
      IF conv_integer(srst) = ph_srst THEN
        z  <= (others => '0');
      ELSIF (conv_integer(en) = ph_en) AND (conv_integer(ld) = 1) THEN
        z <= d;
      END IF;
    END IF;
  END PROCESS;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_reg IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_reg;

ARCHITECTURE beh OF mgc_out_reg IS
BEGIN

  GENPOS: IF ph_clk = 1 GENERATE
    REGPOS: mgc_out_reg_pos
      generic map (
        rscid => rscid,
        width => width,
        ph_en => ph_en,
        ph_arst => ph_arst,
        ph_srst => ph_srst
      )
      port map (
        clk    => clk,
        en     => en,
        arst   => arst,
        srst   => srst,
        ld     => ld,
        d      => d,
        lz     => lz,
        z      => z
      );
  END GENERATE;

  GENNEG: IF ph_clk = 0 GENERATE
    REGNEG: mgc_out_reg_neg
      generic map (
        rscid => rscid,
        width => width,
        ph_en => ph_en,
        ph_arst => ph_arst,
        ph_srst => ph_srst
      )
      port map (
        clk    => clk,
        en     => en,
        arst   => arst,
        srst   => srst,
        ld     => ld,
        d      => d,
        lz     => lz,
        z      => z
      );
  END GENERATE;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_buf_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_buf_wait;

ARCHITECTURE beh OF mgc_out_buf_wait IS

  SIGNAL filled     : std_logic;
  SIGNAL filled_next: std_logic;

  SIGNAL sbuf       : std_logic_vector(width-1 DOWNTO 0);
  SIGNAL lbuf       : std_logic;

  SIGNAL dum        : std_logic_vector(0 DOWNTO 0);

BEGIN

  dum <= (others => '0');
  filled_next <= (filled AND NOT vz) OR (filled AND ld) OR (ld AND NOT vz);

  lbuf <= ld AND NOT (filled XOR vz);

  vd <= vz OR NOT filled;
  lz <= ld OR filled;
  z  <= sbuf WHEN conv_integer(filled) = 1 ELSE d;

  STATEREG: mgc_out_reg
    generic map (
      rscid => rscid,
      width => 1,
      ph_clk => ph_clk,
      ph_en => ph_en,
      ph_arst => ph_arst,
      ph_srst => ph_srst
    )
    port map (
      clk    => clk,
      en     => en,
      arst   => arst,
      srst   => srst,
      ld     => filled_next,
      d      => dum,
      lz     => filled,
      z      => open
    );

  BUFREG: mgc_out_reg
    generic map (
      rscid => rscid,
      width => width,
      ph_clk => ph_clk,
      ph_en => ph_en,
      ph_arst => ph_arst,
      ph_srst => ph_srst
    )
    port map (
      clk    => clk,
      en     => en,
      arst   => arst,
      srst   => srst,
      ld     => lbuf,
      d      => d,
      lz     => open,
      z      => sbuf
    );

END beh;



LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_fifo_wait_core IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0);
    size     : OUT std_logic_vector(sz_width-1 DOWNTO 0)
  );
END mgc_out_fifo_wait_core;

ARCHITECTURE beh OF mgc_out_fifo_wait_core IS

  FUNCTION adjust(sz : INTEGER) RETURN INTEGER IS
    VARIABLE res : INTEGER RANGE 0 TO width*fifo_sz+1;
  BEGIN
    IF sz > 0 THEN
      res := sz;
    ELSE
      res := 1;
    END IF;
    RETURN res;
  END ;

  SIGNAL stat     : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);
  SIGNAL stat_pre : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);

  SIGNAL sbuf     : std_logic_vector(adjust(width*fifo_sz)-1 DOWNTO 0);
  SIGNAL buf_pre  : std_logic_vector(adjust(width*fifo_sz)-1 DOWNTO 0);

  SIGNAL en_l     : std_logic_vector(adjust(fifo_sz)-1 DOWNTO 0);
  SIGNAL en_l_s   : std_logic_vector(((adjust(fifo_sz)-1)/8) DOWNTO 0);

  SIGNAL const1   : std_logic;
  SIGNAL count    : integer range 0 to fifo_sz+1 := 0;
-- pragma translate_off
  SIGNAL peak : integer range 0 to fifo_sz+1 := 0;
-- pragma translate_on

BEGIN

  FIFO_REG: IF fifo_sz > 0 GENERATE
    const1 <= '1';
    vd <= vz OR NOT stat(0);
    lz <= ld OR stat(fifo_sz-1);
    size <= conv_std_logic_vector(count
            - (conv_integer(vz AND stat(fifo_sz-1)))
            + conv_integer(ld)
            , sz_width);   -- 32 == sz_width;
    Z_PROC: PROCESS(sbuf, d, stat)
    BEGIN
      IF conv_integer(stat(fifo_sz-1)) = 1 THEN
        z  <= sbuf(width*fifo_sz-1 DOWNTO width*(fifo_sz-1));
      ELSE
        z <= d;
     END IF;
    END PROCESS;

    FIFOPROC: PROCESS(ld, vz, d, stat, sbuf, en, stat_pre)
      VARIABLE stat_nxt,
               stat_before,
               en_l_var,
               stat_after   : std_logic;
      VARIABLE buf_nxt      : std_logic_vector(width-1 DOWNTO 0);
-- pragma translate_off
-- pragma translate_on
      VARIABLE n_elem : integer range 0 to fifo_sz+1;
      VARIABLE count_t : integer range 0 to fifo_sz+1;
    BEGIN
      n_elem := 0;
      FOR i IN fifo_sz-1 DOWNTO 0 LOOP
        IF i /= 0         THEN stat_before := stat(i-1); ELSE stat_before := '0'; END IF;
        IF i /= fifo_sz-1 THEN stat_after  := stat(i+1); ELSE stat_after  := '1'; END IF;
        stat_nxt := stat_after AND
          (stat_before OR (stat(i) AND NOT vz) OR (stat(i) AND ld) OR (ld AND NOT vz));
        en_l_var := '1';
        IF conv_integer(stat_nxt) = 1 THEN
          IF conv_integer(vz AND stat_before) = 1 THEN
            buf_nxt := sbuf(width*i-1 DOWNTO width*(i-1));
          ELSIF conv_integer(ld AND NOT((vz AND stat_before) OR (NOT vz AND stat(i)))) =  1 THEN
            buf_nxt := d;
          ELSE
            if pwropt = 1 THEN
              buf_nxt := (others => '0');
            ELSE
              buf_nxt := sbuf(width*(i+1)-1 DOWNTO width*i);
            END IF;
            en_l_var := '0';
          END IF;
        ELSE
          buf_nxt := (others => '0');
          en_l_var := '0';
        END IF;
        stat_pre(i) <= stat_nxt;
        IF conv_integer(ph_en) = 1 THEN
          en_l(i) <= en AND en_l_var;
        ELSE
          en_l(i) <= en OR (NOT en_l_var);
        END IF;
        buf_pre(width*(i+1)-1 DOWNTO width*i) <= buf_nxt;
        IF (stat_after = '1' AND stat(i) = '0') then
          n_elem := fifo_sz - 1 - i;
        END IF;
      END LOOP;

      IF conv_integer(ph_en) = 1 THEN
        en_l_s((adjust(fifo_sz)-1)/8) <= '1';
      ELSE
        en_l_s((adjust(fifo_sz)-1)/8) <= '0';
      END IF;
      FOR i IN fifo_sz-1 DOWNTO 7 LOOP
        IF (i rem 8) = 0 THEN
          IF conv_integer(ph_en) = 1 THEN
            en_l_s((i/8)-1) <= en AND (stat(i) OR stat_pre(i-1));
          ELSE
            en_l_s((i/8)-1) <= en OR (NOT (stat(i) OR stat_pre(i-1)));
          END IF;
        END IF;
      END LOOP;


      IF stat(fifo_sz-1) = '0' THEN
        count_t := 0;
      ELSIF stat(0) = '1' THEN
       count_t := fifo_sz;
      ELSE
        count_t := n_elem;
      END IF;
      count <= count_t;
-- pragma translate_off
      -- Although n_elem has not been initialized, it would be used only
      -- when it is assigned a value inside the FOR loop
      IF ( peak < count_t ) THEN
        peak <= count_t;
      END IF;
-- pragma translate_on
      --size <= conv_std_logic_vector(count_t, sz_width);   -- 32 == sz_width;
    END PROCESS;

    CGFIFO: IF pwropt > 0 GENERATE
    BEGIN
      BUF_GEN: FOR i IN fifo_sz-1 DOWNTO 0 GENERATE
      BEGIN
        BUFREG: mgc_out_reg
          generic map (
            rscid   => rscid,
            width   => width,
            ph_clk  => ph_clk,
            ph_en   => ph_en,
            ph_arst => ph_arst,
            ph_srst => ph_srst
          )
          port map (
            clk  => clk,
            en   => en_l(i),
            arst => arst,
            srst => srst,
            ld   => const1,
            d    => buf_pre(width*(i+1)-1 DOWNTO width*i),
            lz   => open,
            z    => sbuf(width*(i+1)-1 DOWNTO width*i)
          );
      END GENERATE;
    END GENERATE;
    CGSTATFIFO: IF pwropt = 1 GENERATE
    STATREG: mgc_out_reg
      generic map (
        rscid   => rscid,
        width   => fifo_sz,
        ph_clk  => ph_clk,
        ph_en   => ph_en,
        ph_arst => ph_arst,
        ph_srst => ph_srst
      )
      port map (
        clk  => clk,
        en   => en,
        arst => arst,
        srst => srst,
        ld   => const1,
        d    => stat_pre,
        lz   => open,
        z    => stat
      );
    END GENERATE;
    CGSTATFIFO2: IF pwropt = 2 GENERATE
      STATGEN2: FOR i IN fifo_sz-1 DOWNTO 0 GENERATE
      BEGIN
      STATREG2: mgc_out_reg
        generic map (
          rscid   => rscid,
          width   => 1,
          ph_clk  => ph_clk,
          ph_en   => ph_en,
          ph_arst => ph_arst,
          ph_srst => ph_srst
        )
        port map (
          clk  => clk,
          en   => en_l_s(i/8),
          arst => arst,
          srst => srst,
          ld   => const1,
          d    => stat_pre(i DOWNTO i),
          lz   => open,
          z    => stat(i DOWNTO i)
        );
      END GENERATE;
    END GENERATE;
    CGREG: IF pwropt = 0 GENERATE
    BEGIN
      STATREG: mgc_out_reg
        generic map (
          rscid   => rscid,
          width   => fifo_sz,
          ph_clk  => ph_clk,
          ph_en   => ph_en,
          ph_arst => ph_arst,
          ph_srst => ph_srst
        )
        port map (
          clk  => clk,
          en   => en,
          arst => arst,
          srst => srst,
          ld   => const1,
          d    => stat_pre,
          lz   => open,
          z    => stat
        );
      BUFREG: mgc_out_reg
        generic map (
          rscid   => rscid,
          width   => width*fifo_sz,
          ph_clk  => ph_clk,
          ph_en   => ph_en,
          ph_arst => ph_arst,
          ph_srst => ph_srst
        )
        port map (
          clk  => clk,
          en   => en,
          arst => arst,
          srst => srst,
          ld   => const1,
          d    => buf_pre,
          lz   => open,
          z    => sbuf
        );
    END GENERATE;
  END GENERATE;

  FEED_THRU: IF fifo_sz = 0 GENERATE
    vd <= vz;
    lz <= ld;
    z <= d;
    size <= conv_std_logic_vector (conv_integer(ld AND NOT vz), sz_width);   -- 32 == sz_width;
  END GENERATE;
END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_fifo_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN  std_logic;
    en       : IN  std_logic;
    arst     : IN  std_logic;
    srst     : IN  std_logic;
    ld       : IN  std_logic;
    vd       : OUT std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    vz       : IN  std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_fifo_wait;

ARCHITECTURE beh OF mgc_out_fifo_wait IS
    SIGNAL size : std_logic_vector(31 DOWNTO 0);

BEGIN
    CORE: mgc_out_fifo_wait_core
    generic map (
        rscid    => rscid,
        width    => width,
        sz_width => 32,
        fifo_sz  => fifo_sz,
        ph_clk   => ph_clk,
        ph_en    => ph_en,
        ph_arst  => ph_arst,
        ph_srst  => ph_srst,
        ph_log2  => ph_log2,
        pwropt   => pwropt
    )
   port map (
        clk  => clk,
        en   => en,
        arst => arst,
        srst => srst,
        ld   => ld,
        vd   => vd,
        d    => d,
        lz   => lz,
        vz   => vz,
        z    => z,
        size => size
      );
END beh;



LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_out_prereg_en IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ld       : IN  std_logic;
    d        : IN  std_logic_vector(width-1 DOWNTO 0);
    lz       : OUT std_logic;
    z        : OUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_out_prereg_en;

ARCHITECTURE beh OF mgc_out_prereg_en IS
BEGIN

  lz   <= ld;
  z    <= d;

END beh;

-----------------
-- INOUT ENTITIES
-----------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_inout_stdreg_en IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ldin     : IN    std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    lzout    : OUT   std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_inout_stdreg_en;

ARCHITECTURE beh OF mgc_inout_stdreg_en IS
BEGIN

  lzin  <= ldin;
  din   <= z WHEN ldin = '1'
      ELSE (others => 'Z');
  lzout <= ldout;
  z     <= dout WHEN ldout = '1'
      ELSE (others => 'Z');

END beh;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_hid_tribuf IS
  GENERIC (
    width    : INTEGER
  );
  PORT (
    I_SIG    : IN     std_logic_vector(width-1 DOWNTO 0);
    ENABLE   : IN     boolean;
    O_SIG    : OUT    std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_hid_tribuf;

ARCHITECTURE beh of mgc_hid_tribuf IS
BEGIN
  O_SIG <= I_SIG when ENABLE
                 ELSE (others => 'Z');
END beh;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_inout_stdreg_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_inout_stdreg_wait;

ARCHITECTURE beh OF mgc_inout_stdreg_wait IS
  signal z_enable : boolean ;
BEGIN

  lzin  <= ldin;
  vdin  <= vzin;
  din   <= z;
  lzout <= ldout;
  vdout <= vzout;
  z_enable <= conv_integer(ldout) = 1 AND conv_integer(vzout) = 1;

  TRI_BUF:mgc_hid_tribuf
  GENERIC MAP(
    width    => width
  )
  PORT MAP (
    I_SIG    => dout,
    ENABLE   => z_enable,
    O_SIG    => z
  );

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_inout_buf_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_inout_buf_wait;

ARCHITECTURE beh OF mgc_inout_buf_wait IS

  SIGNAL lzout_buf : std_logic;
  SIGNAL vzout_buf : std_logic;
  SIGNAL z_buf     : std_logic_vector(width-1 DOWNTO 0);
  SIGNAL z_enable  : boolean;

BEGIN

  lzin  <= ldin;
  vdin  <= vzin;
  din   <= z;
  lzout <= lzout_buf AND NOT ldin;
  vzout_buf <= vzout AND NOT ldin;
  z_enable <= conv_integer(lzout_buf AND NOT ldin) = 1 AND conv_integer(vzout) = 1;

  TRI_BUF:mgc_hid_tribuf
  GENERIC MAP(
    width    => width
  )
  PORT MAP (
    I_SIG    => z_buf,
    ENABLE   => z_enable,
    O_SIG    => z
  );

  BUF: mgc_out_buf_wait
    generic map (
      rscid => rscid,
      width => width,
      ph_clk => ph_clk,
      ph_en => ph_en,
      ph_arst => ph_arst,
      ph_srst => ph_srst
    )
    port map (
      clk    => clk,
      en     => en,
      arst   => arst,
      srst   => srst,
      ld     => ldout,
      vd     => vdout,
      d      => dout,
      lz     => lzout_buf,
      vz     => vzout_buf,
      z      => z_buf
    );

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_inout_fifo_wait IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    fifo_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    ph_log2  : INTEGER;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    lzin     : OUT   std_logic;
    vzin     : IN    std_logic;
    lzout    : OUT   std_logic;
    vzout    : IN    std_logic;
    z        : INOUT std_logic_vector(width-1 DOWNTO 0)
  );
END mgc_inout_fifo_wait;

ARCHITECTURE beh OF mgc_inout_fifo_wait IS

  SIGNAL lzout_buf : std_logic;
  SIGNAL vzout_buf : std_logic;
  SIGNAL size      : std_logic_vector(31 DOWNTO 0);
  SIGNAL z_buf     : std_logic_vector(width-1 DOWNTO 0);
  SIGNAL z_enable  : boolean;

BEGIN

  lzin  <= ldin;
  vdin  <= vzin;
  din   <= z;
  lzout <= lzout_buf AND NOT ldin;
  vzout_buf <= vzout AND NOT ldin;
  z_enable <= conv_integer(lzout_buf AND NOT ldin) = 1 AND conv_integer(vzout) = 1;
  --z     <= z_buf WHEN z_enable
  --               ELSE (others => 'Z');

  TRI_BUF:mgc_hid_tribuf
  GENERIC MAP(
    width    => width
  )
  PORT MAP (
    I_SIG    => z_buf,
    ENABLE   => z_enable,
    O_SIG    => z
  );

  FIFO: mgc_out_fifo_wait
    generic map (
      rscid   => rscid,
      width   => width,
      fifo_sz => fifo_sz,
      ph_clk  => ph_clk,
      ph_en   => ph_en,
      ph_arst => ph_arst,
      ph_srst => ph_srst,
      ph_log2 => ph_log2,
      pwropt  => pwropt
    )
    port map (
      clk  => clk,
      en   => en,
      arst => arst,
      srst => srst,
      ld   => ldout,
      vd   => vdout,
      d    => dout,
      lz   => lzout_buf,
      vz   => vzout_buf,
      z    => z_buf
    );

END beh;


------------------------------
-- IO SYNCHRONIZATION ENTITIES
------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_io_sync IS
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END mgc_IO_sync;

ARCHITECTURE beh OF mgc_io_sync IS
BEGIN

  lz <= ld;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY mgc_bsync_rdy IS
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    rd       : IN    std_logic;
    rz       : OUT   std_logic
  );
END mgc_bsync_rdy;

ARCHITECTURE beh OF mgc_bsync_rdy IS
BEGIN

  rz <= rd;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY mgc_bsync_vld IS
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    vd       : OUT   std_logic;
    vz       : IN    std_logic
  );
END mgc_bsync_vld;

ARCHITECTURE beh OF mgc_bsync_vld IS
BEGIN

  vd <= vz;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY mgc_bsync_rv IS
  GENERIC (
    rscid    : INTEGER;
    ready    : INTEGER RANGE 0 TO 1;
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    rd       : IN    std_logic;
    vd       : OUT   std_logic;
    rz       : OUT   std_logic;
    vz       : IN    std_logic
  );
END mgc_bsync_rv;

ARCHITECTURE beh OF mgc_bsync_rv IS
BEGIN

  rz <= rd;
  vd <= vz;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_sync IS
  PORT (
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic
  );
END mgc_sync;

ARCHITECTURE beh OF mgc_sync IS

BEGIN

  vdin <= ldout;
  vdout <= ldin;

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


USE work.mgc_ioport_comps.all;

ENTITY mgc_pipe IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER;
    sz_width : INTEGER;
    fifo_sz  : INTEGER;
    log2_sz  : INTEGER;
    ph_clk   : INTEGER RANGE 0 TO 1;
    ph_en    : INTEGER RANGE 0 TO 1;
    ph_arst  : INTEGER RANGE 0 TO 1;
    ph_srst  : INTEGER RANGE 0 TO 1;
    pwropt   : INTEGER RANGE 0 TO 2 := 0
  );
  PORT (
    clk      : IN    std_logic;
    en       : IN    std_logic;
    arst     : IN    std_logic;
    srst     : IN    std_logic;
    ldin     : IN    std_logic;
    vdin     : OUT   std_logic;
    din      : OUT   std_logic_vector(width-1 DOWNTO 0);
    ldout    : IN    std_logic;
    vdout    : OUT   std_logic;
    dout     : IN    std_logic_vector(width-1 DOWNTO 0);
    size     : OUT   std_logic_vector(sz_width-1 DOWNTO 0);
    req_size : in    std_logic
  );
END mgc_pipe;

ARCHITECTURE beh OF mgc_pipe IS

BEGIN
  FIFO: mgc_out_fifo_wait_core
    generic map (
      rscid    => rscid,
      width    => width,
      sz_width => sz_width,
      fifo_sz  => fifo_sz,
      ph_clk   => ph_clk,
      ph_en    => ph_en,
      ph_arst  => ph_arst,
      ph_srst  => ph_srst,
      ph_log2  => log2_sz,
      pwropt   => pwropt
    )
    port map (
      clk  => clk,
      en   => en,
      arst => arst,
      srst => srst,
      ld   => ldout,
      vd   => vdout,
      d    => dout,
      lz   => vdin,
      vz   => ldin,
      z    => din,
      size => size
    );

END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.mgc_ioport_comps.all;

ENTITY mgc_in_ram IS
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  num_byte_enables  : integer;
  no_of_ports       : integer
);
port
(
  d  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
  ad : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
  bd : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
  z  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
  az : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
  bz : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END mgc_in_ram;

ARCHITECTURE beh OF mgc_in_ram IS
BEGIN
  d  <= z;
  az <= ad;
  bz <= bd;
END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.mgc_ioport_comps.all;

ENTITY mgc_out_ram IS
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  num_byte_enables  : integer;
  no_of_ports       : integer
);
port
(
  d  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
  ad : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
  bd : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
  z  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
  az : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
  bz : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END mgc_out_ram;

ARCHITECTURE beh OF mgc_out_ram IS
BEGIN
  z  <= d;
  az <= ad;
  bz <= bd;
END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.mgc_ioport_comps.all;

ENTITY mgc_inout_ram IS
generic
(
  ram_id            : integer;
  words             : integer;
  width             : integer;
  addr_width        : integer;
  re_active         : integer;
  we_active         : integer;
  num_byte_enables  : integer; -- ##
  no_of_ports       : integer
);
port
(
 id  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 od  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 ad  : in  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 rd  : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 wd  : in  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0) ;
 iz  : in  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 oz  : out  STD_LOGIC_VECTOR((no_of_ports * width) - 1 downto 0);
 az  : out  STD_LOGIC_VECTOR((no_of_ports * addr_width) - 1 downto 0) ;
 rz  : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0);
 wz  : out  STD_LOGIC_VECTOR((no_of_ports * num_byte_enables) - 1 downto 0)
);
END mgc_inout_ram;

ARCHITECTURE beh OF mgc_inout_ram IS
BEGIN
  id <= iz;
  oz <= od;
  az <= ad;
  rz <= rd;
  wz <= wd;
END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.mgc_ioport_comps.all;

ENTITY funccall_inout IS
generic
(
  ram_id            : integer;
  width           : integer;  -- models the concat of the return value (data)
  addr_width      : integer  -- models the concat of the input arguments (addr)
);
port
(
  d  : out  STD_LOGIC_VECTOR(width - 1 downto 0);
  ad : in  STD_LOGIC_VECTOR(addr_width - 1 downto 0) ;
  bd : in  STD_LOGIC;
  z  : in  STD_LOGIC_VECTOR(width - 1 downto 0);
  az : out  STD_LOGIC_VECTOR(addr_width - 1 downto 0) ;
  bz : out  STD_LOGIC
);
END funccall_inout;

ARCHITECTURE beh OF funccall_inout IS
BEGIN
  d  <= z;
  az <= ad;
  bz <= bd;
END beh;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

USE work.mgc_ioport_comps.all;

ENTITY modulario_en_in IS
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    vd       : OUT std_logic;
    d        : OUT std_logic_vector(width-1 DOWNTO 0);
    vz       : IN  std_logic;
    z        : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END modulario_en_in;

ARCHITECTURE beh OF modulario_en_in IS
BEGIN

  vd <= vz;
  d  <= z;

END beh;


--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.200 Production Release
--  HLS Date:       Mon Jun  2 22:10:04 PDT 2014
-- 
--  Generated by:   xph3sle512@cimeld16
--  Generated date: Tue Dec 13 10:28:31 2016
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    Main_Trans_Ond_Opt_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.funcs.ALL;
USE work.mgc_ioport_comps.ALL;
USE work.Main_Trans_Ond_Opt_mux_pkg.ALL;


ENTITY Main_Trans_Ond_Opt_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (42 DOWNTO 0);
    st_copy_y_2_tr0 : IN STD_LOGIC;
    st_copy_x_tr0 : IN STD_LOGIC;
    st_main_2_tr0 : IN STD_LOGIC;
    st_levels_tr0 : IN STD_LOGIC;
    st_passe_x_tr0 : IN STD_LOGIC;
    st_passe_y_8_tr0 : IN STD_LOGIC;
    st_passe_x_1_tr0 : IN STD_LOGIC;
    st_levels_1_tr0 : IN STD_LOGIC;
    st_passe_x_1_tr0_1 : IN STD_LOGIC;
    st_passe_y_1_8_tr0 : IN STD_LOGIC;
    st_passe_x_1_1_tr0 : IN STD_LOGIC;
    st_levels_2_tr0 : IN STD_LOGIC;
    st_copy_x_1_tr0 : IN STD_LOGIC;
    st_copy_y_1_2_tr0 : IN STD_LOGIC;
    st_copy_x_1_1_tr0 : IN STD_LOGIC;
    st_copy_y_2_2_tr0 : IN STD_LOGIC;
    st_copy_x_2_tr0 : IN STD_LOGIC
  );
END Main_Trans_Ond_Opt_core_fsm;

ARCHITECTURE v2 OF Main_Trans_Ond_Opt_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for Main_Trans_Ond_Opt_core_fsm_1
  TYPE Main_Trans_Ond_Opt_core_fsm_1_ST IS (st_main, st_main_1, st_copy_y, st_copy_y_1,
      st_copy_y_2, st_copy_x, st_main_2, st_levels, st_passe_x, st_passe_y, st_passe_y_1,
      st_passe_y_2, st_passe_y_3, st_passe_y_4, st_passe_y_5, st_passe_y_6, st_passe_y_7,
      st_passe_y_8, st_passe_x_1, st_levels_1, st_passe_x_1_1, st_passe_y_1_1, st_passe_y_1_1_1,
      st_passe_y_1_2, st_passe_y_1_3, st_passe_y_1_4, st_passe_y_1_5, st_passe_y_1_6,
      st_passe_y_1_7, st_passe_y_1_8, st_passe_x_1_1_1, st_levels_2, st_copy_x_1,
      st_copy_y_1_1, st_copy_y_1_1_1, st_copy_y_1_2, st_copy_x_1_1, st_levels_3,
      st_copy_y_2_1, st_copy_y_2_1_1, st_copy_y_2_2, st_copy_x_2, st_main_3);

  SIGNAL state_var : Main_Trans_Ond_Opt_core_fsm_1_ST;
  SIGNAL state_var_NS : Main_Trans_Ond_Opt_core_fsm_1_ST;

BEGIN
  -- Default Constant Signal Assignments

  Main_Trans_Ond_Opt_core_fsm_1 : PROCESS (st_copy_y_2_tr0, st_copy_x_tr0, st_main_2_tr0,
      st_levels_tr0, st_passe_x_tr0, st_passe_y_8_tr0, st_passe_x_1_tr0, st_levels_1_tr0,
      st_passe_x_1_tr0_1, st_passe_y_1_8_tr0, st_passe_x_1_1_tr0, st_levels_2_tr0,
      st_copy_x_1_tr0, st_copy_y_1_2_tr0, st_copy_x_1_1_tr0, st_copy_y_2_2_tr0, st_copy_x_2_tr0,
      state_var)
  BEGIN
    CASE state_var IS
      WHEN st_main =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000001");
        state_var_NS <= st_main_1;
      WHEN st_main_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000010");
        state_var_NS <= st_copy_y;
      WHEN st_copy_y =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000100");
        state_var_NS <= st_copy_y_1;
      WHEN st_copy_y_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000001000");
        state_var_NS <= st_copy_y_2;
      WHEN st_copy_y_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000010000");
        IF ( st_copy_y_2_tr0 = '1' ) THEN
          state_var_NS <= st_copy_x;
        ELSE
          state_var_NS <= st_copy_y;
        END IF;
      WHEN st_copy_x =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000100000");
        IF ( st_copy_x_tr0 = '1' ) THEN
          state_var_NS <= st_main_2;
        ELSE
          state_var_NS <= st_copy_y;
        END IF;
      WHEN st_main_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000001000000");
        IF ( st_main_2_tr0 = '1' ) THEN
          state_var_NS <= st_copy_y_2_1;
        ELSE
          state_var_NS <= st_levels;
        END IF;
      WHEN st_levels =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000010000000");
        IF ( st_levels_tr0 = '1' ) THEN
          state_var_NS <= st_levels_1;
        ELSE
          state_var_NS <= st_passe_x;
        END IF;
      WHEN st_passe_x =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000100000000");
        IF ( st_passe_x_tr0 = '1' ) THEN
          state_var_NS <= st_passe_x_1;
        ELSE
          state_var_NS <= st_passe_y;
        END IF;
      WHEN st_passe_y =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000001000000000");
        state_var_NS <= st_passe_y_1;
      WHEN st_passe_y_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000010000000000");
        state_var_NS <= st_passe_y_2;
      WHEN st_passe_y_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000000100000000000");
        state_var_NS <= st_passe_y_3;
      WHEN st_passe_y_3 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000001000000000000");
        state_var_NS <= st_passe_y_4;
      WHEN st_passe_y_4 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000010000000000000");
        state_var_NS <= st_passe_y_5;
      WHEN st_passe_y_5 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000000100000000000000");
        state_var_NS <= st_passe_y_6;
      WHEN st_passe_y_6 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000001000000000000000");
        state_var_NS <= st_passe_y_7;
      WHEN st_passe_y_7 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000010000000000000000");
        state_var_NS <= st_passe_y_8;
      WHEN st_passe_y_8 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000000100000000000000000");
        IF ( st_passe_y_8_tr0 = '1' ) THEN
          state_var_NS <= st_passe_x_1;
        ELSE
          state_var_NS <= st_passe_y;
        END IF;
      WHEN st_passe_x_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000001000000000000000000");
        IF ( st_passe_x_1_tr0 = '1' ) THEN
          state_var_NS <= st_levels_1;
        ELSE
          state_var_NS <= st_passe_x;
        END IF;
      WHEN st_levels_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000010000000000000000000");
        IF ( st_levels_1_tr0 = '1' ) THEN
          state_var_NS <= st_levels_2;
        ELSE
          state_var_NS <= st_passe_x_1_1;
        END IF;
      WHEN st_passe_x_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000000100000000000000000000");
        IF ( st_passe_x_1_tr0_1 = '1' ) THEN
          state_var_NS <= st_passe_x_1_1_1;
        ELSE
          state_var_NS <= st_passe_y_1_1;
        END IF;
      WHEN st_passe_y_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000001000000000000000000000");
        state_var_NS <= st_passe_y_1_1_1;
      WHEN st_passe_y_1_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000010000000000000000000000");
        state_var_NS <= st_passe_y_1_2;
      WHEN st_passe_y_1_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000000100000000000000000000000");
        state_var_NS <= st_passe_y_1_3;
      WHEN st_passe_y_1_3 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000001000000000000000000000000");
        state_var_NS <= st_passe_y_1_4;
      WHEN st_passe_y_1_4 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000010000000000000000000000000");
        state_var_NS <= st_passe_y_1_5;
      WHEN st_passe_y_1_5 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000000100000000000000000000000000");
        state_var_NS <= st_passe_y_1_6;
      WHEN st_passe_y_1_6 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000001000000000000000000000000000");
        state_var_NS <= st_passe_y_1_7;
      WHEN st_passe_y_1_7 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000010000000000000000000000000000");
        state_var_NS <= st_passe_y_1_8;
      WHEN st_passe_y_1_8 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000000100000000000000000000000000000");
        IF ( st_passe_y_1_8_tr0 = '1' ) THEN
          state_var_NS <= st_passe_x_1_1_1;
        ELSE
          state_var_NS <= st_passe_y_1_1;
        END IF;
      WHEN st_passe_x_1_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000001000000000000000000000000000000");
        IF ( st_passe_x_1_1_tr0 = '1' ) THEN
          state_var_NS <= st_levels_2;
        ELSE
          state_var_NS <= st_passe_x_1_1;
        END IF;
      WHEN st_levels_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000010000000000000000000000000000000");
        IF ( st_levels_2_tr0 = '1' ) THEN
          state_var_NS <= st_levels_3;
        ELSE
          state_var_NS <= st_copy_x_1;
        END IF;
      WHEN st_copy_x_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000000100000000000000000000000000000000");
        IF ( st_copy_x_1_tr0 = '1' ) THEN
          state_var_NS <= st_copy_x_1_1;
        ELSE
          state_var_NS <= st_copy_y_1_1;
        END IF;
      WHEN st_copy_y_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000001000000000000000000000000000000000");
        state_var_NS <= st_copy_y_1_1_1;
      WHEN st_copy_y_1_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000010000000000000000000000000000000000");
        state_var_NS <= st_copy_y_1_2;
      WHEN st_copy_y_1_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000000100000000000000000000000000000000000");
        IF ( st_copy_y_1_2_tr0 = '1' ) THEN
          state_var_NS <= st_copy_x_1_1;
        ELSE
          state_var_NS <= st_copy_y_1_1;
        END IF;
      WHEN st_copy_x_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000001000000000000000000000000000000000000");
        IF ( st_copy_x_1_1_tr0 = '1' ) THEN
          state_var_NS <= st_levels_3;
        ELSE
          state_var_NS <= st_copy_x_1;
        END IF;
      WHEN st_levels_3 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000010000000000000000000000000000000000000");
        IF ( st_main_2_tr0 = '1' ) THEN
          state_var_NS <= st_copy_y_2_1;
        ELSE
          state_var_NS <= st_levels;
        END IF;
      WHEN st_copy_y_2_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0000100000000000000000000000000000000000000");
        state_var_NS <= st_copy_y_2_1_1;
      WHEN st_copy_y_2_1_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("0001000000000000000000000000000000000000000");
        state_var_NS <= st_copy_y_2_2;
      WHEN st_copy_y_2_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0010000000000000000000000000000000000000000");
        IF ( st_copy_y_2_2_tr0 = '1' ) THEN
          state_var_NS <= st_copy_x_2;
        ELSE
          state_var_NS <= st_copy_y_2_1;
        END IF;
      WHEN st_copy_x_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("0100000000000000000000000000000000000000000");
        IF ( st_copy_x_2_tr0 = '1' ) THEN
          state_var_NS <= st_main_3;
        ELSE
          state_var_NS <= st_copy_y_2_1;
        END IF;
      WHEN st_main_3 =>
        fsm_output <= STD_LOGIC_VECTOR'("1000000000000000000000000000000000000000000");
        state_var_NS <= st_main;
      WHEN OTHERS =>
        fsm_output <= "0000000000000000000000000000000000000000000";
        state_var_NS <= st_main;
    END CASE;
  END PROCESS Main_Trans_Ond_Opt_core_fsm_1;

  Main_Trans_Ond_Opt_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= st_main;
      ELSE
        IF ( core_wen = '1' ) THEN
          state_var <= state_var_NS;
        END IF;
      END IF;
    END IF;
  END PROCESS Main_Trans_Ond_Opt_core_fsm_1_REG;

END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Main_Trans_Ond_Opt_core_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.funcs.ALL;
USE work.mgc_ioport_comps.ALL;
USE work.Main_Trans_Ond_Opt_mux_pkg.ALL;


ENTITY Main_Trans_Ond_Opt_core_wait_ctrl IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : OUT STD_LOGIC;
    Src_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    Src_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    Dst_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    Dst_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    Vga_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    mgc_start_sync_mgc_bsync_vld_vd : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
    Vga_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    Dst_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    Src_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    nbLevels_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    Src_rsc_singleport_oswt : IN STD_LOGIC;
    Src_rsc_singleport_bcwt : OUT STD_LOGIC;
    Src_rsc_singleport_re_core_psct : IN STD_LOGIC;
    Src_rsc_singleport_we_core_psct : IN STD_LOGIC;
    Dst_rsc_singleport_oswt : IN STD_LOGIC;
    Dst_rsc_singleport_bcwt : OUT STD_LOGIC;
    Dst_rsc_singleport_re_core_psct : IN STD_LOGIC;
    Dst_rsc_singleport_we_core_psct : IN STD_LOGIC;
    Vga_rsc_singleport_oswt : IN STD_LOGIC;
    mgc_start_sync_mgc_bsync_vld_oswt : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_psct : IN STD_LOGIC;
    Src_rsc_singleport_oswt_pff : IN STD_LOGIC;
    Dst_rsc_singleport_oswt_pff : IN STD_LOGIC;
    Vga_rsc_singleport_oswt_pff : IN STD_LOGIC
  );
END Main_Trans_Ond_Opt_core_wait_ctrl;

ARCHITECTURE v2 OF Main_Trans_Ond_Opt_core_wait_ctrl IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL core_wen_drv : STD_LOGIC;
  SIGNAL Src_rsc_singleport_bcwt_drv : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_bcwt_drv : STD_LOGIC;

  -- Interconnect Declarations
  SIGNAL Src_rsc_singleport_tiswt0 : STD_LOGIC;
  SIGNAL Src_rsc_singleport_biwt : STD_LOGIC;
  SIGNAL Src_rsc_singleport_icwt : STD_LOGIC;
  SIGNAL core_wten : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_tiswt0 : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_biwt : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_icwt : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_tiswt0 : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_biwt : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_icwt : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_bcwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_vld_pdswt0 : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_vld_biwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_vld_icwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_vld_bcwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_ogwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_pdswt0 : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_icwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_bcwt : STD_LOGIC;
  SIGNAL Vga_triosy_mgc_io_sync_ogwt : STD_LOGIC;
  SIGNAL Vga_triosy_mgc_io_sync_icwt : STD_LOGIC;
  SIGNAL Vga_triosy_mgc_io_sync_bcwt : STD_LOGIC;
  SIGNAL Dst_triosy_mgc_io_sync_ogwt : STD_LOGIC;
  SIGNAL Dst_triosy_mgc_io_sync_icwt : STD_LOGIC;
  SIGNAL Dst_triosy_mgc_io_sync_bcwt : STD_LOGIC;
  SIGNAL Src_triosy_mgc_io_sync_ogwt : STD_LOGIC;
  SIGNAL Src_triosy_mgc_io_sync_icwt : STD_LOGIC;
  SIGNAL Src_triosy_mgc_io_sync_bcwt : STD_LOGIC;
  SIGNAL nbLevels_triosy_mgc_io_sync_ogwt : STD_LOGIC;
  SIGNAL nbLevels_triosy_mgc_io_sync_icwt : STD_LOGIC;
  SIGNAL nbLevels_triosy_mgc_io_sync_bcwt : STD_LOGIC;
  SIGNAL and_24_cse : STD_LOGIC;
  SIGNAL Src_rsc_singleport_tiswt0_pff : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_tiswt0_pff : STD_LOGIC;

BEGIN
  -- Default Constant Signal Assignments

  -- Output Reader Assignments
  core_wen <= core_wen_drv;
  Src_rsc_singleport_bcwt <= Src_rsc_singleport_bcwt_drv;
  Dst_rsc_singleport_bcwt <= Dst_rsc_singleport_bcwt_drv;

  Src_rsc_singleport_tiswt0 <= (NOT core_wten) AND Src_rsc_singleport_oswt;
  Src_rsc_singleport_biwt <= Src_rsc_singleport_tiswt0 OR Src_rsc_singleport_icwt;
  Dst_rsc_singleport_tiswt0 <= (NOT core_wten) AND Dst_rsc_singleport_oswt;
  Dst_rsc_singleport_biwt <= Dst_rsc_singleport_tiswt0 OR Dst_rsc_singleport_icwt;
  Vga_rsc_singleport_tiswt0 <= (NOT core_wten) AND Vga_rsc_singleport_oswt;
  Vga_rsc_singleport_biwt <= Vga_rsc_singleport_tiswt0 OR Vga_rsc_singleport_icwt;
  mgc_start_sync_mgc_bsync_vld_pdswt0 <= (NOT core_wten) AND mgc_start_sync_mgc_bsync_vld_oswt;
  mgc_start_sync_mgc_bsync_vld_biwt <= (mgc_start_sync_mgc_bsync_vld_pdswt0 OR mgc_start_sync_mgc_bsync_vld_icwt)
      AND mgc_start_sync_mgc_bsync_vld_vd;
  mgc_done_sync_mgc_bsync_rdy_pdswt0 <= (NOT core_wten) AND mgc_done_sync_mgc_bsync_rdy_rd_core_psct;
  mgc_done_sync_mgc_bsync_rdy_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR mgc_done_sync_mgc_bsync_rdy_icwt;
  and_24_cse <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct AND core_wen_drv;
  mgc_done_sync_mgc_bsync_rdy_rd_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND mgc_done_sync_mgc_bsync_rdy_ogwt;
  Vga_triosy_mgc_io_sync_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR Vga_triosy_mgc_io_sync_icwt;
  Vga_triosy_mgc_io_sync_ld_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND Vga_triosy_mgc_io_sync_ogwt;
  Dst_triosy_mgc_io_sync_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR Dst_triosy_mgc_io_sync_icwt;
  Dst_triosy_mgc_io_sync_ld_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND Dst_triosy_mgc_io_sync_ogwt;
  Src_triosy_mgc_io_sync_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR Src_triosy_mgc_io_sync_icwt;
  Src_triosy_mgc_io_sync_ld_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND Src_triosy_mgc_io_sync_ogwt;
  nbLevels_triosy_mgc_io_sync_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR nbLevels_triosy_mgc_io_sync_icwt;
  nbLevels_triosy_mgc_io_sync_ld_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND nbLevels_triosy_mgc_io_sync_ogwt;
  core_wen_drv <= ((NOT Src_rsc_singleport_oswt) OR Src_rsc_singleport_biwt OR Src_rsc_singleport_bcwt_drv)
      AND ((NOT Dst_rsc_singleport_oswt) OR Dst_rsc_singleport_biwt OR Dst_rsc_singleport_bcwt_drv)
      AND ((NOT Vga_rsc_singleport_oswt) OR Vga_rsc_singleport_biwt OR Vga_rsc_singleport_bcwt)
      AND ((NOT mgc_start_sync_mgc_bsync_vld_oswt) OR mgc_start_sync_mgc_bsync_vld_biwt
      OR mgc_start_sync_mgc_bsync_vld_bcwt) AND ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct)
      OR mgc_done_sync_mgc_bsync_rdy_ogwt OR mgc_done_sync_mgc_bsync_rdy_bcwt) AND
      ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct) OR Vga_triosy_mgc_io_sync_ogwt
      OR Vga_triosy_mgc_io_sync_bcwt) AND ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct)
      OR Dst_triosy_mgc_io_sync_ogwt OR Dst_triosy_mgc_io_sync_bcwt) AND ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct)
      OR Src_triosy_mgc_io_sync_ogwt OR Src_triosy_mgc_io_sync_bcwt) AND ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct)
      OR nbLevels_triosy_mgc_io_sync_ogwt OR nbLevels_triosy_mgc_io_sync_bcwt);
  Src_rsc_singleport_re_core_sct <= Src_rsc_singleport_re_core_psct AND Src_rsc_singleport_tiswt0_pff;
  Src_rsc_singleport_tiswt0_pff <= core_wen_drv AND Src_rsc_singleport_oswt_pff;
  Src_rsc_singleport_we_core_sct <= Src_rsc_singleport_we_core_psct AND Src_rsc_singleport_tiswt0_pff;
  Dst_rsc_singleport_re_core_sct <= Dst_rsc_singleport_re_core_psct AND Dst_rsc_singleport_tiswt0_pff;
  Dst_rsc_singleport_tiswt0_pff <= core_wen_drv AND Dst_rsc_singleport_oswt_pff;
  Dst_rsc_singleport_we_core_sct <= Dst_rsc_singleport_we_core_psct AND Dst_rsc_singleport_tiswt0_pff;
  Vga_rsc_singleport_we_core_sct <= Vga_rsc_singleport_oswt_pff AND core_wen_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        Src_rsc_singleport_icwt <= '0';
        Src_rsc_singleport_bcwt_drv <= '0';
        Dst_rsc_singleport_icwt <= '0';
        Dst_rsc_singleport_bcwt_drv <= '0';
        Vga_rsc_singleport_icwt <= '0';
        Vga_rsc_singleport_bcwt <= '0';
        mgc_start_sync_mgc_bsync_vld_icwt <= '0';
        mgc_start_sync_mgc_bsync_vld_bcwt <= '0';
        mgc_done_sync_mgc_bsync_rdy_icwt <= '0';
        mgc_done_sync_mgc_bsync_rdy_bcwt <= '0';
        Vga_triosy_mgc_io_sync_icwt <= '0';
        Vga_triosy_mgc_io_sync_bcwt <= '0';
        Dst_triosy_mgc_io_sync_icwt <= '0';
        Dst_triosy_mgc_io_sync_bcwt <= '0';
        Src_triosy_mgc_io_sync_icwt <= '0';
        Src_triosy_mgc_io_sync_bcwt <= '0';
        nbLevels_triosy_mgc_io_sync_icwt <= '0';
        nbLevels_triosy_mgc_io_sync_bcwt <= '0';
        core_wten <= '0';
      ELSE
        Src_rsc_singleport_icwt <= Src_rsc_singleport_icwt XOR Src_rsc_singleport_tiswt0
            XOR Src_rsc_singleport_biwt;
        Src_rsc_singleport_bcwt_drv <= Src_rsc_singleport_bcwt_drv XOR Src_rsc_singleport_biwt
            XOR (Src_rsc_singleport_oswt AND core_wen_drv);
        Dst_rsc_singleport_icwt <= Dst_rsc_singleport_icwt XOR Dst_rsc_singleport_tiswt0
            XOR Dst_rsc_singleport_biwt;
        Dst_rsc_singleport_bcwt_drv <= Dst_rsc_singleport_bcwt_drv XOR Dst_rsc_singleport_biwt
            XOR (Dst_rsc_singleport_oswt AND core_wen_drv);
        Vga_rsc_singleport_icwt <= Vga_rsc_singleport_icwt XOR Vga_rsc_singleport_tiswt0
            XOR Vga_rsc_singleport_biwt;
        Vga_rsc_singleport_bcwt <= Vga_rsc_singleport_bcwt XOR Vga_rsc_singleport_biwt
            XOR (Vga_rsc_singleport_oswt AND core_wen_drv);
        mgc_start_sync_mgc_bsync_vld_icwt <= mgc_start_sync_mgc_bsync_vld_icwt XOR
            mgc_start_sync_mgc_bsync_vld_pdswt0 XOR mgc_start_sync_mgc_bsync_vld_biwt;
        mgc_start_sync_mgc_bsync_vld_bcwt <= mgc_start_sync_mgc_bsync_vld_bcwt XOR
            mgc_start_sync_mgc_bsync_vld_biwt XOR (mgc_start_sync_mgc_bsync_vld_oswt
            AND core_wen_drv);
        mgc_done_sync_mgc_bsync_rdy_icwt <= mgc_done_sync_mgc_bsync_rdy_icwt XOR
            mgc_done_sync_mgc_bsync_rdy_pdswt0 XOR mgc_done_sync_mgc_bsync_rdy_ogwt;
        mgc_done_sync_mgc_bsync_rdy_bcwt <= mgc_done_sync_mgc_bsync_rdy_bcwt XOR
            mgc_done_sync_mgc_bsync_rdy_ogwt XOR and_24_cse;
        Vga_triosy_mgc_io_sync_icwt <= Vga_triosy_mgc_io_sync_icwt XOR mgc_done_sync_mgc_bsync_rdy_pdswt0
            XOR Vga_triosy_mgc_io_sync_ogwt;
        Vga_triosy_mgc_io_sync_bcwt <= Vga_triosy_mgc_io_sync_bcwt XOR Vga_triosy_mgc_io_sync_ogwt
            XOR and_24_cse;
        Dst_triosy_mgc_io_sync_icwt <= Dst_triosy_mgc_io_sync_icwt XOR mgc_done_sync_mgc_bsync_rdy_pdswt0
            XOR Dst_triosy_mgc_io_sync_ogwt;
        Dst_triosy_mgc_io_sync_bcwt <= Dst_triosy_mgc_io_sync_bcwt XOR Dst_triosy_mgc_io_sync_ogwt
            XOR and_24_cse;
        Src_triosy_mgc_io_sync_icwt <= Src_triosy_mgc_io_sync_icwt XOR mgc_done_sync_mgc_bsync_rdy_pdswt0
            XOR Src_triosy_mgc_io_sync_ogwt;
        Src_triosy_mgc_io_sync_bcwt <= Src_triosy_mgc_io_sync_bcwt XOR Src_triosy_mgc_io_sync_ogwt
            XOR and_24_cse;
        nbLevels_triosy_mgc_io_sync_icwt <= nbLevels_triosy_mgc_io_sync_icwt XOR
            mgc_done_sync_mgc_bsync_rdy_pdswt0 XOR nbLevels_triosy_mgc_io_sync_ogwt;
        nbLevels_triosy_mgc_io_sync_bcwt <= nbLevels_triosy_mgc_io_sync_bcwt XOR
            nbLevels_triosy_mgc_io_sync_ogwt XOR and_24_cse;
        core_wten <= NOT core_wen_drv;
      END IF;
    END IF;
  END PROCESS;
END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Main_Trans_Ond_Opt_core
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.funcs.ALL;
USE work.mgc_ioport_comps.ALL;
USE work.Main_Trans_Ond_Opt_mux_pkg.ALL;


ENTITY Main_Trans_Ond_Opt_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    Src_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Dst_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Src_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Src_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Src_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    Src_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    Dst_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Dst_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Dst_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    Dst_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    Vga_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Vga_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Vga_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    nbLevels_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    mgc_start_sync_mgc_bsync_vld_vd : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
    Vga_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    Dst_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    Src_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
    nbLevels_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC
  );
END Main_Trans_Ond_Opt_core;

ARCHITECTURE v2 OF Main_Trans_Ond_Opt_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL Src_rsc_singleport_bcwt : STD_LOGIC;
  SIGNAL Src_rsc_singleport_data_out_mxwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Src_rsc_singleport_data_out_bfwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Dst_rsc_singleport_bcwt : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_data_out_mxwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Dst_rsc_singleport_data_out_bfwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL core_wen : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (42 DOWNTO 0);
  SIGNAL levels_nand_tmp : STD_LOGIC;
  SIGNAL or_dcpl_6 : STD_LOGIC;
  SIGNAL or_dcpl_9 : STD_LOGIC;
  SIGNAL or_dcpl_12 : STD_LOGIC;
  SIGNAL or_dcpl_19 : STD_LOGIC;
  SIGNAL or_dcpl_21 : STD_LOGIC;
  SIGNAL or_dcpl_22 : STD_LOGIC;
  SIGNAL or_dcpl_26 : STD_LOGIC;
  SIGNAL or_dcpl_29 : STD_LOGIC;
  SIGNAL or_dcpl_73 : STD_LOGIC;
  SIGNAL or_dcpl_89 : STD_LOGIC;
  SIGNAL or_dcpl_569 : STD_LOGIC;
  SIGNAL or_dcpl_572 : STD_LOGIC;
  SIGNAL or_dcpl_579 : STD_LOGIC;
  SIGNAL or_dcpl_580 : STD_LOGIC;
  SIGNAL or_dcpl_585 : STD_LOGIC;
  SIGNAL or_dcpl_586 : STD_LOGIC;
  SIGNAL or_dcpl_1080 : STD_LOGIC;
  SIGNAL or_dcpl_1081 : STD_LOGIC;
  SIGNAL or_dcpl_1083 : STD_LOGIC;
  SIGNAL or_dcpl_1089 : STD_LOGIC;
  SIGNAL or_dcpl_1109 : STD_LOGIC;
  SIGNAL or_dcpl_1113 : STD_LOGIC;
  SIGNAL or_dcpl_1133 : STD_LOGIC;
  SIGNAL and_dcpl_16 : STD_LOGIC;
  SIGNAL and_dcpl_23 : STD_LOGIC;
  SIGNAL and_dcpl_33 : STD_LOGIC;
  SIGNAL nbLevels_1_sva : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL hi_7_sg3_sva : STD_LOGIC;
  SIGNAL hi_7_sg4_sva : STD_LOGIC;
  SIGNAL hi_7_sg2_sva : STD_LOGIC;
  SIGNAL hi_7_sg5_sva : STD_LOGIC;
  SIGNAL hi_7_sg1_sva : STD_LOGIC;
  SIGNAL hi_7_sg6_sva : STD_LOGIC;
  SIGNAL hi_7_sg7_sva : STD_LOGIC;
  SIGNAL wi_7_sg4_sva : STD_LOGIC;
  SIGNAL wi_7_sg3_sva : STD_LOGIC;
  SIGNAL wi_7_sg5_sva : STD_LOGIC;
  SIGNAL wi_7_sg2_sva : STD_LOGIC;
  SIGNAL wi_7_sg6_sva : STD_LOGIC;
  SIGNAL wi_7_sg1_sva : STD_LOGIC;
  SIGNAL wi_7_sg7_sva : STD_LOGIC;
  SIGNAL wi_7_sg8_sva : STD_LOGIC;
  SIGNAL image_copy_y_1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL image_copy_x_1_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL image_copy_x_1_sva_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL Trans_Ond_y_1_sva : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL Trans_Ond_x_1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL exit_passe_y_sva : STD_LOGIC;
  SIGNAL moy_slc_Src_cse_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL moy_acc_cse_sg1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL sub_sub_return_3_lpi_3_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL levels_nand_svs : STD_LOGIC;
  SIGNAL Trans_Ond_1_y_1_sva : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL Trans_Ond_1_x_1_sva : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL exit_passe_y_1_sva : STD_LOGIC;
  SIGNAL passe_y_1_acc_1_cse_1_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL moy_6_acc_cse_sg1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL sub_sub_return_9_lpi_3_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL image_copy_1_y_1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL exit_copy_y_1_sva : STD_LOGIC;
  SIGNAL image_copy_2_y_1_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL image_copy_2_x_1_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL image_copy_2_x_1_sva_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL copy_y_slc_itm : STD_LOGIC;
  SIGNAL passe_y_slc_Trans_Ond_x_1_itm : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL Trans_Ond_x_slc_Trans_Ond_x_6_itm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL passe_y_slc_Trans_Ond_x_1_1_itm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL sub_mux_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_7_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL moy_5_slc_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Trans_Ond_x_slc_Trans_Ond_x_3_itm : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL sub_5_mux_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_13_itm : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL passe_y_1_slc_Trans_Ond_1_x_1_1_itm : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL sub_6_mux_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_1_acc_7_itm : STD_LOGIC_VECTOR (14 DOWNTO 0);
  SIGNAL moy_11_slc_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL sub_11_mux_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_1_acc_13_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL image_copy_1_x_slc_image_copy_1_x_1_itm : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL levels_asn_3_itm : STD_LOGIC;
  SIGNAL levels_asn_4_itm : STD_LOGIC;
  SIGNAL levels_asn_14_itm : STD_LOGIC;
  SIGNAL levels_asn_15_itm : STD_LOGIC;
  SIGNAL copy_y_2_slc_itm : STD_LOGIC;
  SIGNAL i_1_sg1_sva_2 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL image_copy_1_x_1_sva_2 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_psp : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_51_psp : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL passe_y_acc_49_psp : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL passe_y_1_acc_49_psp : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_1_acc_psp : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL copy_y_1_acc_psp : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_x_acc_3_cse_sg1 : STD_LOGIC;
  SIGNAL or_1129_cse : STD_LOGIC;
  SIGNAL exit_passe_x_1_sva_mx0 : STD_LOGIC;
  SIGNAL or_621_cse : STD_LOGIC;
  SIGNAL reg_nbLevels_triosy_mgc_io_sync_iswt0_cse : STD_LOGIC;
  SIGNAL reg_start_sync_mgc_bsync_vld_iswt0_cse : STD_LOGIC;
  SIGNAL reg_Vga_rsc_singleport_we_core_psct_cse : STD_LOGIC;
  SIGNAL reg_Dst_rsc_singleport_iswt0_cse : STD_LOGIC;
  SIGNAL reg_Src_rsc_singleport_iswt0_cse : STD_LOGIC;
  SIGNAL reg_Vga_rsc_singleport_data_in_core_cse : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL reg_passe_y_acc_46_sdt_tmp_7 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_passe_y_acc_43_sdt_tmp_6 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_passe_y_acc_44_sdt_tmp_7 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_slc_slc_tmp_5 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL reg_passe_y_1_acc_44_sdt_tmp_6 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL or_1235_cse : STD_LOGIC;
  SIGNAL Src_rsc_singleport_re_core_sct_reg : STD_LOGIC;
  SIGNAL or_1143_rmff : STD_LOGIC;
  SIGNAL Src_rsc_singleport_we_core_sct_reg : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_re_core_sct_reg : STD_LOGIC;
  SIGNAL or_1126_rmff : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_we_core_sct_reg : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_we_core_sct_reg : STD_LOGIC;
  SIGNAL copy_y_1_acc_psp_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_43_sdt_mx0w0 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_1_acc_43_itm : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL copy_x_1_acc_3_itm : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (15 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_4 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_5 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_6 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_7 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_8 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_9 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_10 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_11 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_12 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL z_out_13 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL z_out_14 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL z_out_15 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL z_out_16 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL z_out_17 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_18 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_19 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL z_out_20 : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL z_out_21 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL z_out_22 : STD_LOGIC_VECTOR (9 DOWNTO 0);
  SIGNAL z_out_23 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL Trans_Ond_x_1_sva_mx0 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL passe_y_acc_46_sdt_mx0w0 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL image_copy_1_y_1_sva_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Trans_Ond_1_y_1_sva_1 : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL Trans_Ond_1_x_1_sva_mx0 : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL image_copy_1_x_1_sva_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL i_1_sg1_sva_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL nor_3_cse : STD_LOGIC;
  SIGNAL nor_7_cse : STD_LOGIC;
  SIGNAL reg_copy_y_acc_8_psp_cse : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL mux_43_cse : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL reg_copy_y_acc_7_psp_6_cse : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL passe_y_1_acc_45_itm : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL or_1240_cse : STD_LOGIC;
  SIGNAL mux_136_cse : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_133_cse : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_135_cse : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL mux1h_18_nl : STD_LOGIC;
  SIGNAL mux1h_38_nl : STD_LOGIC;
  SIGNAL mux1h_39_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL mux1h_40_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux1h_41_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL mux1h_42_nl : STD_LOGIC;
  SIGNAL mux1h_16_nl : STD_LOGIC;
  SIGNAL mux1h_34_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux1h_35_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux1h_36_nl : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL mux1h_37_nl : STD_LOGIC;
  SIGNAL mux_83_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_126_nl : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL mux_84_nl : STD_LOGIC;
  SIGNAL mux_127_nl : STD_LOGIC;
  SIGNAL mux_128_nl : STD_LOGIC;
  SIGNAL mux_129_nl : STD_LOGIC;
  SIGNAL mux_130_nl : STD_LOGIC;
  SIGNAL mux_131_nl : STD_LOGIC;
  SIGNAL mux_132_nl : STD_LOGIC;
  SIGNAL mux_85_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_86_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL mux_134_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_87_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_88_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_90_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_91_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_92_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_93_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_94_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_97_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_99_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_137_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux1h_102_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_102_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_138_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux_103_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL mux_104_nl : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL mux1h_105_nl : STD_LOGIC;
  SIGNAL mux1h_111_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL mux_105_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux1h_106_nl : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL mux1h_107_nl : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL mux1h_108_nl : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL mux1h_109_nl : STD_LOGIC_VECTOR (6 DOWNTO 0);
  SIGNAL mux_107_nl : STD_LOGIC;
  SIGNAL mux_140_nl : STD_LOGIC;
  SIGNAL mux_123_nl : STD_LOGIC;
  SIGNAL mux_124_nl : STD_LOGIC;
  SIGNAL mux_125_nl : STD_LOGIC;
  SIGNAL mux_141_nl : STD_LOGIC;
  SIGNAL mux_108_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_109_nl : STD_LOGIC;
  SIGNAL mux_142_nl : STD_LOGIC;
  SIGNAL mux_143_nl : STD_LOGIC;
  SIGNAL mux_144_nl : STD_LOGIC;
  SIGNAL mux_145_nl : STD_LOGIC;
  SIGNAL mux_146_nl : STD_LOGIC;
  SIGNAL mux_147_nl : STD_LOGIC;
  COMPONENT Main_Trans_Ond_Opt_core_wait_ctrl
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : OUT STD_LOGIC;
      Src_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      Src_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      Dst_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      Dst_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      Vga_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      mgc_start_sync_mgc_bsync_vld_vd : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
      Vga_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      Dst_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      Src_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      nbLevels_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      Src_rsc_singleport_oswt : IN STD_LOGIC;
      Src_rsc_singleport_bcwt : OUT STD_LOGIC;
      Src_rsc_singleport_re_core_psct : IN STD_LOGIC;
      Src_rsc_singleport_we_core_psct : IN STD_LOGIC;
      Dst_rsc_singleport_oswt : IN STD_LOGIC;
      Dst_rsc_singleport_bcwt : OUT STD_LOGIC;
      Dst_rsc_singleport_re_core_psct : IN STD_LOGIC;
      Dst_rsc_singleport_we_core_psct : IN STD_LOGIC;
      Vga_rsc_singleport_oswt : IN STD_LOGIC;
      mgc_start_sync_mgc_bsync_vld_oswt : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_psct : IN STD_LOGIC;
      Src_rsc_singleport_oswt_pff : IN STD_LOGIC;
      Dst_rsc_singleport_oswt_pff : IN STD_LOGIC;
      Vga_rsc_singleport_oswt_pff : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_re_core_psct :
      STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_re_core_psct :
      STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_we_core_psct :
      STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_wait_ctrl_inst_Vga_rsc_singleport_oswt_pff : STD_LOGIC;

  COMPONENT Main_Trans_Ond_Opt_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (42 DOWNTO 0);
      st_copy_y_2_tr0 : IN STD_LOGIC;
      st_copy_x_tr0 : IN STD_LOGIC;
      st_main_2_tr0 : IN STD_LOGIC;
      st_levels_tr0 : IN STD_LOGIC;
      st_passe_x_tr0 : IN STD_LOGIC;
      st_passe_y_8_tr0 : IN STD_LOGIC;
      st_passe_x_1_tr0 : IN STD_LOGIC;
      st_levels_1_tr0 : IN STD_LOGIC;
      st_passe_x_1_tr0_1 : IN STD_LOGIC;
      st_passe_y_1_8_tr0 : IN STD_LOGIC;
      st_passe_x_1_1_tr0 : IN STD_LOGIC;
      st_levels_2_tr0 : IN STD_LOGIC;
      st_copy_x_1_tr0 : IN STD_LOGIC;
      st_copy_y_1_2_tr0 : IN STD_LOGIC;
      st_copy_x_1_1_tr0 : IN STD_LOGIC;
      st_copy_y_2_2_tr0 : IN STD_LOGIC;
      st_copy_x_2_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (42 DOWNTO
      0);
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_main_2_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_levels_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_levels_1_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0_1 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_1_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0 : STD_LOGIC;
  SIGNAL Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_2_tr0 : STD_LOGIC;

BEGIN
  -- Default Constant Signal Assignments

  Main_Trans_Ond_Opt_core_wait_ctrl_inst : Main_Trans_Ond_Opt_core_wait_ctrl
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      Src_rsc_singleport_re_core_sct => Src_rsc_singleport_re_core_sct_reg,
      Src_rsc_singleport_we_core_sct => Src_rsc_singleport_we_core_sct_reg,
      Dst_rsc_singleport_re_core_sct => Dst_rsc_singleport_re_core_sct_reg,
      Dst_rsc_singleport_we_core_sct => Dst_rsc_singleport_we_core_sct_reg,
      Vga_rsc_singleport_we_core_sct => Vga_rsc_singleport_we_core_sct_reg,
      mgc_start_sync_mgc_bsync_vld_vd => mgc_start_sync_mgc_bsync_vld_vd,
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct => mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      Vga_triosy_mgc_io_sync_ld_core_sct => Vga_triosy_mgc_io_sync_ld_core_sct,
      Dst_triosy_mgc_io_sync_ld_core_sct => Dst_triosy_mgc_io_sync_ld_core_sct,
      Src_triosy_mgc_io_sync_ld_core_sct => Src_triosy_mgc_io_sync_ld_core_sct,
      nbLevels_triosy_mgc_io_sync_ld_core_sct => nbLevels_triosy_mgc_io_sync_ld_core_sct,
      Src_rsc_singleport_oswt => reg_Src_rsc_singleport_iswt0_cse,
      Src_rsc_singleport_bcwt => Src_rsc_singleport_bcwt,
      Src_rsc_singleport_re_core_psct => Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_re_core_psct,
      Src_rsc_singleport_we_core_psct => or_1129_cse,
      Dst_rsc_singleport_oswt => reg_Dst_rsc_singleport_iswt0_cse,
      Dst_rsc_singleport_bcwt => Dst_rsc_singleport_bcwt,
      Dst_rsc_singleport_re_core_psct => Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_re_core_psct,
      Dst_rsc_singleport_we_core_psct => Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_we_core_psct,
      Vga_rsc_singleport_oswt => reg_Vga_rsc_singleport_we_core_psct_cse,
      mgc_start_sync_mgc_bsync_vld_oswt => reg_start_sync_mgc_bsync_vld_iswt0_cse,
      mgc_done_sync_mgc_bsync_rdy_rd_core_psct => reg_nbLevels_triosy_mgc_io_sync_iswt0_cse,
      Src_rsc_singleport_oswt_pff => or_1143_rmff,
      Dst_rsc_singleport_oswt_pff => or_1126_rmff,
      Vga_rsc_singleport_oswt_pff => Main_Trans_Ond_Opt_core_wait_ctrl_inst_Vga_rsc_singleport_oswt_pff
    );
  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Src_rsc_singleport_re_core_psct <= or_dcpl_1133
      OR or_dcpl_572;
  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_re_core_psct <= or_dcpl_1081
      OR or_dcpl_1113;
  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Dst_rsc_singleport_we_core_psct <= or_dcpl_1089
      OR or_dcpl_1109;
  Main_Trans_Ond_Opt_core_wait_ctrl_inst_Vga_rsc_singleport_oswt_pff <= fsm_output(39);

  Main_Trans_Ond_Opt_core_fsm_inst : Main_Trans_Ond_Opt_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      fsm_output => Main_Trans_Ond_Opt_core_fsm_inst_fsm_output,
      st_copy_y_2_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0,
      st_copy_x_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_tr0,
      st_main_2_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_main_2_tr0,
      st_levels_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_levels_tr0,
      st_passe_x_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_tr0,
      st_passe_y_8_tr0 => exit_passe_y_sva,
      st_passe_x_1_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0,
      st_levels_1_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_levels_1_tr0,
      st_passe_x_1_tr0_1 => Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0_1,
      st_passe_y_1_8_tr0 => exit_passe_y_1_sva,
      st_passe_x_1_1_tr0 => exit_passe_x_1_sva_mx0,
      st_levels_2_tr0 => or_dcpl_73,
      st_copy_x_1_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_tr0,
      st_copy_y_1_2_tr0 => exit_copy_y_1_sva,
      st_copy_x_1_1_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_1_tr0,
      st_copy_y_2_2_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0,
      st_copy_x_2_tr0 => Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_2_tr0
    );
  fsm_output <= Main_Trans_Ond_Opt_core_fsm_inst_fsm_output;
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_tr0 <= NOT copy_y_slc_itm;
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_tr0 <= NOT (z_out_23(4));
  Main_Trans_Ond_Opt_core_fsm_inst_st_main_2_tr0 <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT
      (readindex(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(TO_STDLOGICVECTOR('1') & (NOT
      nbLevels_1_sva)) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 4), 4)), 3))) & (NOT
      (readindex(STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(i_1_sg1_sva_1
      & STD_LOGIC_VECTOR'("01")), 6) + CONV_SIGNED(SIGNED(TO_STDLOGICVECTOR('1')
      & (NOT nbLevels_1_sva) & TO_STDLOGICVECTOR('1')), 6), 6)), 5)))), fsm_output(37));
  Main_Trans_Ond_Opt_core_fsm_inst_st_levels_tr0 <= NOT (z_out_16(7));
  Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_tr0 <= NOT (z_out_19(8));
  Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0 <= NOT (z_out_22(8));
  Main_Trans_Ond_Opt_core_fsm_inst_st_levels_1_tr0 <= exit_passe_x_1_sva_mx0 OR (NOT
      levels_nand_tmp);
  Main_Trans_Ond_Opt_core_fsm_inst_st_passe_x_1_tr0_1 <= NOT (z_out_16(7));
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_tr0 <= NOT (z_out_19(8));
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_1_1_tr0 <= NOT (copy_x_1_acc_3_itm(9));
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_y_2_2_tr0 <= NOT copy_y_2_slc_itm;
  Main_Trans_Ond_Opt_core_fsm_inst_st_copy_x_2_tr0 <= NOT (z_out_23(4));

  Src_rsc_singleport_data_out_mxwt <= MUX_v_8_2_2(Src_rsc_singleport_data_out & Src_rsc_singleport_data_out_bfwt,
      Src_rsc_singleport_bcwt);
  Dst_rsc_singleport_data_out_mxwt <= MUX_v_8_2_2(Dst_rsc_singleport_data_out & Dst_rsc_singleport_data_out_bfwt,
      Dst_rsc_singleport_bcwt);
  or_621_cse <= (or_dcpl_73 AND (fsm_output(31))) OR ((fsm_output(36)) AND (NOT (copy_x_1_acc_3_itm(9))));
  nor_3_cse <= NOT((fsm_output(5)) OR (fsm_output(1)));
  or_1126_rmff <= or_dcpl_1089 OR or_dcpl_1109 OR or_dcpl_1081 OR or_dcpl_1113;
  or_1143_rmff <= or_dcpl_1133 OR or_dcpl_22 OR (fsm_output(9)) OR (fsm_output(25))
      OR (fsm_output(28)) OR or_dcpl_586;
  nor_7_cse <= NOT((fsm_output(41)) OR (fsm_output(6)) OR (fsm_output(37)));
  Trans_Ond_x_1_sva_mx0 <= Trans_Ond_x_1_sva AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
      (fsm_output(8)), 1),8));
  passe_y_acc_46_sdt_mx0w0 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out_21),
      9) + CONV_UNSIGNED(UNSIGNED(Trans_Ond_y_1_sva), 9), 9));
  passe_y_acc_43_sdt_mx0w0 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Trans_Ond_y_1_sva),
      8) + CONV_UNSIGNED(UNSIGNED(Trans_Ond_x_1_sva(7 DOWNTO 6)), 8), 8));
  mux_43_cse <= MUX_v_8_2_2((z_out_4(8 DOWNTO 1)) & (z_out_3(8 DOWNTO 1)), z_out_14(9));
  image_copy_1_y_1_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(image_copy_1_y_1_sva(6
      DOWNTO 0)), 8) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 8), 8));
  levels_nand_tmp <= NOT((nbLevels_1_sva(0)) AND (UNSIGNED(i_1_sg1_sva_2) = UNSIGNED(nbLevels_1_sva(2
      DOWNTO 1))));
  exit_passe_x_1_sva_mx0 <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT (z_out_20(6))) & (NOT
      (z_out_2(7)))), fsm_output(30));
  Trans_Ond_1_y_1_sva_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(Trans_Ond_1_y_1_sva)
      + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 6), 6));
  Trans_Ond_1_x_1_sva_mx0 <= Trans_Ond_1_x_1_sva AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
      (fsm_output(20)), 1),7));
  passe_y_1_acc_45_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Trans_Ond_1_y_1_sva
      & TO_STDLOGICVECTOR('1')), 8) + CONV_UNSIGNED(UNSIGNED'(hi_7_sg7_sva & hi_7_sg6_sva
      & hi_7_sg5_sva & hi_7_sg4_sva & hi_7_sg3_sva & hi_7_sg2_sva & (Trans_Ond_1_x_1_sva(6))),
      8), 8));
  passe_y_1_acc_43_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Trans_Ond_1_y_1_sva
      & TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED(Trans_Ond_1_y_1_sva
      & STD_LOGIC_VECTOR'("00") & TO_STDLOGICVECTOR(Trans_Ond_1_x_1_sva(6))), 10),
      10));
  copy_y_1_acc_psp_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out_18(7
      DOWNTO 2)), 8) + UNSIGNED(image_copy_1_y_1_sva), 8));
  image_copy_1_x_1_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(image_copy_1_x_1_sva_2),
      9) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 9), 9));
  i_1_sg1_sva_1 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(i_1_sg1_sva_2),
      3) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 3), 3));
  or_dcpl_6 <= (fsm_output(30)) OR (fsm_output(36));
  or_dcpl_9 <= (fsm_output(29)) OR (fsm_output(19));
  or_dcpl_12 <= (fsm_output(23)) OR (fsm_output(24));
  or_dcpl_19 <= (fsm_output(13)) OR (fsm_output(14));
  or_dcpl_21 <= (fsm_output(3)) OR (fsm_output(34));
  or_dcpl_22 <= (fsm_output(11)) OR (fsm_output(12));
  or_dcpl_26 <= (fsm_output(33)) OR (fsm_output(10));
  or_dcpl_29 <= (fsm_output(4)) OR (fsm_output(32));
  or_dcpl_73 <= NOT(levels_nand_svs AND passe_x_acc_3_cse_sg1);
  or_dcpl_89 <= (fsm_output(14)) OR (fsm_output(15));
  or_dcpl_569 <= or_dcpl_19 OR (fsm_output(15)) OR (fsm_output(16));
  or_dcpl_572 <= or_dcpl_22 OR (fsm_output(9));
  or_dcpl_579 <= (fsm_output(17)) OR (fsm_output(8));
  or_dcpl_580 <= or_dcpl_579 OR (fsm_output(5));
  or_dcpl_585 <= (fsm_output(6)) OR (fsm_output(37));
  or_dcpl_586 <= (fsm_output(26)) OR (fsm_output(27));
  or_dcpl_1080 <= (fsm_output(22)) OR (fsm_output(23));
  or_dcpl_1081 <= or_dcpl_1080 OR (fsm_output(24));
  or_dcpl_1083 <= (fsm_output(16)) OR (fsm_output(18)) OR (fsm_output(20));
  or_dcpl_1089 <= or_dcpl_21 OR (fsm_output(13));
  or_dcpl_1109 <= or_dcpl_89 OR (fsm_output(16));
  or_dcpl_1113 <= (fsm_output(38)) OR (fsm_output(21));
  or_1129_cse <= (fsm_output(25)) OR (fsm_output(28)) OR or_dcpl_586;
  or_dcpl_1133 <= (fsm_output(2)) OR (fsm_output(33)) OR (fsm_output(10));
  and_dcpl_16 <= NOT((fsm_output(6)) OR (fsm_output(37)));
  and_dcpl_23 <= NOT((fsm_output(17)) OR (fsm_output(8)));
  and_dcpl_33 <= NOT((fsm_output(20)) OR (fsm_output(29)));
  copy_x_1_acc_3_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(image_copy_1_y_1_sva_1
      & TO_STDLOGICVECTOR('1')), 10) + CONV_SIGNED(SIGNED'('1' & (NOT hi_7_sg7_sva)
      & (NOT hi_7_sg6_sva) & (NOT hi_7_sg5_sva) & (NOT hi_7_sg4_sva) & (NOT hi_7_sg3_sva)
      & (NOT hi_7_sg2_sva) & (NOT hi_7_sg1_sva) & '1'), 10), 10));
  or_1235_cse <= (fsm_output(25)) OR (fsm_output(27));
  Src_rsc_singleport_data_in_core <= MUX1HOT_v_8_4_2((z_out_11(8 DOWNTO 1)) & sub_6_mux_itm
      & moy_11_slc_itm & sub_11_mux_itm, STD_LOGIC_VECTOR'((fsm_output(25)) & (fsm_output(26))
      & (fsm_output(27)) & (fsm_output(28))));
  mux1h_18_nl <= MUX1HOT_s_1_4_2(STD_LOGIC_VECTOR'((z_out_17(8)) & (z_out_15(7))
      & (passe_y_acc_psp(7)) & (passe_y_acc_49_psp(8))), STD_LOGIC_VECTOR'((fsm_output(2))
      & (fsm_output(9)) & (fsm_output(10)) & or_dcpl_22));
  mux1h_38_nl <= MUX1HOT_s_1_7_2(STD_LOGIC_VECTOR'((z_out_17(7)) & (z_out_15(6))
      & (passe_y_acc_psp(6)) & (passe_y_acc_49_psp(7)) & (passe_y_1_acc_49_psp(7))
      & (passe_y_1_acc_13_itm(15)) & (copy_y_1_acc_psp_1(7))), STD_LOGIC_VECTOR'((fsm_output(2))
      & (fsm_output(9)) & (fsm_output(10)) & or_dcpl_22 & (fsm_output(27)) & (fsm_output(28))
      & (fsm_output(33))));
  mux1h_39_nl <= MUX1HOT_v_7_9_2((z_out_17(6 DOWNTO 0)) & ((z_out_15(5 DOWNTO 0))
      & TO_STDLOGICVECTOR(passe_y_acc_43_sdt_mx0w0(1))) & ((passe_y_acc_psp(5 DOWNTO
      0)) & TO_STDLOGICVECTOR(reg_passe_y_acc_43_sdt_tmp_6(1))) & (passe_y_acc_49_psp(6
      DOWNTO 0)) & (passe_y_1_acc_1_cse_1_sva(8 DOWNTO 2)) & (passe_y_1_acc_7_itm(14
      DOWNTO 8)) & (passe_y_1_acc_49_psp(6 DOWNTO 0)) & (passe_y_1_acc_13_itm(14
      DOWNTO 8)) & (copy_y_1_acc_psp_1(6 DOWNTO 0)), STD_LOGIC_VECTOR'((fsm_output(2))
      & (fsm_output(9)) & (fsm_output(10)) & or_dcpl_22 & (fsm_output(25)) & (fsm_output(26))
      & (fsm_output(27)) & (fsm_output(28)) & (fsm_output(33))));
  mux1h_40_nl <= MUX1HOT_v_2_8_2((z_out_18(1 DOWNTO 0)) & STD_LOGIC_VECTOR'((passe_y_acc_43_sdt_mx0w0(0))
      & (Trans_Ond_x_1_sva(5))) & STD_LOGIC_VECTOR'((reg_passe_y_acc_43_sdt_tmp_6(0))
      & (passe_y_slc_Trans_Ond_x_1_itm(5))) & reg_passe_y_acc_44_sdt_tmp_7 & (passe_y_1_acc_1_cse_1_sva(1
      DOWNTO 0)) & (passe_y_1_acc_7_itm(7 DOWNTO 6)) & reg_slc_slc_tmp_5 & (passe_y_1_acc_13_itm(7
      DOWNTO 6)), STD_LOGIC_VECTOR'(((fsm_output(2)) OR (fsm_output(33))) & (fsm_output(9))
      & (fsm_output(10)) & or_dcpl_22 & (fsm_output(25)) & (fsm_output(26)) & (fsm_output(27))
      & (fsm_output(28))));
  mux1h_41_nl <= MUX1HOT_v_5_9_2((image_copy_x_1_sva(5 DOWNTO 1)) & (Trans_Ond_x_1_sva(4
      DOWNTO 0)) & (passe_y_slc_Trans_Ond_x_1_itm(4 DOWNTO 0)) & Trans_Ond_x_slc_Trans_Ond_x_6_itm
      & passe_y_slc_Trans_Ond_x_1_1_itm & (Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(5
      DOWNTO 1)) & (passe_y_1_acc_7_itm(5 DOWNTO 1)) & (passe_y_1_acc_13_itm(5 DOWNTO
      1)) & (image_copy_1_x_1_sva_2(5 DOWNTO 1)), STD_LOGIC_VECTOR'((fsm_output(2))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & or_1235_cse & (fsm_output(26)) & (fsm_output(28)) & (fsm_output(33))));
  mux1h_42_nl <= MUX1HOT_s_1_5_2(STD_LOGIC_VECTOR'((image_copy_x_1_sva(0)) & (Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(0))
      & (passe_y_1_acc_7_itm(0)) & (passe_y_1_acc_13_itm(0)) & (image_copy_1_x_1_sva_2(0))),
      STD_LOGIC_VECTOR'((fsm_output(2)) & or_1235_cse & (fsm_output(26)) & (fsm_output(28))
      & (fsm_output(33))));
  Src_rsc_singleport_addr_core <= TO_STDLOGICVECTOR((mux1h_18_nl) AND (NOT((fsm_output(25))
      OR (fsm_output(26)) OR (fsm_output(27)) OR (fsm_output(28)) OR (fsm_output(33)))))
      & TO_STDLOGICVECTOR((mux1h_38_nl) AND (NOT((fsm_output(25)) OR (fsm_output(26)))))
      & (mux1h_39_nl) & (mux1h_40_nl) & (mux1h_41_nl) & TO_STDLOGICVECTOR(((mux1h_42_nl)
      AND (NOT((fsm_output(9)) OR (fsm_output(11))))) OR (fsm_output(10)) OR (fsm_output(12)));
  Src_rsc_singleport_re_core_sct <= Src_rsc_singleport_re_core_sct_reg;
  Src_rsc_singleport_we_core_sct <= Src_rsc_singleport_we_core_sct_reg;
  Dst_rsc_singleport_data_in_core <= MUX1HOT_v_8_5_2(Src_rsc_singleport_data_out_mxwt
      & (z_out_11(8 DOWNTO 1)) & sub_mux_itm & moy_5_slc_itm & sub_5_mux_itm, STD_LOGIC_VECTOR'(or_dcpl_21
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15)) & (fsm_output(16))));
  mux1h_16_nl <= MUX1HOT_s_1_4_2(STD_LOGIC_VECTOR'((reg_copy_y_acc_8_psp_cse(8))
      & (passe_y_acc_51_psp(8)) & (passe_y_acc_13_itm(16)) & (z_out_17(8))), STD_LOGIC_VECTOR'((fsm_output(3))
      & (fsm_output(15)) & (fsm_output(16)) & (fsm_output(38))));
  mux1h_34_nl <= MUX1HOT_v_8_10_2((reg_copy_y_acc_8_psp_cse(7 DOWNTO 0)) & passe_y_acc_psp
      & (passe_y_acc_7_itm(15 DOWNTO 8)) & (passe_y_acc_51_psp(7 DOWNTO 0)) & (passe_y_acc_13_itm(15
      DOWNTO 8)) & (passe_y_1_acc_43_itm(9 DOWNTO 2)) & (passe_y_1_acc_1_cse_1_sva(8
      DOWNTO 1)) & passe_y_1_acc_psp & copy_y_1_acc_psp & (z_out_17(7 DOWNTO 0)),
      STD_LOGIC_VECTOR'((fsm_output(3)) & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))
      & (fsm_output(16)) & (fsm_output(21)) & (fsm_output(22)) & or_dcpl_12 & (fsm_output(34))
      & (fsm_output(38))));
  mux1h_35_nl <= MUX1HOT_v_2_9_2(reg_copy_y_acc_7_psp_6_cse & reg_passe_y_acc_43_sdt_tmp_6
      & (passe_y_acc_7_itm(7 DOWNTO 6)) & reg_passe_y_acc_46_sdt_tmp_7 & (passe_y_acc_13_itm(7
      DOWNTO 6)) & STD_LOGIC_VECTOR'((passe_y_1_acc_43_itm(1)) & (Trans_Ond_1_x_1_sva(5)))
      & STD_LOGIC_VECTOR'((passe_y_1_acc_1_cse_1_sva(0)) & (Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(5)))
      & reg_passe_y_1_acc_44_sdt_tmp_6 & (z_out_18(1 DOWNTO 0)), STD_LOGIC_VECTOR'(or_dcpl_21
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15)) & (fsm_output(16))
      & (fsm_output(21)) & (fsm_output(22)) & or_dcpl_12 & (fsm_output(38))));
  mux1h_36_nl <= MUX1HOT_v_5_10_2((image_copy_x_1_sva(5 DOWNTO 1)) & (passe_y_slc_Trans_Ond_x_1_itm(5
      DOWNTO 1)) & (passe_y_acc_7_itm(5 DOWNTO 1)) & (Trans_Ond_x_slc_Trans_Ond_x_3_itm(5
      DOWNTO 1)) & (passe_y_acc_13_itm(5 DOWNTO 1)) & (Trans_Ond_1_x_1_sva(4 DOWNTO
      0)) & (Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm(4 DOWNTO 0)) & passe_y_1_slc_Trans_Ond_1_x_1_1_itm
      & (image_copy_1_x_slc_image_copy_1_x_1_itm(5 DOWNTO 1)) & (image_copy_2_x_1_sva(5
      DOWNTO 1)), STD_LOGIC_VECTOR'((fsm_output(3)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15)) & (fsm_output(16)) & (fsm_output(21)) & (fsm_output(22))
      & or_dcpl_12 & (fsm_output(34)) & (fsm_output(38))));
  mux1h_37_nl <= MUX1HOT_s_1_7_2(STD_LOGIC_VECTOR'((image_copy_x_1_sva(0)) & (passe_y_slc_Trans_Ond_x_1_itm(0))
      & (passe_y_acc_7_itm(0)) & (Trans_Ond_x_slc_Trans_Ond_x_3_itm(0)) & (passe_y_acc_13_itm(0))
      & (image_copy_1_x_slc_image_copy_1_x_1_itm(0)) & (image_copy_2_x_1_sva(0))),
      STD_LOGIC_VECTOR'((fsm_output(3)) & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))
      & (fsm_output(16)) & (fsm_output(34)) & (fsm_output(38))));
  Dst_rsc_singleport_addr_core <= TO_STDLOGICVECTOR((mux1h_16_nl) AND (NOT((fsm_output(13))
      OR (fsm_output(14)) OR (fsm_output(21)) OR (fsm_output(22)) OR (fsm_output(23))
      OR (fsm_output(24)) OR (fsm_output(34))))) & (mux1h_34_nl) & (mux1h_35_nl)
      & (mux1h_36_nl) & TO_STDLOGICVECTOR(((mux1h_37_nl) AND (NOT((fsm_output(21))
      OR (fsm_output(23))))) OR (fsm_output(22)) OR (fsm_output(24)));
  Dst_rsc_singleport_re_core_sct <= Dst_rsc_singleport_re_core_sct_reg;
  Dst_rsc_singleport_we_core_sct <= Dst_rsc_singleport_we_core_sct_reg;
  Vga_rsc_singleport_data_in_core <= Dst_rsc_singleport_data_out_mxwt;
  Vga_rsc_singleport_addr_core <= reg_copy_y_acc_8_psp_cse & reg_copy_y_acc_7_psp_6_cse
      & (image_copy_2_x_1_sva(5 DOWNTO 0));
  Vga_rsc_singleport_we_core_sct <= Vga_rsc_singleport_we_core_sct_reg;
  or_1240_cse <= (fsm_output(23)) OR (fsm_output(25));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        Src_rsc_singleport_data_out_bfwt <= STD_LOGIC_VECTOR'("00000000");
        Dst_rsc_singleport_data_out_bfwt <= STD_LOGIC_VECTOR'("00000000");
      ELSE
        Src_rsc_singleport_data_out_bfwt <= Src_rsc_singleport_data_out_mxwt;
        Dst_rsc_singleport_data_out_bfwt <= Dst_rsc_singleport_data_out_mxwt;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        hi_7_sg7_sva <= '0';
        hi_7_sg6_sva <= '0';
        hi_7_sg5_sva <= '0';
        hi_7_sg4_sva <= '0';
        hi_7_sg3_sva <= '0';
        hi_7_sg2_sva <= '0';
        hi_7_sg1_sva <= '0';
        wi_7_sg8_sva <= '0';
        wi_7_sg7_sva <= '0';
        wi_7_sg6_sva <= '0';
        wi_7_sg5_sva <= '0';
        wi_7_sg4_sva <= '0';
        wi_7_sg3_sva <= '0';
        wi_7_sg2_sva <= '0';
        wi_7_sg1_sva <= '0';
        image_copy_y_1_sva <= STD_LOGIC_VECTOR'("00000000");
        reg_nbLevels_triosy_mgc_io_sync_iswt0_cse <= '0';
        reg_start_sync_mgc_bsync_vld_iswt0_cse <= '0';
        reg_Vga_rsc_singleport_we_core_psct_cse <= '0';
        reg_Dst_rsc_singleport_iswt0_cse <= '0';
        reg_Src_rsc_singleport_iswt0_cse <= '0';
        reg_Vga_rsc_singleport_data_in_core_cse <= STD_LOGIC_VECTOR'("00000000");
        nbLevels_1_sva <= STD_LOGIC_VECTOR'("000");
        image_copy_x_1_sva <= STD_LOGIC_VECTOR'("000000000");
        copy_y_slc_itm <= '0';
        reg_copy_y_acc_8_psp_cse <= STD_LOGIC_VECTOR'("000000000");
        image_copy_x_1_sva_1 <= STD_LOGIC_VECTOR'("000000000");
        i_1_sg1_sva_2 <= STD_LOGIC_VECTOR'("00");
        image_copy_2_y_1_sva <= STD_LOGIC_VECTOR'("00000000");
        image_copy_2_x_1_sva <= STD_LOGIC_VECTOR'("000000000");
        Trans_Ond_y_1_sva <= STD_LOGIC_VECTOR'("0000000");
        passe_x_acc_3_cse_sg1 <= '0';
        Trans_Ond_x_1_sva <= STD_LOGIC_VECTOR'("00000000");
        exit_passe_y_sva <= '0';
        Trans_Ond_x_slc_Trans_Ond_x_3_itm <= STD_LOGIC_VECTOR'("000000");
        passe_y_slc_Trans_Ond_x_1_itm <= STD_LOGIC_VECTOR'("000000");
        passe_y_slc_Trans_Ond_x_1_1_itm <= STD_LOGIC_VECTOR'("00000");
        Trans_Ond_x_slc_Trans_Ond_x_6_itm <= STD_LOGIC_VECTOR'("00000");
        passe_y_acc_13_itm <= STD_LOGIC_VECTOR'("00000000000000000");
        passe_y_acc_51_psp <= STD_LOGIC_VECTOR'("000000000");
        passe_y_acc_7_itm <= STD_LOGIC_VECTOR'("0000000000000000");
        passe_y_acc_psp <= STD_LOGIC_VECTOR'("00000000");
        passe_y_acc_49_psp <= STD_LOGIC_VECTOR'("000000000");
        moy_slc_Src_cse_sva <= STD_LOGIC_VECTOR'("00000000");
        sub_sub_return_3_lpi_3_dfm <= STD_LOGIC_VECTOR'("00000000");
        moy_acc_cse_sg1_sva <= STD_LOGIC_VECTOR'("00000000");
        sub_mux_itm <= STD_LOGIC_VECTOR'("00000000");
        sub_5_mux_itm <= STD_LOGIC_VECTOR'("00000000");
        moy_5_slc_itm <= STD_LOGIC_VECTOR'("00000000");
        image_copy_1_y_1_sva <= STD_LOGIC_VECTOR'("00000000");
        levels_nand_svs <= '0';
        Trans_Ond_1_y_1_sva <= STD_LOGIC_VECTOR'("000000");
        Trans_Ond_1_x_1_sva <= STD_LOGIC_VECTOR'("0000000");
        exit_passe_y_1_sva <= '0';
        Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm <= STD_LOGIC_VECTOR'("000000");
        passe_y_1_slc_Trans_Ond_1_x_1_1_itm <= STD_LOGIC_VECTOR'("00000");
        passe_y_1_acc_13_itm <= STD_LOGIC_VECTOR'("0000000000000000");
        passe_y_1_acc_49_psp <= STD_LOGIC_VECTOR'("00000000");
        passe_y_1_acc_7_itm <= STD_LOGIC_VECTOR'("000000000000000");
        passe_y_1_acc_1_cse_1_sva <= STD_LOGIC_VECTOR'("000000000");
        passe_y_1_acc_psp <= STD_LOGIC_VECTOR'("00000000");
        sub_sub_return_9_lpi_3_dfm <= STD_LOGIC_VECTOR'("00000000");
        moy_6_acc_cse_sg1_sva <= STD_LOGIC_VECTOR'("00000000");
        sub_6_mux_itm <= STD_LOGIC_VECTOR'("00000000");
        sub_11_mux_itm <= STD_LOGIC_VECTOR'("00000000");
        moy_11_slc_itm <= STD_LOGIC_VECTOR'("00000000");
        image_copy_1_x_1_sva_2 <= STD_LOGIC_VECTOR'("00000000");
        levels_asn_15_itm <= '0';
        levels_asn_14_itm <= '0';
        levels_asn_4_itm <= '0';
        levels_asn_3_itm <= '0';
        exit_copy_y_1_sva <= '0';
        image_copy_1_x_slc_image_copy_1_x_1_itm <= STD_LOGIC_VECTOR'("000000");
        copy_y_1_acc_psp <= STD_LOGIC_VECTOR'("00000000");
        copy_y_2_slc_itm <= '0';
        image_copy_2_x_1_sva_1 <= STD_LOGIC_VECTOR'("000000000");
        reg_copy_y_acc_7_psp_6_cse <= STD_LOGIC_VECTOR'("00");
        reg_passe_y_acc_46_sdt_tmp_7 <= STD_LOGIC_VECTOR'("00");
        reg_passe_y_acc_43_sdt_tmp_6 <= STD_LOGIC_VECTOR'("00");
        reg_passe_y_acc_44_sdt_tmp_7 <= STD_LOGIC_VECTOR'("00");
        reg_slc_slc_tmp_5 <= STD_LOGIC_VECTOR'("00");
        reg_passe_y_1_acc_44_sdt_tmp_6 <= STD_LOGIC_VECTOR'("00");
      ELSIF ( core_wen = '1' ) THEN
        hi_7_sg7_sva <= (hi_7_sg7_sva AND (NOT (fsm_output(37)))) OR (fsm_output(1));
        hi_7_sg6_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg6_sva & (hi_7_sg7_sva
            AND (NOT levels_nand_svs))), or_621_cse)) OR (fsm_output(1));
        hi_7_sg5_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg5_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(levels_asn_4_itm
            & levels_asn_3_itm), levels_nand_svs))), fsm_output(37))) OR (fsm_output(1));
        hi_7_sg4_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg4_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg5_sva
            & levels_asn_4_itm), levels_nand_svs))), fsm_output(37))) OR (fsm_output(1));
        hi_7_sg3_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg3_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg4_sva
            & hi_7_sg5_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        hi_7_sg2_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg2_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg3_sva
            & hi_7_sg4_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        hi_7_sg1_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg1_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg2_sva
            & hi_7_sg3_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        wi_7_sg8_sva <= (wi_7_sg8_sva AND (NOT (fsm_output(37)))) OR (fsm_output(1));
        wi_7_sg7_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg7_sva & (wi_7_sg8_sva
            AND (NOT levels_nand_svs))), or_621_cse)) AND (NOT (fsm_output(1)));
        wi_7_sg6_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg6_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(levels_asn_15_itm
            & levels_asn_14_itm), levels_nand_svs))), fsm_output(37))) OR (fsm_output(1));
        wi_7_sg5_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg5_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg6_sva
            & levels_asn_15_itm), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        wi_7_sg4_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg4_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg5_sva
            & wi_7_sg6_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        wi_7_sg3_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg3_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg4_sva
            & wi_7_sg5_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        wi_7_sg2_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg2_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg3_sva
            & wi_7_sg4_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        wi_7_sg1_sva <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg1_sva & (MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg2_sva
            & wi_7_sg3_sva), levels_nand_svs))), fsm_output(37))) AND (NOT (fsm_output(1)));
        image_copy_y_1_sva <= (MUX_v_8_2_2(z_out_16 & image_copy_y_1_sva, nor_3_cse))
            AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(1)), 1),8));
        reg_nbLevels_triosy_mgc_io_sync_iswt0_cse <= (fsm_output(41)) AND (NOT (z_out_23(4)));
        reg_start_sync_mgc_bsync_vld_iswt0_cse <= NOT(or_dcpl_580 OR or_dcpl_29 OR
            (fsm_output(35)) OR (fsm_output(1)) OR (fsm_output(40)) OR (fsm_output(42))
            OR (fsm_output(41)) OR (fsm_output(2)) OR or_dcpl_26 OR (fsm_output(11))
            OR (fsm_output(12)) OR (fsm_output(9)) OR or_dcpl_1089 OR or_dcpl_89
            OR or_dcpl_1083 OR or_dcpl_1081 OR (fsm_output(38)) OR (fsm_output(7))
            OR (fsm_output(21)) OR or_dcpl_9 OR or_dcpl_6 OR (fsm_output(39)) OR
            (fsm_output(25)) OR (fsm_output(31)) OR (fsm_output(28)) OR (fsm_output(26))
            OR (fsm_output(27)) OR or_dcpl_585);
        reg_Vga_rsc_singleport_we_core_psct_cse <= fsm_output(39);
        reg_Dst_rsc_singleport_iswt0_cse <= or_1126_rmff;
        reg_Src_rsc_singleport_iswt0_cse <= or_1143_rmff;
        reg_Vga_rsc_singleport_data_in_core_cse <= Dst_rsc_singleport_data_out_mxwt;
        nbLevels_1_sva <= MUX_v_3_2_2(nbLevels_rsc_mgc_in_wire_d & nbLevels_1_sva,
            or_dcpl_580 OR or_dcpl_29 OR (fsm_output(35)) OR (fsm_output(2)) OR or_dcpl_26
            OR or_dcpl_572 OR or_dcpl_21 OR or_dcpl_569 OR (fsm_output(18)) OR (fsm_output(20))
            OR (fsm_output(22)) OR or_dcpl_12 OR (fsm_output(7)) OR (fsm_output(21))
            OR or_dcpl_9 OR or_dcpl_6 OR (fsm_output(25)) OR (fsm_output(31)) OR
            (fsm_output(28)) OR or_dcpl_586 OR or_dcpl_585);
        image_copy_x_1_sva <= (MUX_v_9_2_2(image_copy_x_1_sva_1 & image_copy_x_1_sva,
            NOT((fsm_output(5)) OR (fsm_output(4)) OR (fsm_output(1))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(nor_3_cse,
            1),9));
        copy_y_slc_itm <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(copy_y_slc_itm & (z_out(3))),
            fsm_output(2));
        reg_copy_y_acc_8_psp_cse <= z_out_17;
        image_copy_x_1_sva_1 <= MUX_v_9_2_2(image_copy_x_1_sva_1 & z_out_19, fsm_output(2));
        i_1_sg1_sva_2 <= (MUX_v_2_2_2((i_1_sg1_sva_1(1 DOWNTO 0)) & i_1_sg1_sva_2,
            and_dcpl_16)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(6)),
            1),2));
        image_copy_2_y_1_sva <= (MUX_v_8_2_2(z_out_16 & image_copy_2_y_1_sva, nor_7_cse))
            AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT or_dcpl_585, 1),8));
        image_copy_2_x_1_sva <= (MUX_v_9_2_2(image_copy_2_x_1_sva_1 & image_copy_2_x_1_sva,
            (NOT((fsm_output(40)) OR (fsm_output(41)))) AND and_dcpl_16)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(nor_7_cse,
            1),9));
        Trans_Ond_y_1_sva <= (MUX_v_7_2_2(z_out_20 & Trans_Ond_y_1_sva, NOT((fsm_output(18))
            OR (fsm_output(7))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            (fsm_output(7)), 1),7));
        passe_x_acc_3_cse_sg1 <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((z_out_16(7)) & passe_x_acc_3_cse_sg1),
            or_dcpl_579 OR (fsm_output(10)) OR or_dcpl_572 OR or_dcpl_19 OR (fsm_output(15))
            OR or_dcpl_1083 OR or_dcpl_1081 OR (fsm_output(21)) OR (fsm_output(29))
            OR (fsm_output(19)) OR (fsm_output(30)) OR (fsm_output(25)) OR (fsm_output(28))
            OR or_dcpl_586);
        Trans_Ond_x_1_sva <= (MUX_v_8_2_2(z_out_16 & Trans_Ond_x_1_sva, (fsm_output(17))
            OR (fsm_output(10)) OR or_dcpl_22 OR or_dcpl_569)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            (fsm_output(8)), 1),8));
        exit_passe_y_sva <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(exit_passe_y_sva & (NOT
            (z_out_12(9)))), fsm_output(9));
        Trans_Ond_x_slc_Trans_Ond_x_3_itm <= MUX_v_6_2_2((Trans_Ond_x_1_sva_mx0(5
            DOWNTO 0)) & Trans_Ond_x_slc_Trans_Ond_x_3_itm, and_dcpl_23);
        passe_y_slc_Trans_Ond_x_1_itm <= MUX_v_6_2_2((Trans_Ond_x_1_sva_mx0(5 DOWNTO
            0)) & passe_y_slc_Trans_Ond_x_1_itm, and_dcpl_23);
        passe_y_slc_Trans_Ond_x_1_1_itm <= MUX_v_5_2_2((Trans_Ond_x_1_sva_mx0(4 DOWNTO
            0)) & passe_y_slc_Trans_Ond_x_1_1_itm, and_dcpl_23);
        Trans_Ond_x_slc_Trans_Ond_x_6_itm <= MUX_v_5_2_2((Trans_Ond_x_1_sva_mx0(4
            DOWNTO 0)) & Trans_Ond_x_slc_Trans_Ond_x_6_itm, and_dcpl_23);
        passe_y_acc_13_itm <= MUX_v_17_2_2(passe_y_acc_13_itm & STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2
            & (passe_y_acc_46_sdt_mx0w0(1 DOWNTO 0)) & (Trans_Ond_x_1_sva(5 DOWNTO
            0))) + CONV_UNSIGNED(UNSIGNED'(wi_7_sg8_sva & wi_7_sg7_sva & wi_7_sg6_sva
            & wi_7_sg5_sva & wi_7_sg4_sva & wi_7_sg3_sva & wi_7_sg2_sva & wi_7_sg1_sva),
            17), 17)), fsm_output(9));
        passe_y_acc_51_psp <= MUX_v_9_2_2(passe_y_acc_51_psp & z_out_2, fsm_output(9));
        passe_y_acc_7_itm <= MUX_v_16_2_2(passe_y_acc_7_itm & z_out_1, fsm_output(9));
        passe_y_acc_psp <= MUX_v_8_2_2(passe_y_acc_psp & z_out_15, fsm_output(9));
        passe_y_acc_49_psp <= MUX_v_9_2_2(passe_y_acc_49_psp & STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out_18(8
            DOWNTO 2)), 9) + CONV_UNSIGNED(UNSIGNED(Trans_Ond_y_1_sva & TO_STDLOGICVECTOR('1')),
            9), 9)), fsm_output(9));
        moy_slc_Src_cse_sva <= Src_rsc_singleport_data_out_mxwt;
        sub_sub_return_3_lpi_3_dfm <= MUX1HOT_v_8_3_2((z_out_3(8 DOWNTO 1)) & (z_out_4(8
            DOWNTO 1)) & sub_sub_return_3_lpi_3_dfm, STD_LOGIC_VECTOR'(((fsm_output(11))
            AND (z_out_14(9))) & ((fsm_output(11)) AND (NOT (z_out_14(9)))) & (NOT
            (fsm_output(11)))));
        moy_acc_cse_sg1_sva <= MUX_v_8_2_2(moy_acc_cse_sg1_sva & (z_out_9(8 DOWNTO
            1)), fsm_output(11));
        sub_mux_itm <= MUX_v_8_2_2((z_out_6(8 DOWNTO 1)) & (z_out_5(8 DOWNTO 1)),
            z_out_12(9));
        sub_5_mux_itm <= MUX1HOT_v_8_3_2((z_out_7(8 DOWNTO 1)) & (z_out_8(8 DOWNTO
            1)) & sub_5_mux_itm, STD_LOGIC_VECTOR'(((fsm_output(13)) AND (z_out_13(9)))
            & ((fsm_output(13)) AND (NOT (z_out_13(9)))) & (NOT (fsm_output(13)))));
        moy_5_slc_itm <= MUX_v_8_2_2(moy_5_slc_itm & (z_out_10(8 DOWNTO 1)), fsm_output(13));
        image_copy_1_y_1_sva <= (MUX_v_8_2_2(image_copy_1_y_1_sva_1 & image_copy_1_y_1_sva,
            NOT((fsm_output(36)) OR (fsm_output(31))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            (fsm_output(31)), 1),8));
        levels_nand_svs <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(levels_nand_svs & levels_nand_tmp),
            fsm_output(19));
        Trans_Ond_1_y_1_sva <= (MUX_v_6_2_2(Trans_Ond_1_y_1_sva_1 & Trans_Ond_1_y_1_sva,
            NOT((fsm_output(19)) OR (fsm_output(30))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            (fsm_output(19)), 1),6));
        Trans_Ond_1_x_1_sva <= (MUX_v_7_2_2(z_out_20 & Trans_Ond_1_x_1_sva, or_dcpl_1080
            OR (fsm_output(24)) OR (fsm_output(29)) OR or_1129_cse)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            (fsm_output(20)), 1),7));
        exit_passe_y_1_sva <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(exit_passe_y_1_sva &
            (NOT (z_out_22(8)))), fsm_output(21));
        Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm <= MUX_v_6_2_2((Trans_Ond_1_x_1_sva_mx0(5
            DOWNTO 0)) & Trans_Ond_1_x_slc_Trans_Ond_1_x_1_itm, and_dcpl_33);
        passe_y_1_slc_Trans_Ond_1_x_1_1_itm <= MUX_v_5_2_2((Trans_Ond_1_x_1_sva_mx0(4
            DOWNTO 0)) & passe_y_1_slc_Trans_Ond_1_x_1_1_itm, and_dcpl_33);
        passe_y_1_acc_13_itm <= MUX_v_16_2_2(passe_y_1_acc_13_itm & z_out_1, fsm_output(21));
        passe_y_1_acc_49_psp <= MUX_v_8_2_2(passe_y_1_acc_49_psp & z_out_15, fsm_output(21));
        passe_y_1_acc_7_itm <= MUX_v_15_2_2(passe_y_1_acc_7_itm & STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED((passe_y_1_acc_43_itm(9
            DOWNTO 1)) & (Trans_Ond_1_x_1_sva(5 DOWNTO 0))) + CONV_UNSIGNED(UNSIGNED'(wi_7_sg8_sva
            & wi_7_sg7_sva & wi_7_sg6_sva & wi_7_sg5_sva & wi_7_sg4_sva & wi_7_sg3_sva
            & wi_7_sg2_sva), 15), 15)), fsm_output(21));
        passe_y_1_acc_1_cse_1_sva <= MUX_v_9_2_2(passe_y_1_acc_1_cse_1_sva & (passe_y_1_acc_43_itm(9
            DOWNTO 1)), fsm_output(21));
        passe_y_1_acc_psp <= MUX_v_8_2_2(passe_y_1_acc_psp & STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out_21(7
            DOWNTO 2)), 8) + CONV_UNSIGNED(UNSIGNED(Trans_Ond_1_y_1_sva & TO_STDLOGICVECTOR('1')),
            8), 8)), fsm_output(21));
        sub_sub_return_9_lpi_3_dfm <= MUX1HOT_v_8_3_2((z_out_3(8 DOWNTO 1)) & (z_out_4(8
            DOWNTO 1)) & sub_sub_return_9_lpi_3_dfm, STD_LOGIC_VECTOR'(((fsm_output(23))
            AND (z_out_14(9))) & ((fsm_output(23)) AND (NOT (z_out_14(9)))) & (NOT
            (fsm_output(23)))));
        moy_6_acc_cse_sg1_sva <= MUX_v_8_2_2(moy_6_acc_cse_sg1_sva & (z_out_9(8 DOWNTO
            1)), fsm_output(23));
        sub_6_mux_itm <= MUX_v_8_2_2((z_out_6(8 DOWNTO 1)) & (z_out_7(8 DOWNTO 1)),
            z_out_12(9));
        sub_11_mux_itm <= MUX1HOT_v_8_3_2((z_out_8(8 DOWNTO 1)) & (z_out_5(8 DOWNTO
            1)) & sub_11_mux_itm, STD_LOGIC_VECTOR'(((fsm_output(25)) AND (z_out_13(9)))
            & ((fsm_output(25)) AND (NOT (z_out_13(9)))) & (NOT (fsm_output(25)))));
        moy_11_slc_itm <= MUX_v_8_2_2(moy_11_slc_itm & (z_out_10(8 DOWNTO 1)), fsm_output(25));
        image_copy_1_x_1_sva_2 <= (MUX_v_8_2_2((image_copy_1_x_1_sva_1(7 DOWNTO 0))
            & image_copy_1_x_1_sva_2, (fsm_output(35)) OR (fsm_output(34)))) AND
            STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(32)), 1),8));
        levels_asn_15_itm <= wi_7_sg7_sva;
        levels_asn_14_itm <= wi_7_sg8_sva;
        levels_asn_4_itm <= hi_7_sg6_sva;
        levels_asn_3_itm <= hi_7_sg7_sva;
        exit_copy_y_1_sva <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(exit_copy_y_1_sva & (NOT
            (readindex(STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(image_copy_1_x_1_sva_1
            & TO_STDLOGICVECTOR('1')), 11) + CONV_SIGNED(SIGNED'('1' & (NOT wi_7_sg8_sva)
            & (NOT wi_7_sg7_sva) & (NOT wi_7_sg6_sva) & (NOT wi_7_sg5_sva) & (NOT
            wi_7_sg4_sva) & (NOT wi_7_sg3_sva) & (NOT wi_7_sg2_sva) & (NOT wi_7_sg1_sva)
            & '1'), 11), 11)), 10)))), fsm_output(33));
        image_copy_1_x_slc_image_copy_1_x_1_itm <= MUX_v_6_2_2(((image_copy_1_x_1_sva_2(5
            DOWNTO 0)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(32)),
            1),6))) & image_copy_1_x_slc_image_copy_1_x_1_itm, NOT((fsm_output(32))
            OR (fsm_output(35))));
        copy_y_1_acc_psp <= copy_y_1_acc_psp_1;
        copy_y_2_slc_itm <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(copy_y_2_slc_itm & (z_out(3))),
            fsm_output(38));
        image_copy_2_x_1_sva_1 <= MUX_v_9_2_2(image_copy_2_x_1_sva_1 & z_out_19,
            fsm_output(38));
        reg_copy_y_acc_7_psp_6_cse <= z_out_18(1 DOWNTO 0);
        reg_passe_y_acc_46_sdt_tmp_7 <= MUX_v_2_2_2(reg_passe_y_acc_46_sdt_tmp_7
            & (passe_y_acc_46_sdt_mx0w0(1 DOWNTO 0)), fsm_output(9));
        reg_passe_y_acc_43_sdt_tmp_6 <= MUX_v_2_2_2(reg_passe_y_acc_43_sdt_tmp_6
            & (passe_y_acc_43_sdt_mx0w0(1 DOWNTO 0)), fsm_output(9));
        reg_passe_y_acc_44_sdt_tmp_7 <= MUX_v_2_2_2(reg_passe_y_acc_44_sdt_tmp_7
            & (z_out_18(1 DOWNTO 0)), fsm_output(9));
        reg_slc_slc_tmp_5 <= MUX_v_2_2_2(reg_slc_slc_tmp_5 & (passe_y_1_acc_45_itm(2
            DOWNTO 1)), fsm_output(21));
        reg_passe_y_1_acc_44_sdt_tmp_6 <= MUX_v_2_2_2(reg_passe_y_1_acc_44_sdt_tmp_6
            & (z_out_21(1 DOWNTO 0)), fsm_output(21));
      END IF;
    END IF;
  END PROCESS;
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(z_out_19(8 DOWNTO
      6)), 4) + UNSIGNED'("1011"), 4));
  mux_83_nl <= MUX_v_2_2_2((passe_y_acc_43_sdt_mx0w0(1 DOWNTO 0)) & (passe_y_1_acc_45_itm(2
      DOWNTO 1)), fsm_output(21));
  mux_126_nl <= MUX_v_6_2_2((Trans_Ond_x_1_sva(5 DOWNTO 0)) & (Trans_Ond_1_x_1_sva(5
      DOWNTO 0)), fsm_output(21));
  mux_84_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg7_sva & wi_7_sg8_sva), fsm_output(21));
  mux_127_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg6_sva & wi_7_sg7_sva), fsm_output(21));
  mux_128_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg5_sva & wi_7_sg6_sva), fsm_output(21));
  mux_129_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg4_sva & wi_7_sg5_sva), fsm_output(21));
  mux_130_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg3_sva & wi_7_sg4_sva), fsm_output(21));
  mux_131_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg2_sva & wi_7_sg3_sva), fsm_output(21));
  mux_132_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(wi_7_sg1_sva & wi_7_sg2_sva), fsm_output(21));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_15 & (mux_83_nl) & (mux_126_nl))
      + CONV_UNSIGNED(UNSIGNED'((wi_7_sg8_sva AND (NOT (fsm_output(21)))) & (mux_84_nl)
      & (mux_127_nl) & (mux_128_nl) & (mux_129_nl) & (mux_130_nl) & (mux_131_nl)
      & (mux_132_nl)), 16), 16));
  mux_85_nl <= MUX_v_8_2_2(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(passe_y_acc_46_sdt_mx0w0(8
      DOWNTO 2)), 8) + CONV_UNSIGNED(UNSIGNED'(hi_7_sg7_sva & hi_7_sg6_sva & hi_7_sg5_sva
      & hi_7_sg4_sva & hi_7_sg3_sva & hi_7_sg2_sva & hi_7_sg1_sva), 8), 8)) & STD_LOGIC_VECTOR'('1'
      & (NOT hi_7_sg7_sva) & (NOT hi_7_sg6_sva) & (NOT hi_7_sg5_sva) & (NOT hi_7_sg4_sva)
      & (NOT hi_7_sg3_sva) & (NOT hi_7_sg2_sva) & '1'), fsm_output(30));
  mux_86_nl <= MUX_v_7_2_2(Trans_Ond_y_1_sva & (Trans_Ond_1_y_1_sva_1 & TO_STDLOGICVECTOR('1')),
      fsm_output(30));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_85_nl), 9)
      + CONV_UNSIGNED(UNSIGNED(mux_86_nl), 9), 9));
  mux_133_cse <= MUX_v_8_2_2(moy_slc_Src_cse_sva & reg_Vga_rsc_singleport_data_in_core_cse,
      or_1240_cse);
  mux_134_nl <= MUX_v_8_2_2((NOT Src_rsc_singleport_data_out_mxwt) & (NOT Dst_rsc_singleport_data_out_mxwt),
      or_1240_cse);
  z_out_3 <= (readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_133_cse
      & TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED((mux_134_nl) & TO_STDLOGICVECTOR('1')),
      10), 10)), 1, 9)) & TO_STDLOGICVECTOR('0');
  mux_136_cse <= MUX_v_8_2_2((NOT moy_slc_Src_cse_sva) & (NOT reg_Vga_rsc_singleport_data_in_core_cse),
      or_1240_cse);
  mux_135_cse <= MUX_v_8_2_2(Src_rsc_singleport_data_out_mxwt & Dst_rsc_singleport_data_out_mxwt,
      or_1240_cse);
  z_out_4 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_135_cse &
      TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED(mux_136_cse & TO_STDLOGICVECTOR('1')),
      10), 10));
  mux_87_nl <= MUX_v_8_2_2(moy_acc_cse_sg1_sva & mux_43_cse, fsm_output(25));
  mux_88_nl <= MUX_v_8_2_2((NOT (z_out_9(8 DOWNTO 1))) & (NOT sub_sub_return_9_lpi_3_dfm),
      fsm_output(25));
  z_out_5 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((mux_87_nl) &
      TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED((mux_88_nl) & TO_STDLOGICVECTOR('1')),
      10), 10));
  mux_90_nl <= MUX_v_8_2_2((NOT moy_acc_cse_sg1_sva) & (NOT moy_6_acc_cse_sg1_sva),
      fsm_output(25));
  z_out_6 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((z_out_9(8 DOWNTO
      1)) & TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED((mux_90_nl) & TO_STDLOGICVECTOR('1')),
      10), 10));
  mux_91_nl <= MUX_v_8_2_2(sub_sub_return_3_lpi_3_dfm & moy_6_acc_cse_sg1_sva, fsm_output(25));
  mux_92_nl <= MUX_v_8_2_2((NOT mux_43_cse) & (NOT (z_out_9(8 DOWNTO 1))), fsm_output(25));
  z_out_7 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((mux_91_nl) &
      TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED((mux_92_nl) & TO_STDLOGICVECTOR('1')),
      10), 10));
  mux_93_nl <= MUX_v_8_2_2(mux_43_cse & sub_sub_return_9_lpi_3_dfm, fsm_output(25));
  mux_94_nl <= MUX_v_8_2_2((NOT sub_sub_return_3_lpi_3_dfm) & (NOT mux_43_cse), fsm_output(25));
  z_out_8 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED((mux_93_nl) &
      TO_STDLOGICVECTOR('1')), 10) + CONV_UNSIGNED(UNSIGNED((mux_94_nl) & TO_STDLOGICVECTOR('1')),
      10), 10));
  z_out_9 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_133_cse),
      9) + CONV_UNSIGNED(UNSIGNED(mux_135_cse), 9), 9));
  mux_97_nl <= MUX_v_8_2_2(sub_sub_return_3_lpi_3_dfm & sub_sub_return_9_lpi_3_dfm,
      fsm_output(25));
  z_out_10 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_97_nl), 9)
      + CONV_UNSIGNED(UNSIGNED(mux_43_cse), 9), 9));
  mux_99_nl <= MUX_v_8_2_2(moy_6_acc_cse_sg1_sva & moy_acc_cse_sg1_sva, fsm_output(13));
  z_out_11 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_99_nl), 9)
      + CONV_UNSIGNED(UNSIGNED(z_out_9(8 DOWNTO 1)), 9), 9));
  mux_137_nl <= MUX_v_8_2_2(STD_LOGIC_VECTOR'((NOT wi_7_sg8_sva) & (NOT wi_7_sg7_sva)
      & (NOT wi_7_sg6_sva) & (NOT wi_7_sg5_sva) & (NOT wi_7_sg4_sva) & (NOT wi_7_sg3_sva)
      & (NOT wi_7_sg2_sva) & (NOT wi_7_sg1_sva)) & (z_out_9(8 DOWNTO 1)), (fsm_output(13))
      OR (fsm_output(25)));
  mux1h_102_nl <= MUX1HOT_v_8_3_2((NOT moy_acc_cse_sg1_sva) & (NOT moy_6_acc_cse_sg1_sva)
      & z_out_16, STD_LOGIC_VECTOR'((fsm_output(13)) & (fsm_output(25)) & (fsm_output(9))));
  z_out_12 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR('1')
      & (mux_137_nl) & TO_STDLOGICVECTOR('1')), 11) + CONV_UNSIGNED(UNSIGNED((mux1h_102_nl)
      & TO_STDLOGICVECTOR('1')), 11), 11));
  mux_102_nl <= MUX_v_8_2_2((NOT sub_sub_return_3_lpi_3_dfm) & (NOT sub_sub_return_9_lpi_3_dfm),
      fsm_output(25));
  z_out_13 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR('1')
      & mux_43_cse & TO_STDLOGICVECTOR('1')), 11) + CONV_UNSIGNED(UNSIGNED((mux_102_nl)
      & TO_STDLOGICVECTOR('1')), 11), 11));
  mux_138_nl <= MUX_v_8_2_2(Src_rsc_singleport_data_out_mxwt & Dst_rsc_singleport_data_out_mxwt,
      (fsm_output(25)) OR (fsm_output(23)));
  z_out_14 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR('1')
      & (mux_138_nl) & TO_STDLOGICVECTOR('1')), 11) + CONV_UNSIGNED(UNSIGNED(mux_136_cse
      & TO_STDLOGICVECTOR('1')), 11), 11));
  mux_103_nl <= MUX_v_7_2_2(Trans_Ond_y_1_sva & STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR(hi_7_sg7_sva)
      & (passe_y_1_acc_45_itm(7 DOWNTO 3))), 7) + CONV_UNSIGNED(UNSIGNED'(hi_7_sg6_sva
      & hi_7_sg5_sva & hi_7_sg4_sva & hi_7_sg3_sva & hi_7_sg2_sva), 7), 7)), fsm_output(21));
  mux_104_nl <= MUX_v_6_2_2((passe_y_acc_43_sdt_mx0w0(7 DOWNTO 2)) & Trans_Ond_1_y_1_sva,
      fsm_output(21));
  z_out_15 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_103_nl),
      8) + CONV_UNSIGNED(UNSIGNED(mux_104_nl), 8), 8));
  mux1h_105_nl <= MUX1HOT_s_1_3_2(STD_LOGIC_VECTOR'((image_copy_y_1_sva(7)) & (image_copy_2_y_1_sva(7))
      & (Trans_Ond_x_1_sva(7))), STD_LOGIC_VECTOR'((fsm_output(5)) & (fsm_output(41))
      & (fsm_output(9))));
  mux1h_111_nl <= MUX1HOT_v_7_5_2((image_copy_y_1_sva(6 DOWNTO 0)) & (image_copy_2_y_1_sva(6
      DOWNTO 0)) & STD_LOGIC_VECTOR'((NOT hi_7_sg7_sva) & (NOT hi_7_sg6_sva) & (NOT
      hi_7_sg5_sva) & (NOT hi_7_sg4_sva) & (NOT hi_7_sg3_sva) & (NOT hi_7_sg2_sva)
      & (NOT hi_7_sg1_sva)) & (Trans_Ond_x_1_sva(6 DOWNTO 0)) & STD_LOGIC_VECTOR'((NOT
      wi_7_sg8_sva) & (NOT wi_7_sg7_sva) & (NOT wi_7_sg6_sva) & (NOT wi_7_sg5_sva)
      & (NOT wi_7_sg4_sva) & (NOT wi_7_sg3_sva) & (NOT wi_7_sg2_sva)), STD_LOGIC_VECTOR'((fsm_output(5))
      & (fsm_output(41)) & (fsm_output(7)) & (fsm_output(9)) & (fsm_output(20))));
  z_out_16 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR((mux1h_105_nl)
      OR (fsm_output(7)) OR (fsm_output(20))) & (mux1h_111_nl)) + UNSIGNED'("00000001"),
      8));
  mux_105_nl <= MUX_v_8_2_2(image_copy_y_1_sva & image_copy_2_y_1_sva, fsm_output(38));
  z_out_17 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux_105_nl),
      9) + CONV_UNSIGNED(UNSIGNED(z_out_18(7 DOWNTO 2)), 9), 9));
  mux1h_106_nl <= MUX1HOT_v_8_4_2(image_copy_y_1_sva & (Trans_Ond_y_1_sva & TO_STDLOGICVECTOR('1'))
      & image_copy_1_y_1_sva & image_copy_2_y_1_sva, STD_LOGIC_VECTOR'((fsm_output(2))
      & (fsm_output(9)) & (fsm_output(33)) & (fsm_output(38))));
  mux1h_107_nl <= MUX1HOT_v_3_4_2((image_copy_x_1_sva(8 DOWNTO 6)) & (Trans_Ond_x_1_sva(7
      DOWNTO 5)) & (TO_STDLOGICVECTOR('0') & (image_copy_1_x_1_sva_2(7 DOWNTO 6)))
      & (image_copy_2_x_1_sva(8 DOWNTO 6)), STD_LOGIC_VECTOR'((fsm_output(2)) & (fsm_output(9))
      & (fsm_output(33)) & (fsm_output(38))));
  z_out_18 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(mux1h_106_nl),
      9) + CONV_UNSIGNED(UNSIGNED(mux1h_107_nl), 9), 9));
  mux1h_108_nl <= MUX1HOT_v_9_3_2(image_copy_x_1_sva & STD_LOGIC_VECTOR'('1' & (NOT
      wi_7_sg8_sva) & (NOT wi_7_sg7_sva) & (NOT wi_7_sg6_sva) & (NOT wi_7_sg5_sva)
      & (NOT wi_7_sg4_sva) & (NOT wi_7_sg3_sva) & (NOT wi_7_sg2_sva) & (NOT wi_7_sg1_sva))
      & image_copy_2_x_1_sva, STD_LOGIC_VECTOR'((fsm_output(2)) & ((fsm_output(8))
      OR (fsm_output(32))) & (fsm_output(38))));
  z_out_19 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mux1h_108_nl) + UNSIGNED'("000000001"),
      9));
  mux1h_109_nl <= MUX1HOT_v_7_3_2(Trans_Ond_y_1_sva & STD_LOGIC_VECTOR'('1' & (NOT
      hi_7_sg7_sva) & (NOT hi_7_sg6_sva) & (NOT hi_7_sg5_sva) & (NOT hi_7_sg4_sva)
      & (NOT hi_7_sg3_sva) & (NOT hi_7_sg2_sva)) & Trans_Ond_1_x_1_sva, STD_LOGIC_VECTOR'((fsm_output(18))
      & (fsm_output(19)) & (fsm_output(21))));
  z_out_20 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mux1h_109_nl) + UNSIGNED'("0000001"),
      7));
  mux_107_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg7_sva & (Trans_Ond_1_y_1_sva(5))),
      fsm_output(21));
  mux_140_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg6_sva & (Trans_Ond_1_y_1_sva(4))),
      fsm_output(21));
  mux_123_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg5_sva & (Trans_Ond_1_y_1_sva(3))),
      fsm_output(21));
  mux_124_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg4_sva & (Trans_Ond_1_y_1_sva(2))),
      fsm_output(21));
  mux_125_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg3_sva & (Trans_Ond_1_y_1_sva(1))),
      fsm_output(21));
  mux_141_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'(hi_7_sg2_sva & (Trans_Ond_1_y_1_sva(0))),
      fsm_output(21));
  mux_108_nl <= MUX_v_2_2_2((Trans_Ond_x_1_sva(7 DOWNTO 6)) & (Trans_Ond_1_x_1_sva(6
      DOWNTO 5)), fsm_output(21));
  z_out_21 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED'((mux_107_nl)
      & (mux_140_nl) & (mux_123_nl) & (mux_124_nl) & (mux_125_nl) & (mux_141_nl)
      & (hi_7_sg1_sva OR (fsm_output(21)))), 8) + CONV_UNSIGNED(UNSIGNED(mux_108_nl),
      8), 8));
  mux_109_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg7_sva) & (NOT wi_7_sg8_sva)),
      fsm_output(21));
  mux_142_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg6_sva) & (NOT wi_7_sg7_sva)),
      fsm_output(21));
  mux_143_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg5_sva) & (NOT wi_7_sg6_sva)),
      fsm_output(21));
  mux_144_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg4_sva) & (NOT wi_7_sg5_sva)),
      fsm_output(21));
  mux_145_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg3_sva) & (NOT wi_7_sg4_sva)),
      fsm_output(21));
  mux_146_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg2_sva) & (NOT wi_7_sg3_sva)),
      fsm_output(21));
  mux_147_nl <= MUX_s_1_2_2(STD_LOGIC_VECTOR'((NOT hi_7_sg1_sva) & (NOT wi_7_sg2_sva)),
      fsm_output(21));
  z_out_22 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED'('1' & (mux_109_nl)
      & (mux_142_nl) & (mux_143_nl) & (mux_144_nl) & (mux_145_nl) & (mux_146_nl)
      & (mux_147_nl) & '1'), 10) + CONV_UNSIGNED(UNSIGNED(z_out_20 & TO_STDLOGICVECTOR('1')),
      10), 10));
  z_out_23 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR('1') & (z_out_16(7
      DOWNTO 4))) + UNSIGNED'("00001"), 5));
END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Main_Trans_Ond_Opt
--  Generated from file(s):
--    3) $PROJECT_HOME/Rendu/src/CPP_for_Catapult/Main_Trans_Ond_opt.cpp
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.funcs.ALL;
USE work.mgc_ioport_comps.ALL;
USE work.Main_Trans_Ond_Opt_mux_pkg.ALL;


ENTITY Main_Trans_Ond_Opt IS
  PORT(
    start : IN STD_LOGIC;
    done : OUT STD_LOGIC;
    nbLevels_rsc_z : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
    nbLevels_triosy_lz : OUT STD_LOGIC;
    Src_triosy_lz : OUT STD_LOGIC;
    Dst_triosy_lz : OUT STD_LOGIC;
    Vga_triosy_lz : OUT STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    Src_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Src_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Src_rsc_singleport_re : OUT STD_LOGIC;
    Src_rsc_singleport_we : OUT STD_LOGIC;
    Src_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Dst_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Dst_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Dst_rsc_singleport_re : OUT STD_LOGIC;
    Dst_rsc_singleport_we : OUT STD_LOGIC;
    Dst_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Vga_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    Vga_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
    Vga_rsc_singleport_re : OUT STD_LOGIC;
    Vga_rsc_singleport_we : OUT STD_LOGIC;
    Vga_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END Main_Trans_Ond_Opt;

ARCHITECTURE v2 OF Main_Trans_Ond_Opt IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL Src_rsc_singleport_data_in_core : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Src_rsc_singleport_addr_core : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL Src_rsc_singleport_re_core_sct : STD_LOGIC;
  SIGNAL Src_rsc_singleport_we_core_sct : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_data_in_core : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Dst_rsc_singleport_addr_core : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL Dst_rsc_singleport_re_core_sct : STD_LOGIC;
  SIGNAL Dst_rsc_singleport_we_core_sct : STD_LOGIC;
  SIGNAL Vga_rsc_singleport_data_in_core : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Vga_rsc_singleport_addr_core : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL Vga_rsc_singleport_we_core_sct : STD_LOGIC;
  SIGNAL nbLevels_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL mgc_start_sync_mgc_bsync_vld_vd : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_rd_core_sct : STD_LOGIC;
  SIGNAL Vga_triosy_mgc_io_sync_ld_core_sct : STD_LOGIC;
  SIGNAL Dst_triosy_mgc_io_sync_ld_core_sct : STD_LOGIC;
  SIGNAL Src_triosy_mgc_io_sync_ld_core_sct : STD_LOGIC;
  SIGNAL nbLevels_triosy_mgc_io_sync_ld_core_sct : STD_LOGIC;

  SIGNAL nbLevels_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL nbLevels_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (2 DOWNTO 0);

  COMPONENT Main_Trans_Ond_Opt_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      Src_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      Dst_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      Src_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      Src_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      Src_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      Src_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      Dst_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      Dst_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      Dst_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      Dst_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      Vga_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      Vga_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      Vga_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      nbLevels_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
      mgc_start_sync_mgc_bsync_vld_vd : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
      Vga_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      Dst_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      Src_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC;
      nbLevels_triosy_mgc_io_sync_ld_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_out : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_out : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_in_core : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_addr_core : STD_LOGIC_VECTOR
      (16 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_in_core : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_addr_core : STD_LOGIC_VECTOR
      (16 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_data_in_core : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_addr_core : STD_LOGIC_VECTOR
      (16 DOWNTO 0);
  SIGNAL Main_Trans_Ond_Opt_core_inst_nbLevels_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR
      (2 DOWNTO 0);

BEGIN
  -- Default Constant Signal Assignments

  nbLevels_rsc_mgc_in_wire : work.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 4,
      width => 3
      )
    PORT MAP(
      d => nbLevels_rsc_mgc_in_wire_d_1,
      z => nbLevels_rsc_mgc_in_wire_z
    );
  nbLevels_rsc_mgc_in_wire_d <= nbLevels_rsc_mgc_in_wire_d_1;
  nbLevels_rsc_mgc_in_wire_z <= nbLevels_rsc_z;

  mgc_start_sync_mgc_bsync_vld : work.mgc_ioport_comps.mgc_bsync_vld
    GENERIC MAP(
      rscid => 5,
      ready => 0,
      valid => 1
      )
    PORT MAP(
      vd => mgc_start_sync_mgc_bsync_vld_vd,
      vz => start
    );
  mgc_done_sync_mgc_bsync_rdy : work.mgc_ioport_comps.mgc_bsync_rdy
    GENERIC MAP(
      rscid => 6,
      ready => 1,
      valid => 0
      )
    PORT MAP(
      rd => mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      rz => done
    );
  Vga_triosy_mgc_io_sync : work.mgc_ioport_comps.mgc_io_sync
    PORT MAP(
      ld => Vga_triosy_mgc_io_sync_ld_core_sct,
      lz => Vga_triosy_lz
    );
  Dst_triosy_mgc_io_sync : work.mgc_ioport_comps.mgc_io_sync
    PORT MAP(
      ld => Dst_triosy_mgc_io_sync_ld_core_sct,
      lz => Dst_triosy_lz
    );
  Src_triosy_mgc_io_sync : work.mgc_ioport_comps.mgc_io_sync
    PORT MAP(
      ld => Src_triosy_mgc_io_sync_ld_core_sct,
      lz => Src_triosy_lz
    );
  nbLevels_triosy_mgc_io_sync : work.mgc_ioport_comps.mgc_io_sync
    PORT MAP(
      ld => nbLevels_triosy_mgc_io_sync_ld_core_sct,
      lz => nbLevels_triosy_lz
    );
  Main_Trans_Ond_Opt_core_inst : Main_Trans_Ond_Opt_core
    PORT MAP(
      clk => clk,
      rst => rst,
      Src_rsc_singleport_data_out => Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_out,
      Dst_rsc_singleport_data_out => Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_out,
      Src_rsc_singleport_data_in_core => Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_in_core,
      Src_rsc_singleport_addr_core => Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_addr_core,
      Src_rsc_singleport_re_core_sct => Src_rsc_singleport_re_core_sct,
      Src_rsc_singleport_we_core_sct => Src_rsc_singleport_we_core_sct,
      Dst_rsc_singleport_data_in_core => Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_in_core,
      Dst_rsc_singleport_addr_core => Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_addr_core,
      Dst_rsc_singleport_re_core_sct => Dst_rsc_singleport_re_core_sct,
      Dst_rsc_singleport_we_core_sct => Dst_rsc_singleport_we_core_sct,
      Vga_rsc_singleport_data_in_core => Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_data_in_core,
      Vga_rsc_singleport_addr_core => Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_addr_core,
      Vga_rsc_singleport_we_core_sct => Vga_rsc_singleport_we_core_sct,
      nbLevels_rsc_mgc_in_wire_d => Main_Trans_Ond_Opt_core_inst_nbLevels_rsc_mgc_in_wire_d,
      mgc_start_sync_mgc_bsync_vld_vd => mgc_start_sync_mgc_bsync_vld_vd,
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct => mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      Vga_triosy_mgc_io_sync_ld_core_sct => Vga_triosy_mgc_io_sync_ld_core_sct,
      Dst_triosy_mgc_io_sync_ld_core_sct => Dst_triosy_mgc_io_sync_ld_core_sct,
      Src_triosy_mgc_io_sync_ld_core_sct => Src_triosy_mgc_io_sync_ld_core_sct,
      nbLevels_triosy_mgc_io_sync_ld_core_sct => nbLevels_triosy_mgc_io_sync_ld_core_sct
    );
  Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_out <= Src_rsc_singleport_data_out;
  Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_out <= Dst_rsc_singleport_data_out;
  Src_rsc_singleport_data_in_core <= Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_data_in_core;
  Src_rsc_singleport_addr_core <= Main_Trans_Ond_Opt_core_inst_Src_rsc_singleport_addr_core;
  Dst_rsc_singleport_data_in_core <= Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_data_in_core;
  Dst_rsc_singleport_addr_core <= Main_Trans_Ond_Opt_core_inst_Dst_rsc_singleport_addr_core;
  Vga_rsc_singleport_data_in_core <= Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_data_in_core;
  Vga_rsc_singleport_addr_core <= Main_Trans_Ond_Opt_core_inst_Vga_rsc_singleport_addr_core;
  Main_Trans_Ond_Opt_core_inst_nbLevels_rsc_mgc_in_wire_d <= nbLevels_rsc_mgc_in_wire_d;

  Src_rsc_singleport_data_in <= Src_rsc_singleport_data_in_core;
  Src_rsc_singleport_addr <= Src_rsc_singleport_addr_core;
  Src_rsc_singleport_re <= NOT Src_rsc_singleport_re_core_sct;
  Src_rsc_singleport_we <= NOT Src_rsc_singleport_we_core_sct;
  Dst_rsc_singleport_data_in <= Dst_rsc_singleport_data_in_core;
  Dst_rsc_singleport_addr <= Dst_rsc_singleport_addr_core;
  Dst_rsc_singleport_re <= NOT Dst_rsc_singleport_re_core_sct;
  Dst_rsc_singleport_we <= NOT Dst_rsc_singleport_we_core_sct;
  Vga_rsc_singleport_data_in <= Vga_rsc_singleport_data_in_core;
  Vga_rsc_singleport_addr <= Vga_rsc_singleport_addr_core;
  Vga_rsc_singleport_re <= '1';
  Vga_rsc_singleport_we <= NOT Vga_rsc_singleport_we_core_sct;
END v2;



