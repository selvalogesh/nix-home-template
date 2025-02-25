{
  programs.bash.enable = true;
  programs.bash = {
    historyControl = [ "erasedups" ];
    historyIgnore = [ "ls" "cd" "exit" ];
    bashrcExtra = "
      # check the window size after each command and, if necessary,
      # update the values of LINES and COLUMNS.
      shopt -s checkwinsize

      # make less more friendly for non-text input files, see lesspipe(1)
      [ -x /usr/bin/lesspipe ] && eval \"$(SHELL=/bin/sh lesspipe)\"

      # set variable identifying the chroot you work in (used in the prompt below)
      if [ -z \"\${debian_chroot:-}\" ] && [ -r /etc/debian_chroot ]; then
          debian_chroot=$(cat /etc/debian_chroot)
      fi

      # set a fancy prompt (non-color, unless we know we \"want\" color)
      case \"$TERM\" in
          xterm-color|*-256color) color_prompt=yes;;
      esac

      # uncomment for a colored prompt, if the terminal has the capability; turned
      # off by default to not distract the user: the focus in a terminal window
      # should be on the output of commands, not on the prompt
      #force_color_prompt=yes

      if [ -n \"$force_color_prompt\" ]; then
        if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
            # We have color support; assume it's compliant with Ecma-48
            # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
            # a case would tend to support setf rather than setaf.)
            color_prompt=yes
        else
            color_prompt=
        fi
      fi

      # Add git branch if its present to PS1
      parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \\(.*\\)/(\\1)/'
      }

      if [ \"$color_prompt\" = yes ]; then
        PS1='\${debian_chroot:+($debian_chroot)}\\[\\033[01;32m\\]\\u@\\h\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w (Nix) \\[\\033[01;31m\\]$(parse_git_branch)\\[\\033[00m\\]\\n\\$ '
      else
        PS1='\${debian_chroot:+($debian_chroot)}\\u@\\h:\\w (Nix) $(parse_git_branch)\\n\\$ '
      fi
      unset color_prompt force_color_prompt
    ";
  };
}
