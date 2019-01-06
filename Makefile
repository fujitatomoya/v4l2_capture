TARGET = v4l2_capture

all: $(TARGET)

$(TARGET): main.cpp v4l2device.cpp
	$(CXX) -Wall -g -O0 -o $(TARGET) main.cpp v4l2device.cpp $(shell pkg-config --libs-only-l opencv libv4l2)

clean:
	$(RM) $(TARGET)