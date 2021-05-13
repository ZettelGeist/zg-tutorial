export DB=database.db
export BUILD=$(pwd)/build
export DB_PATH=$BUILD/$DB
export COMMON="--database ${DB_PATH}"
export SCRIPT=$0

function heading () {
  echo
  echo "${ATX} $1"
  echo
}


function get_level() {
  local FILENAME=$1
  local LN=$(($2 - 1))
  local INFO=( $(sed "${LN}q;d" $FILENAME) )
  echo ${INFO[0]}
}

shopt -s expand_aliases

alias atx='ATX=$(get_level $SCRIPT $LINENO)'
alias pandoc_shift_headings='pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}'

