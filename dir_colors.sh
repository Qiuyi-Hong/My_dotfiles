# Exact Solarized color theme for the color GNU ls utility.
# Designed for dircolors (GNU coreutils) 5.97
#
# This simple theme was simultaneously designed for these terminal color schemes:
# - Solarized dark  (best)
# - Solarized light (best)
# - default dark
# - default light
#
# How the colors were selected:
# - Terminal emulators often have an option typically enabled by default that makes
#   bold a different color.  It is important to leave this option enabled so that
#   you can access the entire 16-color Solarized palette, and not just 8 colors.
# - We favor universality over a greater number of colors.  So we limit the number
#   of colors so that this theme will work out of the box in all terminals,
#   Solarized or not, dark or light.
# - We choose to have the following category of files:
#   NORMAL & FILE, DIR, LINK, EXEC and
#   editable text including source, unimportant text, binary docs & multimedia source
#   files, viewable multimedia, archived/compressed, and unimportant non-text
# - For uniqueness, we stay away from the Solarized foreground colors are -- either
#   base00 (brightyellow) or base0 (brightblue).  However, they can be used if
#   you know what the bg/fg colors of your terminal are, in order to optimize the display.
# - 3 different options are provided: universal, solarized dark, and solarized light.
#   The only difference between the universal scheme and one that's optimized for
#   dark/light is the color of "unimportant" files, which should blend more with the
#   background
# - We note that blue is the hardest color to see on dark bg and yellow is the hardest
#   color to see on light bg (with blue being particularly bad).  So we choose yellow
#   for multimedia files which are usually accessed in a GUI folder browser anyway.
#   And blue is kept for custom use of this scheme's user.
# - See table below to see the assignments.


# Installation instructions:
# This file goes in the /etc directory, and must be world readable.
# You can copy this file to .dir_colors in your $HOME directory to override
# the system defaults.

# COLOR needs one of these arguments: 'tty' colorizes output to ttys, but not
# pipes. 'all' adds color characters to all output. 'none' shuts colorization
# off.
COLOR tty

# Below, there should be one TERM entry for each termtype that is colorizable
TERM alacritty
TERM ansi
TERM color_xterm
TERM color-xterm
TERM con132x25
TERM con132x30
TERM con132x43
TERM con132x60
TERM con80x25
TERM con80x28
TERM con80x30
TERM con80x43
TERM con80x50
TERM con80x60
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM dvtm
TERM dvtm-256color
TERM Eterm
TERM eterm-color
TERM fbterm
TERM gnome
TERM gnome-256color
TERM jfbterm
TERM konsole
TERM konsole-256color
TERM kterm
TERM linux
TERM linux-c
TERM mach-color
TERM mlterm
TERM nxterm
TERM putty
TERM putty-256color
TERM rxvt
TERM rxvt-256color
TERM rxvt-cygwin
TERM rxvt-cygwin-native
TERM rxvt-unicode
TERM rxvt-unicode256
TERM rxvt-unicode-256color
TERM screen
TERM screen-16color
TERM screen-16color-bce
TERM screen-16color-s
TERM screen-16color-bce-s
TERM screen-256color
TERM screen-256color-bce
TERM screen-256color-s
TERM screen-256color-bce-s
TERM screen-256color-italic
TERM screen-bce
TERM screen-w
TERM screen.xterm-256color
TERM screen.linux
TERM screen.xterm-new
TERM st
TERM st-meta
TERM st-256color
TERM st-meta-256color
TERM tmux
TERM tmux-256color
TERM vt100
TERM xterm
TERM xterm-new
TERM xterm-16color
TERM xterm-256color
TERM xterm-256color-italic
TERM xterm-88color
TERM xterm-color
TERM xterm-debian
TERM xterm-termite

# EIGHTBIT, followed by '1' for on, '0' for off. (8-bit output)
EIGHTBIT 1

