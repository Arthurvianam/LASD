cd /home/runner
export PATH=/usr/bin:/bin:/tool/pandora64/bin:/usr/share/Riviera-PRO/bin:/usr/local/bin
export RIVIERA_HOME=/usr/share/Riviera-PRO
export CPLUS_INCLUDE_PATH=/usr/share/Riviera-PRO/interfaces/include
export OVL_DIR=/playground_lib/std_ovl_v2p8.1
export ALDEC_LICENSE_FILE=27009@10.116.0.5
export HOME=/home/runner
vlib work && vlog '-timescale' '1ns/1ns' +libext+.v+.vlib -y $OVL_DIR +incdir+$OVL_DIR design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  ; echo 'Creating result.zip...' && zip -r /tmp/tmp_zip_file_123play.zip . && mv /tmp/tmp_zip_file_123play.zip result.zip