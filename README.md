# fortran-77-utils
Small utilities I wrote in FORTRAN 77

coord.f: convert between polar and rectangular coordinates

disk.f and floppy.f are for an approximate calculation of cds/dvds and floppies needed for x amount of data
(NOTE: does not take into consideration space reserved for the MBR or whatever space cds/dvds use for ISO9660 since you may use dd with the skip option to write across several floppies or each floppy may be formattted as MBR and I do not know what space are reserved on optical disks. Some of the calculations are for entertainment since i doubt any sane person is going to write 1G on 100s of floppies. Probably a good idea to have extra disks around in case more are needed than what the program calculates). floppy.f assumes 3.5" 1.44MB floppies are used; disk.f allows for 650MB, 700MB CDs or 4.7GB DVDs (again I doubt anyone is going to write 1Tb of data on optical disks but is there for entertainment)

UNITS: ('B' BYTE 'K' KB 'M' MB 'G' GB 'T' TB)

the unit is entered as a CHARACTER so enclose in single quotes, and the number is DOUBLEPRECISON (have not bug fixed for disk.f or floppy.f

ibase.f: convert between hexadecimal and decimal



NOTE: any input that is DOUBLEPRECISION should be entered in engineering notaion (like 5.5D0 6.6D0) else
some calculations may be caluclated as REAL not DOUBLEPRECISION

BUG: as of Apr 5, 2026 there is a bug where my programs are losing precision (calculating numbers as REAL instead
of DOUBLEPRECISON). NOTE TO SELF: fix this by using D like 3.0D0 (DOUBLEPRECISION engineering notation) for all
numbers including input from user)

As of Apr 8,2026 I fixed rad.f and coord.f so those 2 accurately use double precision. Since my TI-83 only allows
9 decimal places and double precision allows 15 digits of precision I cannot prove the accuracy of decimal places
exceeding whats shown on my TI-83. In some of my tests my F77 program showed different numbers after about 7
digits (including whats before the decimal point) than my ti83 clculator did
