list=(
# Edit game list below (full game list available from ./data/games folder)
bubble_bobble
defender_of_the_crown_amiga600_atarist_c64
lode_runner
maniac_mansion_c64
prince_of_persia_amiga600_apple2_amstradcpc_c64
turrican_ii_c64
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml