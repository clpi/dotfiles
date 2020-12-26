#!/usr/bin/env bash

gen_home_folders() {
    mkdir -p ~/wiki ~/doc/mail/gmail/INBOX ~/dl ~/doc/wiki/pub ~/doc/wiki/priv ~/lab ~/div ~/proj ~/mus ~/vid ~/bin ~/tmpl ~/pub
}

gen_imap_certs() {
    mkdir ~/doc/.cert
    openssl s_client -connect imap.gmail.com -showcerts 2>&1 < /dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | sed -ne '1,/-END CERTIFICATE-/p' > ~/.cert/some.imap.server.pem
}

install_brave_fedora() {
    sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
    sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
    sudo dnf install brave-browser
}

install_netdata() {
    bash <(curl -Ss https://my-netdata.io/kickstart.sh)
}

install_nix() {
    curl -L https://nixos.org/nix/install | sh
    . ~/.nix-profile/etc/profile.d/nix.sh
}

# for fedora
install_fedora() {
    echo "Installing utilities..."
    sudo dnf install light sway wlogout wofi xterm alacritty pactl zsh neovim wev
    \ wl-gammactl wl-clipboard wlc wob wev wshowkeys waypipe wayvnc wdisplays
    \ wf-recorder waybar lsd exa zoxide tre ncdu swayidle swaylock swaybg swappy
    \ slurp sgtk-menu nwg-launchers vim-enhanced runc ripgrep fd-find pavucontrol pass
    \ mako kanshi imv vimiv mpv zathura dunst dnf-utils dnf-plugins-core bemenu azote
    \ yank dnf-plugins-core inotify-tools wayfire wayfire-devel glibmm24 glibmm24-devel
    \ wlroots-devel wlroots wf-config wf-config-devel
    sudo dnf install -y pulseaudio-libs-devel libxcb-devel openssl-devel ncurses-devel dbus-devel


    echo "Installing applications..."
    sudo dnf install -y weechat w3m w3m-img taskwarrior timew vit timetrap vte vis
    \ vagrant podman podman-compose moby-engine toolbox cockpit tmux tokei
    \ thefuck the_silver_searcher tig sxhkd stow skim skopeo sen scim screen rsync
    \ rclone rclone-browser qutebrowser ranger nnn qt-creator podman-plugins podman-tests
    \ pgcli notmuch notmuch-vim alot alpine mutt newsboat neofetch ncmpcpp cmus mpd nano
    \ micro st xterm kitty lynx elinks mailcap khal latexmk calcurse ledger hledger less
    \ kdeconnectd kde-connect kakoune jq irssi hyperfine htop highlight bat fzf glances
    \ gitui firefox emacs diskonaut cockpit-podman apvlv attr aria2 asciinema ack
    \ alacritty-terminfo cage gtk-layer-shell wayland-utils tiny lxc
    \ firefox-wayland spotify-tui spotifyd git-delta grip syncthing wabt mujs leveldb vile
    \ binaryen supercollider faust youtube-dl abook
    sudo dnf install -y zsh-autosuggestions zsh-syntax-highlight
    # install exodus

    echo "Installing dev tools/languages..."
    sudo dnf install -y scala perl ruby ruby-devel pylint poetry postgresql pkgconf openssl
    \ openssl-devel nodejs npm meson make lua llvm lldb luajit coffee-script haxe ghc git
    \ haskell-platform gdb ghostscript gcc gcc-c++ docker-compose ctags ctags-etags
    \ cmake clojure cloc clang clang-devel ccls catimg buildah aws aws-doc ansible
    \ ansible-bender anaconda R R-core golang racket texlive-scheme-medium pandoc mathjax
    \ fswatch entr


    echo "Installing miscellaneous..."
    sudo dnf install -y fontawesome-fonts fira-code-fonts bspwm bpytop awesome
    \ awesome-vim-colorschemes avahi-tools nmap

}

sync_directories() {
    rsync -azP /home/chrisp/div/_div.is root@div.is:/src
    rsync -azP /home/chrisp/div/_io.div.is root@io.div.is:/src
}

install_from_pip() {
    echo "Installing from npm"
    pip3 install youtube-dl pynvim pywal autotiling cloudformation-cli
    \ cloudformation-cli-python-plugin jupyter-lab jupyter-notebook epy rainbowstream
    \ carbon-now-cli pnpm
}

install_deno() {
    curl -fsSL https://deno.land/x/install/install.sh | sh
}

install_from_npm() {
    echo "Installing from npm"
    sudo npm i -g fx preact-cli vercel@latest netlify-cli expo-cli ghost-cli
}

install_from_cargo() {
    echo "Installing from rust"
    cargo install sqlx pastel dijo cargo-generate cargo-bloat https
    \ cargo-make cargo-flamegraph cargo-watch cargo-edit cargo-wasi
    \ carco-cache ffsend bandwhich spotify-tui spotifyd ncspot
    \ simple-http-server
}

install_from_copr() {
    sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
    sudo dnf -y install packer
    sudo dnf copr enable atim/nushell -y && sudo dnf install nushell -y
}

install_from_go() {
    go get github.com/miguelmota/cointop
}

install_rust() {
    echo "Installing rust"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # TODO
}

install_nim() {
    echo "Installing nim"
    curl https://nim-lang.org/choosenim/init.sh -sSf | sh # TODO
    nimble install nimlsp
}

install_linuxbrew() {
    curl "Installing LinuxBrew"
    curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
}

install_from_brew() {
    brew install zig doctl
}

install_geany_with_plugins() {
    sudo dnf install geany geany-plugins-automark geany-plugins-autoclose
    \ geany-plugins-codenav geany-plugins-treebrowser geany-plugins-git-changebar
    \ geany-plugins-overview geany-plugins-scope geany-plugins-geanygendoc
    \ geany-plugins-geanyextrasel geany-plugins-geanynumberedbookmarks
    \ geany-plugins-lineoperations geany-plugins-workbench geany-plugins-projectorganiser
    \ geany-themes geany-plugins-geanyvc geany-plugins-updatechecker geany-plugins-latex
    \ geany-plugins-geanyprj geany-plugins-pohelper geany-plugins-pairtaghighlighter
    \ geany-plugins-geanydoc geany-plugins-geanymacro geany-plugins-common geany-plugins-commander
    \ geany-plugins-addons geany-plugins-geanyctags geany-plugins-geanyminiscript
    \ geany-plugins-debugger
    sudo dnf install ldc-phobos-geany-tags gtkd-geany-tags # autocomplete
}

install_omz() {
    curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
}

install_wasmtime() {
    curl https://wasmtime.dev/install.sh -sSf | bash
}


install_fedora
install_rust
install_nim
install_from_pip
install_from_npm
install_from_cargo
cp -r ./* ~/
nvim +PlugInstall +qa
