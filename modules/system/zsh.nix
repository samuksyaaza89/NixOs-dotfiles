{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    promptInit = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    '';

    autosuggestions.enable = true;

    syntaxHighlighting = {
      enable = true;
      styles = {
        command = "fg=#6d28d9";
        sudo = "fg=#6d28d9,bold";
        builtin = "fg=#6d28d9";
        function = "fg=#6d28d9";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    zsh-powerlevel10k
  ];
}
