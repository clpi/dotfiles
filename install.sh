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

install_pony() {
    curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/ponylang/ponyup/latest-release/ponyup-init.sh)
}

install_qpm() {
    curl -O https://www.qpm.io/download/v0.11.0/linux_386/qpm && install -m 755 ./qpm /usr/local/bin/
}

install_from_qpm() {
    qpm install com.github.benlau.quickandroid
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
    \ wlroots-devel wlroots wf-config wf-config-devel umr radeontop rocm-smi
    \ googler aha alot gsettings-qt
    sudo dnf install -y pulseaudio-libs-devel libxcb-devel openssl-devel ncurses-devel dbus-devel
    \ bcc


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
    \ binaryen supercollider faust youtube-dl abook qconf kf5-knewstuff-devel
    \ latencytop grsync hotspot ddd ddcontrol-gtk qoauth protobuf flatbuffers fann
    \ 3mux socialscan

    sudo dnf install -y zsh-autosuggestions zsh-syntax-highlight
    sudo dnf install gtkglext-libs   libdazzle typelib-1_0-Retro-1-0  uget spread-sheet-widget libreport-gtk libpeas-gtk libinfinity-gtk libinfinity-gtk-devel  libchamplain-gtk
    \ libhandy1 libhandy1-devel libhandy libhandy-devel
    # install exodus

    echo "Installing dev tools/languages..."
    sudo dnf install -y scala perl ruby ruby-devel pylint poetry postgresql pkgconf openssl
    \ openssl-devel nodejs npm meson make lua llvm lldb luajit coffee-script haxe ghc git
    \ haskell-platform gdb ghostscript gcc gcc-c++ docker-compose ctags ctags-etags
    \ cmake clojure cloc clang clang-devel ccls catimg buildah aws aws-doc ansible
    \ ansible-bender anaconda R R-core golang racket texlive-scheme-medium pandoc mathjax
    \ fswatch entr cockpit-selinux qt5-qtquickcontrols-examples fluid qqc2-desktop-style
    \ qt5-qtquickcontrols2-devel
    \ libgnomeui libgnomecanvasmm26 qt5-designer kf5-kross-ui kf5-sonnet-ui
    \ kf5-kguiaddons-devel qt5-qttools-libs-designer qt-designer-plugin-webkit qt5-qttools-libs-designercomponents qtkeychain csound Coin4 gamescope
    sudo dnf install R-sodium


    echo "Installing miscellaneous..."
    sudo dnf install -y fontawesome-fonts fira-code-fonts bspwm bpytop awesome
    \ awesome-vim-colorschemes avahi-tools nmap
    \ qt5-qtdeclarative qt5-qtdeclarative-devel qt5-qtdeclarative-examples qwt
    \ qwtplot3d qwt-qt5 qwt-qt5-devel qt5-ct qt5-qtcanvas3d qt5-qtconfiguration
    \ neovim-qt glade-devel kf5-knewstuff gtk+extra gtk+extra-devel libhandy libsexy
    \ gtk-layer-shell granite avahi-ui eclipse-swt gsequencer-devel gtk-layer-shell
    \ libinfinity cegui xbae libfm-gtk libxfce4ui anaconda-widgets
    \ libgnomeui libyui daw hyena gnet2 nunit gnet2-devel
    \ kwin-common wayland-logout waylandpp waylandpp-devel weston wlcs
    \ egl-wayland egl-wayland-devel ibus-wayland qt5-qtwayland-devel qt5-qtwayland-examples
    # look up wayland libs
    # maybe: ming64-goocanvas2 ? has a lot of different deps.
    # maybe gcr gd ghc-vty gnet2 gnet2-devel

}

sync_directories() {
    rsync -azP /home/chrisp/div/_div.is root@div.is:/src
    rsync -azP /home/chrisp/div/_io.div.is root@io.div.is:/src
}

install_from_pip() {
    echo "Installing from npm"
    pip3 install youtube-dl pynvim pywal autotiling cloudformation-cli
    \ cloudformation-cli-python-plugin jupyter-lab jupyter-notebook epy rainbowstream
    \ carbon-now-cli pnpm firebase-tools nativescript
}

install_deno() {
    curl -fsSL https://deno.land/x/install/install.sh | sh
}

install_from_npm() {
    echo "Installing from npm"
    sudo npm i -g fx preact-cli vercel@latest netlify-cli expo-cli ghost-cli yo resume-cli
    \ coinmon ignite-cli @vue/cli @aws/amplify-cli
}

install_from_cargo() {
    echo "Installing from rust"
    cargo install sqlx pastel dijo cargo-generate cargo-bloat https
    \ cargo-make cargo-flamegraph cargo-watch cargo-edit cargo-wasi
    \ carco-cache ffsend bandwhich spotify-tui spotifyd ncspot
    \ simple-http-server
}

install_from_flatpak() {
    flatpak install runtime/org.freedesktop.Sdk.Extension.rust-nightly/x86_64/20.08
    flatpak install zig
    flatpak install GNOME
}

install_from_copr() {
    sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
    sudo dnf -y install packer
    sudo dnf copr enable atim/nushell -y && sudo dnf install nushell -y
}

install_from_go() {
    go get github.com/miguelmota/cointop
}
pip packages
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
    brew install achannarasappa/tap/ticker

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
