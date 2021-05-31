export DB=database.db
export BUILD=$(pwd)/build
export DB_PATH=$BUILD/$DB
export COMMON="--database ${DB_PATH}"
export SCRIPT=$0

#function heading () {
##  echo
#  echo "${ATX} $1"
#  echo
#}


# This gets the first token of the ATX heading only (e.g. ### Header returns ###)
function get_atx_prefix() {
  local FILENAME=$1
  local LN=$(($2 - 1))
  local INFO=( $(sed "${LN}q;d" $FILENAME) )
  echo ${INFO[0]}
}

# This gets the entire heading from the line containing it.

function show_heading() {
  local FILENAME=$1
  local LN=$(($2 - 1))
  sed "${LN}q;d" $FILENAME
}

shopt -s expand_aliases

alias heading='ATX=$(get_atx_prefix $SCRIPT $LINENO) && show_heading $SCRIPT $LINENO'
alias pandoc_shift_headings='pandoc --wrap=none -f markdown -t markdown --shift-heading-level-by=${#ATX}'

