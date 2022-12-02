Config
  { font = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=14:antialias=true:hinting=true",
    additionalFonts = [],
    borderColor = "black",
    border = TopB,
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
          Network
          "eth0"
          [ "-L",
            "0",
            "-H",
            "32",
            "--normal",
            "green",
            "--high",
            "red"
          ]
          10,
        Run
          Network
          "eth1"
          [ "-L",
            "0",
            "-H",
            "32",
            "--normal",
            "green",
            "--high",
            "red"
          ]
          10,
        Run
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
        Run Date "\xf133  %a %b %d %Y - (%H:%M) \xf017" "date" 10
      ],
    sepChar = "%",
    alignSep = "}{",
    template =
      "%cpu% | %memory% * %swap% | %eth0% - %eth1% }\
      \%date%\
      \{%uname%}"
  }
