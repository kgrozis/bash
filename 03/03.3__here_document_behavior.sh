#! /bin/bash

# <<'EOF' escapes any characters in here document
# essentially turns off shell scripting in here document
# can also use this variation of EOF to escape char:
#   - <<\EOF
#   - <<E\OF
# good practice to always escape unless you explicilty want behavior
bash donors bill
bash donors pete