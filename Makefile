all:
	ln -s "$$(pwd)" "$$HOME/.config/leftwm"

force:
	ln -sf "$$(pwd)" "$$HOME/.config/leftwm"

.PHONY: all force
