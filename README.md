# Install instructions

copy these files to the following subdirectories inside caravel_user_project:

* power_switch.gds -> ./gds/
* power_switch.lef -> ./lef/
* macro.cfg -> ./openlane/user_project_wrapper/
* config.json -> ./openlane/user_project_wrapper/
* user_project_wrapper.v -> ./verilog/rtl/
* power_switch.v -> ./verilog/rtl/

# Magic

Start magic like this:

    magic -d XR power_switch.mag -rcfile sky130A.magicrc 

After drawing the MOSFET and labelling the ports with the menu text -> label option, I used these commands
to create the ports and write the lef & gds.

    port vss use ground
    port vcc use power
    port vss class inout
    port vcc class inout

    lef write -hide
    gds write power_switch.gds

