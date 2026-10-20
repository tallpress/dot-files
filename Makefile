PACKAGES := zsh tmux git vim nvim mise aerospace alacritty bat k9s lf zed tmux-sessionizer scripts
STOW := stow --target=$(HOME) --verbose=1

.PHONY: help stow-dry stow unstow restow brew brew-dump alacritty-themes bootstrap

help:
	@echo "make bootstrap        brew + stow + alacritty-themes (new laptop)"
	@echo "make stow-dry         show what stow would link, change nothing"
	@echo "make stow             link all packages into \$$HOME"
	@echo "make unstow           remove all links"
	@echo "make restow           unstow + stow (after adding/removing files)"
	@echo "make brew             install everything in Brewfile"
	@echo "make brew-dump        overwrite Brewfile from what is installed"
	@echo "make alacritty-themes clone alacritty-theme into ~/.config/alacritty/themes"

stow-dry:
	$(STOW) --no $(PACKAGES)

stow:
	$(STOW) $(PACKAGES)

unstow:
	$(STOW) --delete $(PACKAGES)

restow:
	$(STOW) --restow $(PACKAGES)

brew:
	brew bundle install --file=Brewfile

brew-dump:
	brew bundle dump --file=Brewfile --force

alacritty-themes:
	@if [ -d $(HOME)/.config/alacritty/themes ]; then \
		echo "~/.config/alacritty/themes exists, skipping"; \
	else \
		git clone https://github.com/alacritty/alacritty-theme $(HOME)/.config/alacritty/themes; \
	fi

bootstrap: brew stow alacritty-themes
