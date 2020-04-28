#!/bin/bash
echo Installing ZSH + Extras - Only works for Ubuntu/Debian
sudo apt install zsh gdebi -y
echo Programs installed.
#echo Configure Shell
#chsh --shell /etc/zsh
echo Configuring Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
cp -f ./zshrc  ~/.zshrc
cp -f ./p10k.zsh ~/.p10k.zsh
#sed -i 's/gerhartz/$USER/g' ~/.zshrc
cp ./bash_aliases ~/.bash_aliases
#Add and Turn on syntax highlighting in Nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
cp -f ./nanorc ~/.nanorc
#echo Install a Nerd Font
# you can modify this if you want a different font.
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Roboto Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
fc-cache -f
echo You must change the font of your termianl to the installed Roboto Mono font in order for glyphs to work.  Or comment out the "nerd-font" line in your ~/.zshrc file
echo Restart your terminal for changes to take effect.
exec zsh
