#!/bin/bash

NAME=the-work
CONFIG=config
ZETTELS=../zettels/baseball-md

[ -f ~/zenv/bin/activate ] && source ~/zenv/bin/activate

[ -f ${CONFIG}/book-functions.sh ] && source ${CONFIG}/book-functions.sh

mkdir -p ${BUILD}

zimport --create --database ${DB_PATH} --dir ${ZETTELS}  --fullpath

bash ${NAME}.sh | tee ${BUILD}/${NAME}-preview.md
chmod ugo-w ${BUILD}/${NAME}-preview.md

pushd ${BUILD}
pandoc -V geometry:margin=1in  ${NAME}-preview.md -o ${NAME}-preview.pdf
pandoc ${NAME}-preview.md -o ${NAME}-preview.docx
pandoc ${NAME}-preview.md -o ${NAME}-preview.html
popd
