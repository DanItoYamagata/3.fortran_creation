program in_pro_vec02
implicit none
integer, parameter :: N=10
integer :: I, M
real :: S
real, dimension(N) :: A, B, C

 write(*, *) 'M='
 read (*, *) M
 do I = 1,M
   write(*, '(1X,A2,I2, A2)') 'A(',I,') = '
   read(*, *) A(I)
 end do

 do I = 1,M
   write(*, '(1X,B2,I2, B2)') 'B(',I,') = '
   read(*, *) B(I)
 end do

 do I =1, M
   write(*, *) 'The element of', I, "th value of C is ", A(I)*B(I)
 end do
 

 S = dot_product(A,B)
 !write(*, '(1X,MFM)') C
 write(*,*)'dot_product(A, B) =', S

 stop

end program in_pro_vec02
