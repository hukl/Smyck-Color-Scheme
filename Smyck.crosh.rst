Smyck Color Theme on Crosh
==========================

Open your 'Secure Shell' App. Enter user for username, and >crosh for hostname, this will get you to crosh shell. Now, in the terminal window, open Control-Shift-J, this will show the Javascript Console. To change the color theme, just evaluate the following code. ::

  term_.prefs_.set('color-palette-overrides',
        ['#000000', '#C75646', '#8EB33B', '#D0B03C', '#72B3CC', '#C8A0D1', '#218693', '#B0B0B0', '#5D5D5D', '#E09690', '#CDEE69', '#FFE377', '#9CD9F0', '#FBB1F9', '#77DFD8', '#F7F7F7']);

To set the foreground/background of the terminal. ::

  term_.prefs_.set('background-color', '#242424')
  term_.prefs_.set('foreground-color', '#FFFFFF')

Crosh will automatically save this color theme setting under your current profile.
