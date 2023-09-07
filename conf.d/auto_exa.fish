function __auto_exa_uninstall --on-event auto_exa_install
    # Prefer eza as exa is unmaintained
    if type -q eza
      set -Ux __FISH_EXA_BINARY eza
  else
      set -Ux __FISH_EXA_BINARY exa
  end
end

function __auto_exa_uninstall --on-event auto_exa_uninstall
  functions --erase __auto_exa_hook
  set --erase __FISH_EXA_BINARY
end
