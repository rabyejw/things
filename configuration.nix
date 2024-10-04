{ config, pkgs, ... }: { imports = [ ./hardware-configuration.nix ];
  boot.loader.systemd-boot.enable = true; boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixos"; networking.networkmanager.enable = true;
  time.timeZone = "America/Chicago"; i18n.defaultLocale = "en_US.UTF-8";

  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = true;
  services.xserver.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [ oxygen ];

  services.xserver.xkb = { layout = "us"; variant = ""; }; 
  services.printing.enable = true; services.libinput.enable = true;
  hardware.pulseaudio.enable = false; security.rtkit.enable = true;
  services.pipewire = { enable = true; alsa.enable = true; alsa.support32Bit = true; pulse.enable = true; };
 
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nixoslogin = { isNormalUser = true; description = "nixosname"; 
  extraGroups = [ "networkmanager" "wheel" ]; packages = with pkgs; [
librewolf
kate
xclip wl-clipboard
yakuake

    ]; };

  programs.neovim = { enable = true; defaultEditor = true;
    configure = {
      customRC = '' 

    '';
    packages.myVimPackage = with pkgs.vimPlugins; {
    # loaded on launch
    start = [ ];
    # manually loadable by calling ':packadd $plugin-name'
    opt = [ ]; }; }; };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  services.fwupd.enable = true;
  #hardware.bluetooth.enable = true;
  programs.partition-manager.enable = true;
  #services.tlp.enable = true; services.power-profiles-daemon.enable = false;
  programs.git = { enable = true; package = pkgs.gitFull; };
  #programs.tmux.enable = true;
  #services.openssh.enable = true;

  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "nixoslogin";
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [];
  system.stateVersion = "24.11";
  }
