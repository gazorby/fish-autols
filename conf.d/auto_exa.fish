function __auto_exa_hook --description "Auto exa" --on-event fish_prompt
  if test "$NO_AUTO_LS" != ""
    return
  end

  if test "$__auto_exa_last" != (pwd)
    echo
    if type -q exa
      if git rev-parse --is-inside-work-tree &>/dev/null
        exa --long --all --group --header --git
      else
        exa -la
      end
    else
      ls -la
    end
  end
  set  -g __auto_exa_last (pwd)
end

function __auto_exa_uninstall --on-event auto_exa_uninstall
  functions --erase __auto_exa_hook
end
