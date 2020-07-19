cd "$(dirname "$0")" || exit

kotlinc -script ./make-shell.kts ./prepare.template.txt ../
kotlinc -script ./make-shell.kts ./build.template.txt ../
