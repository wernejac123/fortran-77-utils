gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion coord.f -o coord
gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion disk.f -o disk
gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion floppy.f -o floppy
gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion ibase.f -o ibase
gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion rad.f -o rad

strip -s coord disk floppy ibase rad

