load Pipe16.hdl,
output-file Pipe16.out,
compare-to Pipe16.cmp,
output-list in%B1.16.1 out%B1.16.1;

set in %B0000000000000000,
eval,
output;

set in %B1111111111111111,
eval,
output;

set in %B0000000000000001,
eval,
output;

set in %B1001101000110110,
eval,
output;
