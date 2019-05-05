# if not running interactively, early return
# `.profile` is used by all bourne-again compatible shells. The double square
# brackets test is not supported by all of them. Same with the globbing string
# comparison, which is not supported by mksh either.
#
# https://github.com/neeasade/dotfiles/commit/76d6eb378c8057a7484c7563ec347e635d72640f

case "$-" in
	*i*) ;;
	*) return;;
esac

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

for file in $HOME/shell.d/*; do
	. $file
done
