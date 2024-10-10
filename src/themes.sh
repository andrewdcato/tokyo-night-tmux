#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"

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

THEME['ghgreen']="#50fa7b"
THEME['ghmagenta']="#bd93f9"
THEME['ghred']="#ff5555"
THEME['ghyellow']="#f1fa8c"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
