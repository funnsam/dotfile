if [[ "$(tty)" != "/dev/tty1" ]]; then # ensure we aren't in boot console
    # Enable the subsequent settings only in interactive sessions
    case $- in
      *i*) ;;
        *) return;;
    esac

    export OSH='/home/funnsam/.oh-my-bash'
    export UPDATE_OSH_DAYS=30

    OSH_THEME=half-life
    OMB_HYPHEN_SENSITIVE=true
    ENABLE_CORRECTION=true
    COMPLETION_WAITING_DOTS=true
    OMB_USE_SUDO=true

    completions=(git)
    aliases=(general ls)
    plugins=(git bashmarks)

    source "$OSH"/oh-my-bash.sh
fi

export PATH="$PATH:$HOME/.cargo/bin/:$HOME/cross-comp/bin"

fastfetch
