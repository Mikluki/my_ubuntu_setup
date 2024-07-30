# About
This repo contains app configs, settings and keybindings for my ubuntu setup as well scripts for automatic import and installation.

```
├── apps
│   ├── cmus
│   ├── Code
│   ├── input-remapper-2
│   ├── nomacs
│   ├── sublime
│   ├── terminator
│   └── vis
├── import_config.sh
├── install_basic.sh
├── install_settings_keybindings.sh
└── settings_n_keybindings
    └── import_settings_keybindings.sh

```

## [About settings and keybindings]( https://askubuntu.com/questions/682513/how-to-backup-restore-system-custom-keyboard-shortcuts )

Gnome-Control-Center (used by Unity and Gnome Shell) stores its key bindings in the per-user Dconf database directories /org/gnome/desktop/wm/keybindings/ and /org/gnome/settings-daemon/plugins/media-keys/ (source).

- The easiest way to keep them across system re-installations is to keep the per-user configuration directories (~/.config or more specifically ~/.config/dconf/user for Dconf only). Most of the time it's not necessary or desirable to purge the per-user configuration files anyway.

- If you can't or won't keep your old Dconf database you can use the dconf command to export (“dump”) parts of it into a file and import (“load”) it later. The relevant Dconf directories are

    - /org/gnome/desktop/wm/keybindings/ for pre-defined shortcuts and
    - /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ for custom, user-defined shortcuts.

The following example saves the above Dconf directories to two files keybindings.dconf and custom-keybindings.dconf and then restores them from the same files:
```
    dconf dump '/org/gnome/desktop/wm/keybindings/' > keybindings.dconf
    dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > custom-keybindings.dconf

    dconf load '/org/gnome/desktop/wm/keybindings/' < keybindings.dconf
    dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < custom-keybindings.dconf
```

## [Extensions](https://askubuntu.com/questions/166721/how-to-backup-and-restore-downloaded-gnome-shell-extensions)

Extensions often do not have the best compatability between version, so importing them blindly not a good idea. Better option is to install form scratch.

## Appearance
apps - adapta-Teal-Nokto-Eta
cursors - Breeze_cursors
icons - Papirus-Dark
shell - Flat-Remix-Teal-Dark-fullPanel

### Fonts
interface Text - Ubuntu Regular 14
Document Text - Sans Regular 12
Monospace Text - Ubuntu Mono Regular 12
Legacy Window Titles - Ubuntu Bold 12

