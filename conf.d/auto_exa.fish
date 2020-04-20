function __auto_exa_hook --description "Auto exa" --on-event fish_prompt
  if test "$NO_AUTO_LS" != ""
    return
  end

  if test "$__auto_exa_last" != (pwd)
    echo
    if type -q exa
      if test -d "$PWD"/.git
        exa --long --header --git
      else
        exa -la
      end
    else
      ls -la
    end
  end
  set  -g __auto_exa_last (pwd)
end

set -l uninstall (basename (status -f) .fish)_uninstall

function __$uninstall --on-event $uninstall
  functions --erase __auto_exa_hook
end
