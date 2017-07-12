module amod
      logical, save :: exflag = .true.

      contains
          subroutine amodsub()
              logical, save :: inflag = .true.
              integer :: varint = 5
              write(*,*), "amodsub called"
              write(*,*), "inflag= ", inflag
              write(*,*), "varint= ", varint
              write(*,*), "exflag= ", exflag
              inflag = .false.
              exflag = .false.
              varint = 4
          end subroutine amodsub
end module amod
