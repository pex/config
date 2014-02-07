function fish_prompt
  set -l white (set_color fff)
  set -l orange (set_color f72)
  set -l red (set_color red)
  set -l blue (set_color blue)

  set -l user "$red$USER"
  set -l cwd $orange(basename (prompt_pwd))

  echo -n -s $user ' '$cwd $white(clean_git_prompt) $white ' '
end
