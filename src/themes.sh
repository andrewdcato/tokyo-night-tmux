#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @cato-theme-tmux_theme)"

case $SELECTED_THEME in
"dracula")
  declare -A THEME=(
    ["background"]="#282a36"
    ["foreground"]="#f8f8f2"

    ["black"]="#191a21"
    ["blue"]="#8Be9fd" # dracula doesn't have blue, so just dupe cyan
    ["cyan"]="#8Be9fd"
    ["green"]="#50fa7b"
    ["magenta"]="#bd93f9"
    ["red"]="#ff5555"
    ["white"]="#abb2bf"
    ["yellow"]="#f1fa8c"

    ["bblack"]="#44475A"
    ["bblue"]="#D6ACFF"
    ["bcyan"]="#A4FFFF"
    ["bgreen"]="#69FF94"
    ["bmagenta"]="#FF92DF"
    ["bred"]="#FF6E6E"
    ["bwhite"]="#FFFFFF"
    ["byellow"]="#FFFFA5"
  )
  ;;

"catppucin-macchiato")
  declare -A THEME=(
    ["background"]="#24273a" # base
    ["foreground"]="#cad3f5" # text

    ["black"]="#494d64" # surface1
    ["red"]="#ed8796"
    ["green"]="#a6da95"
    ["yellow"]="#eed49f"
    ["blue"]="#8aadf4"
    ["magenta"]="#f5bde6" # pink
    ["cyan"]="#91d7e3" # sky
    ["white"]="#a5adcb" # subtext0

    ["bblack"]="#5b6078" # surface2
    ["bred"]="#ee99a0" # maroon
    ["bgreen"]="#8bd5ca" # teal
    ["byellow"]="#f5a97f" # peach
    ["bblue"]="#7dc4e4" # sapphire
    ["bmagenta"]="#f0c6c6" #flamingo
    ["bcyan"]="#8bd5ca" # teal
    ["bwhite"]="#b8c0e0" # subtext1
  )
  ;;

"catppucin-mocha")
  declare -A THEME=(
    ["background"]="#1e1e2e" # base
    ["foreground"]="#cdd6f4" # text

    ["black"]="#45475a" # surface1
    ["red"]="#f38ba8"
    ["green"]="#a6e3a1"
    ["yellow"]="#f9e2af"
    ["blue"]="#89b4fa"
    ["magenta"]="#f5c2e7" # pink
    ["cyan"]="#89dceb" # sky
    ["white"]="#a6adc8" # subtext0

    ["bblack"]="#585b70" # surface2
    ["bred"]="#eba0ac" # maroon
    ["bgreen"]="#94e2d5" # teal
    ["byellow"]="#fab387" # peach
    ["bblue"]="#74c7ec" # sapphire
    ["bmagenta"]="#f2cdcd" #flamingo
    ["bcyan"]="#94e2d5" # teal
    ["bwhite"]="#FFFFFF" # subtext1

    ['ghgreen']="#a6e3a1"
    ['ghmagenta']="#f5c2e7"
    ['ghred']="#eba0ac"
    ['ghyellow']="#fab387"
  )
  ;;

"nord")
  declare -A THEME=(
    ["background"]="#232831"
    ["foreground"]="#abb1bb"
    ["black"]="#3b4252"
    ["blue"]="#81a1c1"
    ["cyan"]="#88c0d0"
    ["green"]="#a3be8c"
    ["magenta"]="#b48ead"
    ["red"]="#bf616a"
    ["white"]="#e5e9f0"
    ["yellow"]="#ebcb8b"


    ["bblack"]="#465780"
    ["bblue"]="#8cafd2"
    ["bcyan"]="#93ccdc"
    ["bgreen"]="#b1d196"
    ["bmagenta"]="#c895bf"
    ["bred"]="#d06f79"
    ["bwhite"]="#e7ecf4"
    ["byellow"]="#f0d399"
  )
  ;;

"storm")
  declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"day")
  declare -A THEME=(
    ["background"]="#d5d6db"
    ["foreground"]="#343b58"
    ["black"]="#0f0f14"
    ["blue"]="#34548a"
    ["cyan"]="#0f4b6e"
    ["green"]="#33635c"
    ["magenta"]="#5a4a78"
    ["red"]="#8c4351"
    ["white"]="#343b58"
    ["yellow"]="#8f5e15"

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#1A1B26"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#c0caf5"
    ["yellow"]="#e0af68"

    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
