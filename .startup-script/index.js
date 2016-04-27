import { exec } from 'shelljs';

const startupCommands = [
  'xrandr --output eDP1 --auto --output HDMI1 --auto --above eDP1',
  'killall -v ibus-ui-gtk3',
  'setxkbmap -option ctrl:swapcaps',
  'setxkbmap -option grp:switch,grp:alt_space_toggle,grp_led:scroll us,ua',
  'feh --bg-fill ~/Pictures/wallpaper.jpg',
];

const startupPrograms = [
  'chromium-browser',
  'slack',
  'nylas-i3',
  'dropbox start',
  'skype',
  'spotify',
  '~/Apps/firefox/firefox',
  '~/Apps/Enpass/runenpass.sh',
  '~/Apps/Avocode-linux-x64/Avocode'
];


// wait white system start
setTimeout(() => {
  // commands
  for (const command of startupCommands) {
    exec(command);
  }

  // apps
  for (const command of startupPrograms) {
    exec(command, {
      async: true,
      silent: true,
    });
  }
}, 100);



// exit script after n seconds
setTimeout(() => process.exit(-1), 4000);
