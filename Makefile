# Define the compiler
CXX = singularity

# Define the output executable name
TARGET1 = ginger

# Define the source file
SRC1 = ginger.def

# Define the compilation flags
CXXFLAGS = '--fakeroot'

# Installation director
INSTALL_DIR = $(HOME)/usr/bin
# The rule to build all targets
all: $(TARGET1)

# The rule to build the targets
$(TARGET1): $(SRC1)
	$(CXX) build $(CXXFLAGS) $(TARGET1) $(SRC1)

# Clean rule to remove the compiled files
clean:
	rm -f $(TARGET1)

install:
	install -d $(INSTALL_DIR)
	install -m 755 $(TARGET1) $(INSTALL_DIR)
