#!/bin/bash

[ -f ~/zenv/bin/activate ] && source ~/zenv/bin/activate
[ -f book-functions.sh ] && source book-functions.sh

mkdir -p ${BUILD}

zimport --create --database ${DB_PATH} --dir ../zettels/baseball-md --fullpath

./bb-book.sh | tee ${BUILD}/bb-book-preview.md

pushd ${BUILD}
pandoc -V geometry:margin=1in  bb-book-preview.md -o bb-book-preview.pdf
pandoc bb-book-preview.md -o bb-book-preview.docx
popd
