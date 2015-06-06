#----------------------------------------------------------------------------
# ~/.bash_logout: executed by bash(1) when login shell exits.
# $Revision: 2.10 (CentOS Edition by Wakko Warner) $
# $Comment: Any comments please send to wakko@acmelabs.spb.ru $
#----------------------------------------------------------------------------
 
# When leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
	[ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
	[ -x /usr/bin/clear ] && /usr/bin/clear -q
fi
