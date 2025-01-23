{ pkgs, ... }:

{
  users.users.reuben = {
    isNormalUser = true;
    description = "Reuben Bennett";
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      # games
      prismlauncher

      brave
      discord
      vscode-fhs
      bibata-cursors
      flameshot
      blender
    ];
    shell = pkgs.fish;
  };

  programs.fish.enable = true;
  programs.steam.enable = true;
}
