#!/bin/bash

if [[ -d md ]]; then
    rm -rf md/
fi
if [[ -d pdf ]]; then
    rm -rf pdf/
fi
if [[ -d txt ]]; then
    rm -rf txt/
fi
if [[ -d sh ]]; then
    rm -rf sh/
fi

touch README.md
touch CONTRIBUTING.md
touch TEST.md
touch document.pdf
touch other_doc.pdf
touch last_doc.pdf
touch README.txt
touch WINDOWS.txt
touch LINUX.txt