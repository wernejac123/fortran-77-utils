C FORTRAN 77 PROGRAM TO CONVERT DEGREES TO RADIANS OR 
C RADIANS TO DEGREES
      PROGRAM RAD
      IMPLICIT NONE
      CHARACTER CIN
      DOUBLEPRECISION X,PI
      PARAMETER(PI=3.141592654)

10    WRITE(*,*) '''R'',X RADIANS TO DEGREES'
      WRITE(*,*) '''D'',X DEGREES TO RADIANS'
      READ(*,*) CIN,X

      IF(CIN .EQ. 'R') THEN
        X=X*(180.0/PI) 
        WRITE(*,900) 'X=',X,'DEGS'
      ELSEIF(CIN .EQ. 'D') THEN
        WRITE(*,*) 'D'
        X=X*(PI/180.0)
        WRITE(*,900) 'X=',X,'RADS'
      ELSE 
        WRITE(*,*) 'INVALID'
        GOTO 10
      ENDIF

900   FORMAT(A2,X,F12.7,X,A4)
      STOP
      END
