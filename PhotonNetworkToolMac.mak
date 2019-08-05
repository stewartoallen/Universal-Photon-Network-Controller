#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++ -mmacosx-version-min=10.10
AR = ar
LD = g++
WINDRES =

INC = -I/usr/local/lib/wx/include/osx_cocoa-unicode-3.1 -I/usr/local/include/wx-3.1
CFLAGS = -Wall
RESINC = 
LIBDIR = -L/usr/local/lib
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = Mac/x64/Debug/PhotonTool

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2 -arch x86_64 -fno-common -fvisibility=hidden -fvisibility-inlines-hidden -DWXUSINGDLL -D_FILE_OFFSET_BITS=64 -D__WXMAC__ -D__WXOSX__ -D__WXOSX_COCOA__ 
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)-framework IOKit -framework Carbon -framework Cocoa -framework AudioToolbox -framework System -framework OpenGL -lwx_osx_cocoau_xrc-3.1 -lwx_osx_cocoau_html-3.1 -lwx_osx_cocoau_qa-3.1 -lwx_osx_cocoau_core-3.1 -lwx_baseu_xml-3.1 -lwx_baseu_net-3.1 -lwx_baseu-3.1
LDFLAGS_RELEASE = $(LDFLAGS)
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = Mac/x64/Release/PhotonTool

OBJ_DEBUG = $(OBJDIR_DEBUG)/NewFrame.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/NewFrame.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d Mac/x64/Debug || mkdir -p Mac/x64/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/NewFrame.o: NewFrame.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c NewFrame.cpp -o $(OBJDIR_DEBUG)/NewFrame.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf Mac/x64/Debug
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d Mac/x64/Release || mkdir -p Mac/x64/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/NewFrame.o: NewFrame.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c NewFrame.cpp -o $(OBJDIR_RELEASE)/NewFrame.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf Mac/x64/Release
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

