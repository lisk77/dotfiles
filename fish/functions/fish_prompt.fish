alias 

function fish_right_prompt
  set -l _time (date +"%T")
  set_color 56b6c2
  echo $_time
end


function fish_prompt

  set -l _branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)

  echo -n " "
    set_color 61afef
    echo -n $USER
  set_color 52b6c2
  echo -n " in "
  set_color 98c379
  echo -n "󰉋 "
  echo -n (pwd)
  if test -z "$_branch"
    echo ""
  else
    set_color abb2bf
    echo -n " :   "
    set_color e06c75
    echo -n $_branch
    echo ""
  end
  set_color 61afef
  #echo -n "  "
  echo -n " ƛ "
    set_color normal
end
