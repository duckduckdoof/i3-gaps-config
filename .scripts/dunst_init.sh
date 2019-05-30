#!/usr/bin/env bash

# Source generated colors from wal
source "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
	font="FontAwesome 12"
	geometry="300x5-10+35"

	pkill dunst
	dunst -config ~/.config/dunst/dunstrc \
		-geom "" \
		-fn "${font}" \
		-lb "${color0:-#F0F0F0}" \
		-nb "${color0:-#F0F0F0}" \
		-cb "${color0:-#F0F0F0}" \
		-lf "${color15:=#000000}" \
		-bf "${color15:=#000000}" \
		-cf "${color15:=#000000}" \
		-nf "${color15:=#000000}" \
		-lfr "${color2:=#000000}" \
		-nfr "${color2:=#000000}" \
		-cfr "${color2:=#000000}" &
}

main() {
	reload_dunst &
}

main
