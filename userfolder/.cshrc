# $FreeBSD: head/share/skel/dot.cshrc 278616 2015-02-12 05:35:00Z cperciva $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv	BLOCKSIZE	K
# A righteous umask
# umask 22

setenv	EDITOR	vi
setenv	PAGER	more

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
set prompt="%{^[[40;33;1m%}[%T] %{^[[40;33;1m%} %/ %"
alias kn        killall -9  npviewer.bin
alias ks        killall -9  sp-sc-auth
alias kw        killall -9  wine
alias sm        mpv http://localhost:8908/tv.asf
alias kf        killall -9  firefox
alias cdd       cd  ~/downloads
alias cds       cd  ~/scripts
alias rtmp          ~/scripts/rtmp.sh
alias krtmp     killall -9 rtmpsrv
alias m3u8          ~/scripts/tcpdump_m3u8.sh
alias extract     ~/.scripts/extract
setenv TERM xterm-256color





