list=(
# Edit game list below (full game list available from ./data/games folder)
cauliflower_power
lemmings
lode_runner
lumines_ii
prince_of_persia
puyo_puyo_2
railway
tetris
# Do not edit below this line
)

games="$(IFS=,; printf '%s' "${list[*]}")"
sed -i "s/random(.*)/random(${games})/" game_theme_color_accent.xml
sed -i "s/random(.*)/random(${games})/" game_theme_gamelist.xml
sed -i "s/random(.*)/random(${games})/" game_theme_system.xml
sed -i "s/random(.*)/random(${games})/" game_theme_music.xml