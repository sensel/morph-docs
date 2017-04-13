#!/bin/bash
# removes all but the stuff in between <body> tags from the headerdoc generated files.
# removes <br> and the TOC <td>
# give 2 args input file name, output file name

if [ $# -eq 0 ]
  then
    echo "usage: you need to provide input file name and output file name arguments"
fi
if [ $# -eq 1 ]
  then
    echo "usage: you need to provide an output file name argument, too"
fi

cat $1 | sed '/<!-- headerDoc=Header*/d;  /<br>/d; /<!DOCTYPE*/d;  /<body*/d;  /<\/body>/d; /<head>/,/<\/head>/d; /<html>/d; /<\/html>/d; /<td valign="top" id="tocMenu" src="toc.html"><\/td>/d; /<a name="\/\/apple_ref\/doc\/header\/sensel.h"><\/a>/d' > $2