#############################################################################
# Below are the color init strings for the basic file types. A color init
# string consists of one or more of the following numeric codes:
#
# Attribute codes:
#   00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
#   30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
#   40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
#
# NOTES:
# - See http://www.oreilly.com/catalog/wdnut/excerpt/color_names.html
# - Color combinations
#   ANSI Color code       Solarized  Notes                Universal             SolDark              SolLight
#   ~~~~~~~~~~~~~~~       ~~~~~~~~~  ~~~~~                ~~~~~~~~~             ~~~~~~~              ~~~~~~~~
#   00    none                                            NORMAL, FILE          <SAME>               <SAME>
#   30    black           base02
#   01;30 bright black    base03     bg of SolDark
#   31    red             red                             docs & mm src         <SAME>               <SAME>
#   01;31 bright red      orange                          EXEC                  <SAME>               <SAME>
#   32    green           green                           editable text         <SAME>               <SAME>
#   01;32 bright green    base01                          unimportant text      <SAME>
#   33    yellow          yellow     unclear in light bg  multimedia            <SAME>               <SAME>
#   01;33 bright yellow   base00     fg of SolLight                             unimportant non-text
#   34    blue            blue       unclear in dark bg   user customized       <SAME>               <SAME>
#   01;34 bright blue     base0      fg in SolDark                                                   unimportant text
#   35    magenta         magenta                         LINK                  <SAME>               <SAME>
#   01;35 bright magenta  violet                          archive/compressed    <SAME>               <SAME>
#   36    cyan            cyan                            DIR                   <SAME>               <SAME>
#   01;36 bright cyan     base1                           unimportant non-text                       <SAME>
#   37    white           base2
#   01;37 bright white    base3      bg in SolLight
#   05;37;41                         unclear in Putty dark


### By file type

# global default
NORMAL 00
# normal file
FILE 00
# directory
DIR 01;34
# symbolic link
LINK 35

# pipe, socket, block device, character device (blue bg)
FIFO 30;44
SOCK 35;44
DOOR 35;44 # Solaris 2.5 and later
BLK  33;44
CHR  37;44


#############################################################################
### By file attributes

# Orphaned symlinks (blinking white on red)
# Blink may or may not work (works on iTerm dark or light, and Putty dark)
ORPHAN  05;37;41
# ... and the files that orphaned symlinks point to (blinking white on red)
MISSING 05;37;41

# files with execute permission
EXEC 01;31  # Unix
.cmd 01;31  # Win
.exe 01;31  # Win
.com 01;31  # Win
.bat 01;31  # Win
.reg 01;31  # Win
.app 01;31  # OSX

#############################################################################
### By extension

# List any file extensions like '.gz' or '.tar' that you would like ls
# to colorize below. Put the extension, a space, and the color init string.
# (and any comments you want to add after a '#')

### Text formats

# Text that we can edit with a regular editor
.txt 32
.org 32
.md 32
.mkd 32

# Source text
.h 32
.hpp 32
.c 32
.C 32
.cc 32
.cpp 32
.cxx 32
.objc 32
.cl 32
.sh 32
.bash 32
.csh 32
.zsh 32
.el 32
.vim 32
.java 32
.R 32
.m 32
.pl 32
.pm 32
.py 32
.ipynb 32
.rb 32
.hs 32
.php 32
.htm 32
.html 32
.shtml 32
.erb 32
.haml 32
.xml 32
.rdf 32
.css 32
.sass 32
.scss 32
.less 32
.js 32
.coffee 32
.man 32
.0 32
.1 32
.2 32
.3 32
.4 32
.5 32
.6 32
.7 32
.8 32
.9 32
.l 32
.n 32
.p 32
.pod 32
.tex 32
.go 32
.sql 32
.csv 32
.sv 32
.svh 32
.v 32
.vh 32
.vhd 32

### Multimedia formats

