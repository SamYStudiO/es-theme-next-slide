list=(
# Edit game list below (full game list available from ./data/games folder)
metroid_zero_mission
metroid_zero_mission
the_legend_of_zelda_the_minish_cap
the_legend_of_zelda_the_minish_cap_a0
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml