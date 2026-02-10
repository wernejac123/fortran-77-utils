C FORTRAN 77 PROGRAM TO CONVERT BEWTEEN HEX AND DECIMAL

      PROGRAM IBASE
      IMPLICIT NONE
      CHARACTER CIN
      INTEGER IN

      WRITE(*,*) 'IBASE:'
      WRITE(*,*)

10    WRITE(*,*) '''D'' DECIMAL TO HEX'
      WRITE(*,*) '''H'' HEX TO DECIMAL'
      WRITE(*,*) '(ENTER ALL NUMBERS AS 8 DIGITS WITH LEADING 0''S)'
      READ(*,*) CIN
      IF(CIN .EQ. 'D') THEN
        READ(*,950) IN
        WRITE(*,900) IN
      ELSEIF(CIN .EQ. 'H') THEN
        READ(*,900) IN
        WRITE(*,950) IN
      ELSE
        WRITE(*,*) 'INVALID'
        GOTO 10
      ENDIF

900   FORMAT(Z8)
950   FORMAT(I8)
      STOP
      END
