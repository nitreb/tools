#!/bin/bash

keypress=''
plot_output_path=/tmp/show_mem.plt

echo "Monitoring ram usage. Press 's' to stop and plot."

while [ "$keypress" != "s" ]; do
ps -C $0 -o pid=,%mem=,vsz= >> /tmp/mem.log
gnuplot ${plot_output_path}
sleep 1
done &

echo "Plot can be found in ${plot_output_path}"