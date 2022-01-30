program RMS
implicit none
integer :: I, N
real :: S, SS, average, variance, sigma
real, dimension(100) :: A

 write(*, *) 'N=' !Enter # of data
 read (*, *) N
 do I = 1, N !Enter each value of all data
   write(*, '(1X, A2, I2, A2)')'A(', I, ')='
   read (*, *) A(I)
 end do

 S = 0.0
 do I = 1, N
   S = S + A(I)
 end do 
 average = S/N

 SS = 0.0
 do I =1, N
   SS = SS + (A(I)- average)**2
 end do
 variance = SS/real(N)
 
 sigma = sqrt(variance)
 
 write(*, *) 'The average is', average
 write(*, *) 'The variance is', variance
 write(*, *) 'The sigme is', sigma 
 stop

end program RMS

! I ought to enter all data and the volume of data. That is obviously the borthering procedure.
! Is there any meanings to read outside data? 
