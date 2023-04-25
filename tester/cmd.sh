iverilog -g2005-sv -l ../*.sv -l ../basic-blocks/*.sv *.sv
vvp a.out --vcd
if test "$1" = "-g"; then
    gtkwave tb.vcd
fi
