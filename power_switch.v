`default_nettype none
module power_switch (
   input wire gate,
   input wire vcc,
   input wire vss
   );

   assign vss = gate;

endmodule