# Image
.bmp 31
.cgm 31
.dl 31
.dvi 31
.emf 31
.eps 31
.gif 31
.jpeg 31
.jpg 31
.JPG 31
.mng 31
.pbm 31
.pcx 31
.pgm 31
.png 31
.PNG 31
.ppm 31
.pps 31
.ppsx 31
.ps 31
.svg 31
.svgz 31
.tga 31
.tif 31
.tiff 31
.xbm 31
.xcf 31
.xpm 31
.xwd 31
.xwd 31
.yuv 31
.NEF 31 # Nikon RAW format
.nef 31

# Audio
.aac 31
.au  31
.flac 31
.m4a 31
.mid 31
.midi 31
.mka 31
.mp3 31
.mpa 31
.mpeg 31
.mpg 31
.ogg  31
.opus 31
.ra 31
.wav 31

# Video
.anx 31
.asf 31
.avi 31
.axv 31
.flc 31
.fli 31
.flv 31
.gl 31
.m2v 31
.m4v 31
.mkv 31
.mov 31
.MOV 31
.mp4 31
.mp4v 31
.mpeg 31
.mpg 31
.nuv 31
.ogm 31
.ogv 31
.ogx 31
.qt 31
.rm 31
.rmvb 31
.swf 31
.vob 31
.webm 31
.wmv 31

### Misc

# Binary document formats and multimedia source
.doc 33
.docx 33
.rtf 33
.odt 33
.dot 33
.dotx 33
.ott 33
.xls 33
.xlsx 33
.ods 33
.ots 33
.ppt 33
.pptx 33
.odp 33
.otp 33
.fla 33
.psd 33
.pdf 33

# Archives, compressed
.7z   1;35
.apk  1;35
.arj  1;35
.bin  1;35
.bz   1;35
.bz2  1;35
.cab  1;35  # Win
.deb  1;35
.dmg  1;35  # OSX
.gem  1;35
.gz   1;35
.iso  1;35
.jar  1;35
.msi  1;35  # Win
.rar  1;35
.rpm  1;35
.tar  1;35
.tbz  1;35
.tbz2 1;35
.tgz  1;35
.tx   1;35
.war  1;35
.xpi  1;35
.xz   1;35
.z    1;35
.Z    1;35
.zip  1;35

# For testing
.ANSI-30-black 30
.ANSI-01;30-brblack 01;30
.ANSI-31-red 31
.ANSI-01;31-brred 01;31
.ANSI-32-green 32
.ANSI-01;32-brgreen 01;32
.ANSI-33-yellow 33
.ANSI-01;33-bryellow 01;33
.ANSI-34-blue 34
.ANSI-01;34-brblue 01;34
.ANSI-35-magenta 35
.ANSI-01;35-brmagenta 01;35
.ANSI-36-cyan 36
.ANSI-01;36-brcyan 01;36
.ANSI-37-white 37
.ANSI-01;37-brwhite 01;37

#############################################################################
# Your customizations

# Unimportant text files
# For universal scheme, use brightgreen 01;32
# For optimal on light bg (but too prominent on dark bg), use white 01;34
.log 01;32
*~ 01;32
*# 01;32
#.log 36
#*~ 36
#*# 36

# Unimportant non-text files
# For universal scheme, use brightcyan 01;36
# For optimal on dark bg (but too prominent on light bg), change to 01;33
.bak 01;36
.BAK 01;36
.old 01;36
.OLD 01;36
.org_archive 01;36
.off 01;36
.OFF 01;36
.dist 01;36
.DIST 01;36
.orig 01;36
.ORIG 01;36
.swp 01;36
.swo 01;36
*,v 01;36
#.bak 01;33
#.BAK 01;33
#.old 01;33
#.OLD 01;33
#.org_archive 01;33
#.off 01;33
#.OFF 01;33
#.dist 01;33
#.DIST 01;33
#.orig 01;33
#.ORIG 01;33
#.swp 01;33
#.swo 01;33
#*,v 01;33

# The brightmagenta (Solarized: purple) color is free for you to use for your
# custom file type
.gpg 34
.gpg 34
.pgp 34
.asc 34
.3des 34
.aes 34
.enc 34
.sqlite 34
