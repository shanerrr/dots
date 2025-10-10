wiremix
extra/ttf-cascadia-mono-nerd
rofi

Within the root of this repo, just run `stow .`

Just requires gnustow - `pacman -S stow`

## KITTY ##

cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf

a symlink is created between thems and the theme.conf

## HYPRPAPER $$

The wallpaper is store in hypr - which requires the pathing to be exact. Maybe make this a folder that can be stowed to a seperate folder in the .config
