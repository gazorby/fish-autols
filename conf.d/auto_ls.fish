# Prefer eza as exa is unmaintained
if type -q eza
    set --universal --export _AUTO_LS_EXA_BINARY eza
else if type -q exa
    set --universal --export _AUTO_LS_EXA_BINARY exa
else
    set --erase _AUTO_LS_EXA_BINARY
end

# Fisher
function __auto_ls_install --on-event auto_ls_install
  if not set --query --universal --export AUTO_LS_EXA_OPTIONS
    set --universal --export AUTO_LS_EXA_OPTIONS --long --all
  end

  if not set --query --universal --export AUTO_LS_EXA_GIT_OPTIONS
    set --universal --export AUTO_LS_EXA_GIT_OPTIONS --long --all --group --header --git
  end
end

function __auto_ls_uninstall --on-event auto_ls_update
  __auto_ls_uninstall
  __auto_ls_install
end

function __auto_ls_uninstall --on-event auto_ls_uninstall
  functions --erase _auto_ls_hook
  set --erase _AUTO_LS_EXA_BINARY
end
