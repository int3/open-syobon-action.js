CPP := em++
CPPFLAGS := -O2

SyobonAction.html: main.o loadg.o DxLib.o shell.html
	$(CPP) $(CPPFLAGS) main.o loadg.o DxLib.o -o SyobonAction.html --preload-file res --preload-file SE --preload-file BGM --shell-file shell.html
main.o:main.cpp
	$(CPP) $(CPPFLAGS) -c main.cpp
loadg.o:loadg.cpp
	$(CPP) $(CPPFLAGS) -c loadg.cpp
DxLib.o:DxLib.cpp
	$(CPP) $(CPPFLAGS) -c DxLib.cpp
clean:
	rm -f *o
	rm -f SyobonAction.html
