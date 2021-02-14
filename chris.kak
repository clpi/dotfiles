# palenight theme

# This was ported from https://github.com/drewtempelmeyer/palenight.vim

evaluate-commands %sh{
    red=rgb:ff9090
    light_red=rgb:ffa0a0
    dark_red=rgb:ff5458
    green=rgb:95ffa4
    yellow=rgb:ffe9aa
    dark_yellow=rgb:ffb378
    blue=rgb:91ddff
    dark_blue=rgb:65b2ff
    purple=rgb:e99fff
    dark_purple=rgb:906cff
    cyan=rgb:aaffe4
    dark_cyan=rgb:63f2f1
    white=rgb:cbe3e7
    black=rgb:1e1c31
    comment_grey=rgb:565575
    gutter_fg_grey=rgb:151329
    cursor_grey=rgb:a6b3cc
    visual_grey=rgb:565575
    menu_grey=rgb:302e43
    special_grey=rgb:272040
    vertsplit=rgb:151328
    visual_black=rgb:373052

    printf "%s\n" "
    # Code
    face global value         $green
    face global type          $blue
    face global function      $purple
    face global variable      $white
    face global identifier    $green
    face global string        $yellow
    face global module        $green
    face global error         $dark_red+u
    face global keyword       $red+b
    face global operator      $cyan
    face global attribute     $red+b
    face global comment       $comment_grey+i
    face global documentation $cyan+i

    # #include <...>
    face global meta       $yellow+b
    face global builtin    $red+b

    # Markup
    face global title  $blue
    face global header $cyan
    face global mono   $green
    face global block  $purple
    face global link   $cyan
    face global bullet $cyan
    face global list   $yellow

    # Builtin
    face global Default            $white,$black

    face global PrimarySelection   $black,$white+bfg
    face global SecondarySelection $black,$white+fg

    face global PrimaryCursor      $white,$blue+bfg
    face global SecondaryCursor    $black,$dark_blue+fg

    face global PrimaryCursorEol   $black,$cursor_grey+fg
    face global SecondaryCursorEol $black,$visual_grey+fg

    face global LineNumbers        $visual_grey,$vertsplit
    face global LineNumberCursor   $green,$vertsplit
    face global LineNumbersWrapped   $visual_grey,$vertsplit

    # Bottom menu:
    # text + background
    face global MenuBackground     $white,$visual_black
    face global MenuForeground     $visual_black,$green

    # completion menu info
    face global MenuInfo           $white,$visual_black+i

    # assistant, [+]
    face global Information        $white,$black

    face global Error              $dark_red,$vertsplit
    face global StatusLine         $white,$vertsplit

    # Status line
    face global StatusLineMode     $white,$black # insert, prompt, enter key ...
    face global StatusLineInfo     $white,$visual_grey # 1 sel
    face global StatusLineValue    $white,$visual_grey # param=value, reg=value. ex: \"ey
    face global StatusCursor       $white,$purple+bg

    face global Prompt             $green,$black # :
    face global MatchingChar       $purple+b         # (), {}
    face global BufferPadding      $gutter_fg_grey,$black   # EOF tildas (~)

    # Whitespace characters
    face global Whitespace         $gutter_fg_grey,$black+fg
    "
}
