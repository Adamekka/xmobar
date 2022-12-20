Config
  { font = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=14:antialias=true:hinting=true",
    additionalFonts = [],
    borderColor = "black",
    border = NoBorder,
    bgColor = "#3B4252",
    fgColor = "grey",
    alpha = 255,
    position = Top,
    textOffset = -1,
    iconOffset = -1,
    lowerOnStart = True,
    pickBroadest = False,
    persistent = False,
    hideOnStart = False,
    iconRoot = "./images/",
    allDesktops = True,
    overrideRedirect = True,
    textOutputFormat = Ansi,
    commands =
      [ Run
          Cpu
          [ "-L",
            "3",
            "-H",
            "50",
            "--normal",
            "green",
            "--high",
            "red"
          ]
          10,
        Run Memory ["-t", "Mem: <usedratio>%"] 10,
        Run Swap [] 10,
        Run Com "uname" ["-s", "-r"] "" 36000,
        Run Date "\xf133  %a %b %d %Y - (%H:%M) \xf017" "date" 10,
        Run Battery ["-t", "<acstatus>: <left>% - <timeleft>h", "--", "-O", "AC", "-o", "BAT", "-l", "red", "-h", "green"] 10
      ],
    sepChar = "%",
    alignSep = "}{",
    template =
      "%cpu% | %memory% * %swap% | %battery%}\
      \%date%\
      \{%uname%"
  }
