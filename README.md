niri
wiremix
extra/ttf-cascadia-mono-nerd
rofi
libnewt
wl-clipboard
wlsunset


Within the root of this repo, just run `stow .`

Just requires gnustow - `pacman -S stow`

## KITTY ##

cd ~/.config/kitty

a symlink is created between thems and the theme.conf

## HYPRPAPER $$

The wallpaper is store in hypr - which requires the pathing to be exact. Maybe make this a folder that can be stowed to a seperate folder in the .config

## BTOP ##
to get btop theme working, we need to create a symlink to the btop/themes/current.theme dir using our symlink of current theme:
ln -snf ~/.config/preferences/current/theme/btop.theme ~/.config/btop/themes/current.theme

I did it this way to not have to create a dir in the current theme so all the files are nice and organized by configs.
