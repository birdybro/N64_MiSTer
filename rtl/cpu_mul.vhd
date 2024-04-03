library IEEE;
use IEEE.std_logic_1164.all;  
use IEEE.numeric_std.all;   

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity cpu_mul is
   port 
   (
      clk       : in  std_logic;
      sign      : in  std_logic;
      value1_in : in  std_logic_vector(63 downto 0);        
      value2_in : in  std_logic_vector(63 downto 0);      
      result    : out std_logic_vector(127 downto 0)
   );
end entity;

architecture arch of cpu_mul is
     
  
   
begin 

      
   altera_mult_add_component : altera_mult_add
   generic map (
      number_of_multipliers  => 1,
      width_a  => 64,
      width_b  => 64,
      width_result  => 128,
      output_register  => "CLOCK0",
      output_aclr  => "NONE",
      output_sclr  => "NONE",
      multiplier1_direction  => "ADD",
      port_addnsub1  => "PORT_UNUSED",
      addnsub_multiplier_register1  => "UNREGISTERED",
      addnsub_multiplier_aclr1  => "NONE",
      addnsub_multiplier_sclr1  => "NONE",
      multiplier3_direction  => "ADD",
      port_addnsub3  => "PORT_UNUSED",
      addnsub_multiplier_register3  => "UNREGISTERED",
      addnsub_multiplier_aclr3  => "NONE",
      addnsub_multiplier_sclr3  => "NONE",
      use_subnadd  => "NO",
      representation_a  => "UNSIGNED",
      port_signa  => "PORT_USED",
      signed_register_a  => "UNREGISTERED",
      signed_aclr_a  => "NONE",
      signed_sclr_a  => "NONE",
      port_signb  => "PORT_USED",
      representation_b  => "UNSIGNED",
      signed_register_b  => "UNREGISTERED",
      signed_aclr_b  => "NONE",
      signed_sclr_b  => "NONE",
      input_register_a0  => "UNREGISTERED",
      input_register_a1  => "UNREGISTERED",
      input_register_a2  => "UNREGISTERED",
      input_register_a3  => "UNREGISTERED",
      input_aclr_a0  => "NONE",
      input_aclr_a1  => "NONE",
      input_aclr_a2  => "NONE",
      input_aclr_a3  => "NONE",
      input_sclr_a0  => "NONE",
      input_sclr_a1  => "NONE",
      input_sclr_a2  => "NONE",
      input_sclr_a3  => "NONE",
      input_register_b0  => "UNREGISTERED",
      input_register_b1  => "UNREGISTERED",
      input_register_b2  => "UNREGISTERED",
      input_register_b3  => "UNREGISTERED",
      input_aclr_b0  => "NONE",
      input_aclr_b1  => "NONE",
      input_aclr_b2  => "NONE",
      input_aclr_b3  => "NONE",
      input_sclr_b0  => "NONE",
      input_sclr_b1  => "NONE",
      input_sclr_b2  => "NONE",
      input_sclr_b3  => "NONE",
      scanouta_register  => "UNREGISTERED",
      scanouta_aclr  => "NONE",
      scanouta_sclr  => "NONE",
      input_source_a0  => "DATAA",
      input_source_a1  => "DATAA",
      input_source_a2  => "DATAA",
      input_source_a3  => "DATAA",
      input_source_b0  => "DATAB",
      input_source_b1  => "DATAB",
      input_source_b2  => "DATAB",
      input_source_b3  => "DATAB",
      multiplier_register0  => "UNREGISTERED",
      multiplier_register1  => "UNREGISTERED",
      multiplier_register2  => "UNREGISTERED",
      multiplier_register3  => "UNREGISTERED",
      multiplier_aclr0  => "NONE",
      multiplier_aclr1  => "NONE",
      multiplier_aclr2  => "NONE",
      multiplier_aclr3  => "NONE",
      multiplier_sclr0  => "NONE",
      multiplier_sclr1  => "NONE",
      multiplier_sclr2  => "NONE",
      multiplier_sclr3  => "NONE",
      preadder_mode  => "SIMPLE",
      preadder_direction_0  => "ADD",
      preadder_direction_1  => "ADD",
      preadder_direction_2  => "ADD",
      preadder_direction_3  => "ADD",
      width_c  => 16,
      input_register_c0  => "UNREGISTERED",
      input_register_c1  => "UNREGISTERED",
      input_register_c2  => "UNREGISTERED",
      input_register_c3  => "UNREGISTERED",
      input_aclr_c0  => "NONE",
      input_aclr_c1  => "NONE",
      input_aclr_c2  => "NONE",
      input_aclr_c3  => "NONE",
      input_sclr_c0  => "NONE",
      input_sclr_c1  => "NONE",
      input_sclr_c2  => "NONE",
      input_sclr_c3  => "NONE",
      width_coef  => 18,
      coefsel0_register  => "UNREGISTERED",
      coefsel1_register  => "UNREGISTERED",
      coefsel2_register  => "UNREGISTERED",
      coefsel3_register  => "UNREGISTERED",
      coefsel0_aclr  => "NONE",
      coefsel1_aclr  => "NONE",
      coefsel2_aclr  => "NONE",
      coefsel3_aclr  => "NONE",
      coefsel0_sclr  => "NONE",
      coefsel1_sclr  => "NONE",
      coefsel2_sclr  => "NONE",
      coefsel3_sclr  => "NONE",
      coef0_0  => 0,
      coef0_1  => 0,
      coef0_2  => 0,
      coef0_3  => 0,
      coef0_4  => 0,
      coef0_5  => 0,
      coef0_6  => 0,
      coef0_7  => 0,
      coef1_0  => 0,
      coef1_1  => 0,
      coef1_2  => 0,
      coef1_3  => 0,
      coef1_4  => 0,
      coef1_5  => 0,
      coef1_6  => 0,
      coef1_7  => 0,
      coef2_0  => 0,
      coef2_1  => 0,
      coef2_2  => 0,
      coef2_3  => 0,
      coef2_4  => 0,
      coef2_5  => 0,
      coef2_6  => 0,
      coef2_7  => 0,
      coef3_0  => 0,
      coef3_1  => 0,
      coef3_2  => 0,
      coef3_3  => 0,
      coef3_4  => 0,
      coef3_5  => 0,
      coef3_6  => 0,
      coef3_7  => 0,
      accumulator  => "NO",
      accum_direction  => "ADD",
      use_sload_accum_port  => "NO",
      loadconst_value  => 64,
      accum_sload_register  => "UNREGISTERED",
      accum_sload_aclr  => "NONE",
      accum_sload_sclr  => "NONE",
      double_accum  => "NO",
      width_chainin  => 1,
      chainout_adder  => "NO",
      chainout_adder_direction  => "ADD",
      port_negate  => "PORT_UNUSED",
      negate_register  => "UNREGISTERED",
      negate_aclr  => "NONE",
      negate_sclr  => "NONE",
      systolic_delay1  => "UNREGISTERED",
      systolic_aclr1  => "NONE",
      systolic_sclr1  => "NONE",
      systolic_delay3  => "UNREGISTERED",
      systolic_aclr3  => "NONE",
      systolic_sclr3  => "NONE",
      latency  => 1,
      input_a0_latency_clock  => "CLOCK0",
      input_a1_latency_clock  => "UNREGISTERED",
      input_a2_latency_clock  => "UNREGISTERED",
      input_a3_latency_clock  => "UNREGISTERED",
      input_a0_latency_aclr  => "NONE",
      input_a1_latency_aclr  => "NONE",
      input_a2_latency_aclr  => "NONE",
      input_a3_latency_aclr  => "NONE",
      input_a0_latency_sclr  => "NONE",
      input_a1_latency_sclr  => "NONE",
      input_a2_latency_sclr  => "NONE",
      input_a3_latency_sclr  => "NONE",
      input_b0_latency_clock  => "CLOCK0",
      input_b1_latency_clock  => "UNREGISTERED",
      input_b2_latency_clock  => "UNREGISTERED",
      input_b3_latency_clock  => "UNREGISTERED",
      input_b0_latency_aclr  => "NONE",
      input_b1_latency_aclr  => "NONE",
      input_b2_latency_aclr  => "NONE",
      input_b3_latency_aclr  => "NONE",
      input_b0_latency_sclr  => "NONE",
      input_b1_latency_sclr  => "NONE",
      input_b2_latency_sclr  => "NONE",
      input_b3_latency_sclr  => "NONE",
      input_c0_latency_clock  => "UNREGISTERED",
      input_c1_latency_clock  => "UNREGISTERED",
      input_c2_latency_clock  => "UNREGISTERED",
      input_c3_latency_clock  => "UNREGISTERED",
      input_c0_latency_aclr  => "NONE",
      input_c1_latency_aclr  => "NONE",
      input_c2_latency_aclr  => "NONE",
      input_c3_latency_aclr  => "NONE",
      input_c0_latency_sclr  => "NONE",
      input_c1_latency_sclr  => "NONE",
      input_c2_latency_sclr  => "NONE",
      input_c3_latency_sclr  => "NONE",
      coefsel0_latency_clock  => "UNREGISTERED",
      coefsel1_latency_clock  => "UNREGISTERED",
      coefsel2_latency_clock  => "UNREGISTERED",
      coefsel3_latency_clock  => "UNREGISTERED",
      coefsel0_latency_aclr  => "NONE",
      coefsel1_latency_aclr  => "NONE",
      coefsel2_latency_aclr  => "NONE",
      coefsel3_latency_aclr  => "NONE",
      coefsel0_latency_sclr  => "NONE",
      coefsel1_latency_sclr  => "NONE",
      coefsel2_latency_sclr  => "NONE",
      coefsel3_latency_sclr  => "NONE",
      signed_latency_clock_a  => "CLOCK0",
      signed_latency_aclr_a  => "NONE",
      signed_latency_sclr_a  => "NONE",
      signed_latency_clock_b  => "CLOCK0",
      signed_latency_aclr_b  => "NONE",
      signed_latency_sclr_b  => "NONE",
      addnsub_multiplier_latency_clock1  => "UNREGISTERED",
      addnsub_multiplier_latency_aclr1  => "NONE",
      addnsub_multiplier_latency_sclr1  => "NONE",
      addnsub_multiplier_latency_clock3  => "UNREGISTERED",
      addnsub_multiplier_latency_aclr3  => "NONE",
      addnsub_multiplier_latency_sclr3  => "NONE",
      accum_sload_latency_clock  => "UNREGISTERED",
      accum_sload_latency_aclr  => "NONE",
      accum_sload_latency_sclr  => "NONE",
      negate_latency_clock  => "UNREGISTERED",
      negate_latency_aclr  => "NONE",
      negate_latency_sclr  => "NONE",
      selected_device_family  => "Cyclone V"
   )
   port map
   (
      clock0  => clk,
      dataa   => value1_in,
      datab   => value2_in,
      signa   => sign,
      signb   => sign,
      result  => result
   );

end architecture;




