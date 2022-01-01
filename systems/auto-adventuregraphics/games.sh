list=(
# Edit game list below (full game list available from ./data/games folder)
maniac_mansion_apple2_scummvm
myst
ranma_hiryu_densetsu
simon_the_sorcerer
the_secret_of_monkey_island_macintosh_pc_scummvm
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml