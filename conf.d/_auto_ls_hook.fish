function _auto_ls_hook --description "Auto ls when chaning directory" --on-event fish_prompt
    if test "$NO_AUTO_LS" != ""
      return
    end

    if test "$__auto_exa_last" != (pwd)
      echo
      if test -n "$_AUTO_LS_EXA_BINARY"
        if git rev-parse --is-inside-work-tree &>/dev/null
          $_AUTO_LS_EXA_BINARY $AUTO_LS_EXA_GIT_OPTIONS
        else
          $_AUTO_LS_EXA_BINARY $AUTO_LS_EXA_OPTIONS
        end
      else
        ls -la
      end
    end
    set  -g __auto_exa_last (pwd)
  end
