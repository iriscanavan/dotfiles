.PHONY: install

default:
	@# vim-plug
	@if [ ! -f ~/.vim/autoload/plug.vim ]; then \
		echo "vim-plug not found. Installing..."; \
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; \
	else \
		echo "vim-plug is already installed."; \
	fi

install:
	stow .

clean:
	stow -D .

sync:
	git pull
