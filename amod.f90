module amod
    logical, save :: exflag

contains
    ! This is the only solution to give value to exflag which need
    !to be accessible globaly
    subroutine initAmod()
        exflag = .true.
    end subroutine initAmod

    subroutine amodsub()
        logical, save :: inflag 
        integer :: varint
        ! I can do this for each subroutine to avoid naming conflict
        inflag = .true.
        varint = 5

        write(*,*), "amodsub called"
        write(*,*), "inflag= ", inflag
        write(*,*), "varint= ", varint
        write(*,*), "exflag= ", exflag
        inflag = .false.
        exflag = .false.
        varint = 4
    end subroutine amodsub
end module amod
