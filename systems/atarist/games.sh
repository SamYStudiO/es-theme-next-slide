list=(
# Edit game list below (full game list available from ./data/games folder)
another_world
bubble_bobble
defender_of_the_crown
prince_of_persia
the_secret_of_monkey_island
turrican_ii
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml