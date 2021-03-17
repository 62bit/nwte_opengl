flags="-g -O0"
includes="-I ../dependencies/ \
	  -I ../dependencies/GLEW \
	  -I ../dependencies/SDL2/include/ \
	  -I ../dependencies/SDL2_image/include \
	  -I ../dependencies/SDL2_ttf/include \
	  -I ../sdl_game/code/"

files="../code/*.cpp"

libs="-lSDL2 -lGL -lGLEW"

pushd ./lbuild/
time g++ $flags $includes $files $libs
popd

RESULT=$?

if [ $RESULT -eq 0 ]; 
then
	echo ""
	echo -e "\e[92mBuilded"
else
	echo ""
	echo -e "\e[91mFailed"  
fi

