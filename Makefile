msp = /usr/bin/msp430-gcc

main: main.o
	$(msp) -Os -mmcu=msp430g2553 -o main.elf *.o
	rm *.o
main.o: main.cpp vetor.o
	$(msp) -Os -mmcu=msp430g2553 -c main.cpp
vetor.o: vetor.cpp
	$(msp) -Os -mmcu=msp430g2553 -c vetor.cpp
