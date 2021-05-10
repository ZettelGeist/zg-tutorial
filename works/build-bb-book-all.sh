#!/bin/bash

if [ -f ~/zenv/bin/activate ]; then
  source ~/zenv/bin/activate
fi

zimport --create --database mlb.db --dir ../zettels/baseball-md --fullpath

export COMMON="--database mlb.db --show-document"

./bb-book.sh | tee bb-book-preview.md
