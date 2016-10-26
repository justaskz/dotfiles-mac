#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.fn2commandL 1
/bin/echo -n .
$cli set remap.iso_swap_tilda_section 1
/bin/echo -n .
$cli set remap.KPReturn_to_Ctrl_O 1
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
/bin/echo
