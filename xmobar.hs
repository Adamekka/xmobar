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
          MultiCpu
          [ "-t",
            "CPU: <total>%",
            "-L",
            "3",
            "-H",
            "50",
            "--normal",
            "green",
            "--high",
            "red"
          ]
          10,
        Run Memory ["-t", "RAM: <usedratio>%"] 10,
        Run Swap ["-t", "SWAP: <usedratio>%"] 10,
        Run Com "uname" ["-s", "-r"] "" 36000,
        Run Date "\xf133  %a %b %d %Y - (%H:%M) \xf017" "date" 10,
        Run Battery ["-t", "<acstatus>: <left>% - <timeleft>h", "--", "-O", "AC", "-o", "BAT", "-l", "red", "-h", "green"] 10,
        Run DynNetwork ["-t", "<dev>: \xf55c <tx>kB/s \xf544 <rx>kB/s", "-L", "1000", "-H", "1000000", "-h", "red"] 20
      ],
    sepChar = "%",
    alignSep = "}{",
    template =
      "%multicpu% | %memory% * %swap% | %battery% | %dynnetwork%}\
      \%date%\
      \{%uname%"
  }
