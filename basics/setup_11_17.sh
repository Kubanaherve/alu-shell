#!/bin/bash

files=(
11-lists
12-file_type
13-symbolic_link
14-copy_html
15-lets_move
16-clean_emacs
17-tree
)

commands=(
"ls -la . .. /boot"
"file /tmp/iamafile"
"ln -s /bin/ls __ls__"
"cp -u *.html .."
"mv [[:upper:]]* /tmp/u/"
"rm *~"
"mkdir -p welcome/to/school"
)

for i in "${!files[@]}"
do
  echo "#!/bin/bash" > "${files[$i]}"
  echo "${commands[$i]}" >> "${files[$i]}"
  chmod u+x "${files[$i]}"
done
