
SHARED_CXX_FLAGS="-g -Og   -fdiagnostics-show-option -m64 -fPIC   -std=c++11  -Werror -Wextra -Wreturn-type -Wunused -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -Wall"

SHARED_LINK_FLAGS="-O0  -m64    -Wl,--allow-shlib-undefined"

SHARED_LINK_LIBS="-lpthread -ldl"

APP_CXX_FLAGS="-g -Og   -fdiagnostics-show-option -m64 -fPIC -std=c++11  -Werror -Wextra -Wreturn-type -Wunused -Wno-unused-variable -Wno-unused-parameter -Wno-missing-field-initializers -Wall"

APP_LINK_FLAGS="-O0  -m64   -Wl,--no-undefined -Wl,-rpath=\$ORIGIN"

APP_LINK_LIBS="-l:/usr/lib/x86_64-linux-gnu/libpython2.7.so -lpthread -ldl"

g++ ${SHARED_CXX_FLAGS} dll.cpp -I./ ${SHARED_LINK_LIBS} ${SHARED_LINK_FLAGS} -shared -o libdll.so || exit

g++ ${APP_CXX_FLAGS} app.cpp -I./ -L./ -ldll ${APP_LINK_LIBS} ${APP_LINK_FLAGS} -o app || exit

