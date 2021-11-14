config.load_autoconfig(False)
### site-specific javascript
config.set('content.javascript.enabled', True, 'https://*.reddit.com/*')
config.set('content.javascript.enabled', True, 'https://*.messenger.com/*')
config.set('content.javascript.enabled', True, 'https://*.google.com/*')
config.set('content.javascript.enabled', True, 'https://*.readcomiconline.li/*')
config.set('content.javascript.enabled', True, 'https://*.4channel.org/*')
config.set('content.javascript.enabled', True, 'https://*.4chan.org/*')
config.set('content.javascript.enabled', True, 'https://*.rarbg.to/*')
config.set('content.javascript.enabled', True, 'https://*.rarbgmirrored.org/*')
config.set('content.javascript.enabled', True, 'https://*.torrentgalaxy.to/*')

### BINDS
config.unbind('<Ctrl-Shift-n>', mode='normal') ## remove the default incognito mode
config.unbind(';i', mode='normal') ## remove hint image
config.bind(';i', 'hint images yank') ## get image link to clipboard
config.bind('<Ctrl-Shift-p>', 'open -p') ## incognito
config.bind('<Ctrl-[>', 'clear-keychain ;; search ;; fullscreen --leave ;; jseval -q document.activeElement.blur()') ## better Escape focus
config.bind('X', 'hint links spawn --detach mpv --ytdl-format=bestvideo[height<=?480]+bestaudio {hint-url}') ## open a link in mpv
config.bind('h', 'scroll-px -100 0')
config.bind('j', 'scroll-px 0 100')
config.bind('k', 'scroll-px 0 -100')
config.bind('l', 'scroll-px 100 0')
config.bind('tt', 'open ~/dotfiles/qutebrowser/Homepage/homepage.html')
config.bind('tT', 'open -t ~/dotfiles/qutebrowser/Homepage/homepage.html')
config.bind('<Ctrl-Shift-l>', 'spawn --userscript qute-bitwarden')

### ADBLOCKING
config.source("adblock.py")

### PRIVACY
c.content.javascript.enabled = False
c.content.webrtc_ip_handling_policy = "default-public-interface-only"
c.content.geolocation = "ask" 
c.content.webgl = True
c.content.cookies.accept = "no-unknown-3rdparty"
c.content.cookies.store = False
c.content.canvas_reading = False
c.tabs.title.format = "{current_title} - {host}"
c.window.title_format = "{current_title} - {host}"
c.content.headers.user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36"

### Dark Mode and CSS Theme
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.preferred_color_scheme = "dark"
c.colors.webpage.bg = "#4C566A"
config.bind('<Ctrl-R>', 'config-cycle content.user_stylesheets "~/dotfiles/qutebrowser/stylesheets/solarized.css" ""')

### New and Start Pages
c.url.start_pages = ['~/dotfiles/qutebrowser/Homepage/homepage.html']
c.url.default_page = '~/dotfiles/qutebrowser/Homepage/homepage.html'

### Others
c.content.prefers_reduced_motion = True
c.input.insert_mode.leave_on_load = True
c.url.searchengines = {"DEFAULT": "https://searx.be/search?q={}"}
c.content.notifications.enabled = True
c.content.autoplay = False

### For opening text ares in nvim
c.editor.command=['alacritty', '-e', 'nvim', '{file}']

### For the expando button in old.reddit
config.set('hints.selectors', {'preview': ['.expando-button']},pattern='*://*.reddit.com/*')
config.bind(';p', 'hint preview')

### Ranger File Picker
c.fileselect.handler = "external"
c.fileselect.single_file.command = ["alacritty", "-e", "ranger", "--choosefile={}"]
c.fileselect.multiple_files.command = ["alacritty", "-e", "ranger", "--choosefiles={}"]
