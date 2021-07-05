// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    scrollback: 10000,

    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: 'Hack, Menlo, monospace',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // line height as a relative unit
    lineHeight: 1.2,

    // letter spacing as a relative unit
    letterSpacing: 0.5,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#52676f',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#e9e2cb',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#52676f',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: '#fdf6e3',

    // terminal selection color
    selectionColor: '#fcf4dc',

    // border color (window, tabs)
    borderColor: '#535178',

    // custom colors from solarized theme
    colors: {
      black: '#e4e4e4',
      red: '#d70000',
      green: '#5f8700',
      yellow: '#af8700',
      blue: '#0087ff',
      magenta: '#af005f',
      cyan: '#00afaf',
      white: '#262626',
      lightBlack: '#ffffd7',
      lightRed: '#d75f00',
      lightGreen: '#585858',
      lightYellow: '#626262',
      lightBlue: '#808080',
      lightMagenta: '#5f5faf',
      lightCyan: '#8a8a8a',
      lightWhite: '#1c1c1c'
    },

    // custom CSS to embed in the main window
    css: `
      .hyper_main {
        border-width: 0px;
      }
      .tabs_list {
        border-color: transparent !important;
      }
      .tab_tab {
        font-family: Menlo, Monaco;
        border: transparent !important;
        color: #52676f !important;
        background-color: #D3CBB7;
      }
      .tab_tab.tab_active {
        color: #52676f !important;
        background-color: #fdf6e3;
        border-bottom: none !important;
        font-weight: bold;
      }
      .tabs_title {
        font-family: Menlo, Monaco;
        color: #52676f !important;
      }
      .tabs_nav {
      	background-color: #D3CBB7 !important;
      }
      .tabs_borderShim {
      	border: transparent;
      }
      .splitpane_divider {
      	background-color: #D3CBB7 !important;
      }
    `,

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    shell: '/usr/local/bin/fish',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: false,

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    paneNavigation: {
      hotkeys: {
        navigation: {
          up: 'shift+meta+up',
          down: 'shift+meta+down',
          left: 'shift+meta+left',
          right: 'shift+meta+right',
        },
        jump_prefix: 'shift+meta',
      },
      indicatorPrefix: '⇧⌘',
    },
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hypercwd', // open new tab in same directory
    'hyper-search',
    'hyper-pane',
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
