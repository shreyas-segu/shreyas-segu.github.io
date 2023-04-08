---

title: my-linux-setup
feed: show
date: 01-03-2023
permalink: /my-linux-setup

---
# My Development setup on Linux
Linux is one of the most versatile operating systems ever made, over the years I've worked on Windows, macOS, and various Linux distributions, and by far the experience on Linux is the best one I've had.

## Preface
Just like most people, I started tinkering with my PC on Windows, starting with Windows 98, Windows XP, and Windows 7,8,10. I didn't know anything but Windows and I had assumed that nothing could beat Windows (even though I broke my PC more times than I can care to admit)

And when I started to program more seriously, the first thing that drew me to Linux was the Gitbash terminal on Windows. The experience using Gitbash when compared to the command prompt / PowerShell was night and day. Everything on the Linux terminal makes more sense compared to cmd.

I transitioned to macOS while working and then completely fell in love with the UNIX-style terminal experience. Even though the tweaks that I could do to macOS were lackluster compared to Windows, there was no going back.

When I moved on to my next job, I was given a Windows laptop, oh the horror! The ram usage when opening vs-code with nothing else running was around 50% of my 16 gigs. This is what led me to explore Linux much more deeply, although I had used a lot of different distros (ubuntu, popOS, elementary OS, manjaro) during my college days, it was an amateur attempt at trying to daily drive Linux, I didn't know what I was doing. However, this time things were different, I had to make this work for my day job.

## The setup that works for me
### Operating System
I'm running the Fedora Server Linux distro. A couple of reasons why I'm not running a desktop version of the distro is mostly because it has a lot of stuff that I don't use, and it consumes way too much memory than necessary.
#### Stability
- Runs with the stability of a server.
- Upstream of RHEL (Red Hat Enterprise Linux). Redhat invests a lot in security and Fedora often receives these security patches first.
- Has a very small memory footprint, on a fresh install it consumes less than 1 GB of memory. And even after setting it up with multiple services running in the background, it takes around 2 gigs of memory.
#### Close to Bleeding-Edge
- Has a very up-to-date Kernel, on the date of writing this, I'm running the 6.2.9 version while the latest stable release on kernel.org is 6.2.10. To give you a small comparison, Ubuntu ships the 5.15 kernel. This means
	- Faster kernel-level improvements (memory, process management, etc..)
	- Fewer security vulnerabilities
	- Newer devices support with latest device drivers
- Fedora Repositories have the latest releases of packages for the most used packages. (it's not the AUR though, but better than other distros)
- Uses BTRFS by default, so if an update breaks anything, rolling back is as easy as restarting the computer.
- Picks up on the latest tech trends earlier, and picks the direction generally where the Linux community is heading. Things like Wayland, pipe wire, and flatpack are great examples.
	- Even though these don't ship with the fedora server, it has first-class support for these and will work seamlessly.

### Desktop Environment
Now that I am running on a bare server installation. I get to pick and choose exactly how my desktop experience should be.
Here are the criteria
- [ ] Ease of Customization, I want things to look good.
- [ ] Low Memory Footprint, I want to have room in memory for other critical applications
- [ ] Productivity, I want things to be better than Windows and MacOS

#### i3 Window Manager
The i3 window manager checks all these boxes. Let me explain.

- [x] Ease of Customization
A window manager doesn't have all the bells and whistles of a regular desktop environment, like a file manager, settings panel, etc. It does only one thing and it does it well, manages Windows.

I can choose my components, only necessary things, Like a file manager, bar, application launcher, notification manager, and compositor. That's it.
I can theme the bar, file manager, and application to exactly how I want it to look.

- [x] Low Memory Footprint
- The window manager itself takes 16 megabytes
- application launcher doesn't consume any memory if it's not open. If it is open it takes 20 megabytes
- Using Polybar for the bar, it takes 20 megabytes
- Compositor 7 megabytes
- All in all takes less than 100 megabytes to set up a complete desktop environment, and still way better than Windows and MacOS

- [x] Productivity
- very simple to customize, do it once and check in the configuration file into a git repo. Reproducible results every time.
- Can have unlimited workspaces
- Applications open on the designated workspaces only, no need for window management
- Keybinds control all aspects of window manager like resizing, moving, tiling stacking windows. And most of the time these are automated.
- Custom key binds to open applications that I most frequently use, and can open applications on startup.

#### Kitty Terminal Emulator
Same theme here
- Works very well with i3
- Highly customizable
- Very small memory footprint, around a 100 megabytes
#### Shell
For the shell I'm using ZSH, it's highly customizable again and it is very extensible. It supports plugins that extend its functionality for the common tasks that we do, using the oh-my-zsh to manage these plugins. The default aliases and built-in plugins make it very convenient to do common tasks and increase productivity.
Here are the plugins that I use
- `git` - a tonne of git aliases
- `docker` - docker aliases
- `sudo` - Hit the ESC key twice to repeat the last command with sudo
- `web-search` - ex. `$google "how to convert dates in javascript"`
- `zsh-autocompletion` - auto-completion for commonly used commands
- `fzf- integrates` fzf into the zsh for command history search and file history search

Using a couple of other utilities like 
- `j` - jump directly to your most used directories using fuzzy matching of a directory name
- `ranger` - a terminal file manager
- `bat` - alternative to the `cat` command, prettier with line numbers
- `lazygit` - TUI for git
- `lazydocker` - TUI for docker
- `btop`- very good-looking task manager
- `fzf` - fuzzy search
- `nvim` - superior vim with IDE-like extensibility.

### References
- [i3 Window Manager](https://i3wm.org)
- [Kitty Terminal](https://sw.kovidgoyal.net/kitty/)
- [zsh](https://zsh.sourceforge.io/)
- [Fedora](https://alt.fedoraproject.org/)