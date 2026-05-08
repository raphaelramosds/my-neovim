.PHONY: font

font:
	wget -O JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
	unzip JetBrainsMono.zip -d JetBrainsMono-Nerd-Font/
	cp -r JetBrainsMono-Nerd-Font/*.ttf /usr/share/fonts
	fc-cache -vr

clean:
	rm -rf JetBrainsMono* 
