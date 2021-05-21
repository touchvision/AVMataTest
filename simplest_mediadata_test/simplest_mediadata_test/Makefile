CC = cc
LD = cc
SRCS = $(wildcard *.cpp)
OBJS = $(patsubst %cpp, %o, $(SRCS))
# -I指定头文件目录
INCLUDE = -I/home/syberos/lcc/ffmpeg/ffmpeg-3.4.8
INCLUDE += -I/usr/include
# -L指定库文件目录，-l指定静态库名字(去掉文件名中的lib前缀和.a后缀)
LIB = -L/home/syberos/lcc/ffmpeg/build_out/lib
LIB += -L/usr/lib
LIB += -lm
# 开启编译warning和设置优化等级
CFLAGS = -Wall -O2 

TARGET = simplest_mediadata_main

.PHONY:all clean

all: $(TARGET)
# 链接时候指定库文件目录及库文件名
$(TARGET): $(OBJS)
	$(LD) -o $@ $^ $(LIB)
 
# 编译时候指定头文件目录
%.o:%.cpp
	$(CC) -c $^ $(INCLUDE) $(CFLAGS) 

clean:
	rm -f $(OBJS) $(TARGET)
