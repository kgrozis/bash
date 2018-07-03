#! /bin/bash

# printf builin behaves like C
# - arg 1 is format control string
# - arg 2 and beyond is formatted based to spec

# % string
printf '%s = %d\n' Lines $LINES

# %f floating-point number
# - 4: width of entire field
# - 2: decimanl percision.  Rounding will occur
# %s string
# - -10: max field width
# - 10: min field width.  Padding occurs.
# - -10: makes string left justified
printf '%-10.10s = %4.2f\n' 'Gigahertz' 1.92735
# Right justified
printf '%10.10s = %4.2f\n' 'Gigahertz' 1.92735
