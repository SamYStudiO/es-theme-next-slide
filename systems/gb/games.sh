list=(
# Edit game list below (full game list available from ./data/games folder)
super_mario_land
tetris_gb
the_legend_of_zelda_links_awakening
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml