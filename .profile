#----------------------------------------------------------------------------
# ~/.profile: executed by bash(1) for login shells on Ubuntu-based systems
# $Comment: Any comments please send to artem@semenov.ws $
#----------------------------------------------------------------------------
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
