{
    packageOverrides = pkgs: with pkgs; {
        myPackages = pkgs.buildEnv {
            name = "ivars-tools";
            paths = [
                bash-completion
                neovim
                nodejs_22
                starship
                fd
                ripgrep
                fzf
                lazygit
                rustc
                ruby
                zoxide
                bat
                eza
            ];
        };
    };
}
