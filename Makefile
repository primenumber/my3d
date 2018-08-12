CXXFLAGS=-std=c++14 -lglfw -lGLEW -lGL -lXrandr -lXinerama -lXcursor -lXi -lXxf86vm -lX11 -lpthread -lrt -lm -ldl -L/opt/cuda/lib64 -lcudart
OBJS=main.o render.o

my3d: $(OBJS)
	g++-5 -o $@ $^ $(CXXFLAGS)

%.o: %.cpp
	g++-5 -c -o $@ $< $(CXXFLAGS)

%.o: %.cu
	nvcc -c -o $@ $< $(NVCCFLAGS)

