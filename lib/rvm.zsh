# get the name of the ruby version
function rvm_prompt_info() {
  [ -f /usr/local/rvm/bin/rvm-prompt ] || return
  local rvm_prompt
  rvm_prompt=$(/usr/local/rvm/bin/rvm-prompt ${ZSH_THEME_RVM_PROMPT_OPTIONS} 2>/dev/null)
  [[ "${rvm_prompt}x" == "x" ]] && return
  echo "${ZSH_THEME_RVM_PROMPT_PREFIX:=(}${rvm_prompt}${ZSH_THEME_RVM_PROMPT_SUFFIX:=)}"
}
