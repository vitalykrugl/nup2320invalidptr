g++ -fPIC dll.cpp -I./ -shared -o libdll.so || exit

g++ app.cpp -I./ -L./ -ldll -Wl,-rpath=\$ORIGIN -o app || exit

