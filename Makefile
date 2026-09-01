SRCDIR = ./src
BINDIR = ./bin
ISODIR = ./isodir

TARGET_ISO = bober_system.iso

CC = cc
LD = ld
AS = as

C_SOURCES = $(shell find $(SRCDIR) -name "\*.c")
C_OBJS = $(C_SOURCES:$(SRCDIR)/%.c=$(BINDIR)/%.o)

# use -p so that it doesnt complain about the folder existing
create_dirs:
	mkdir -p $(BINDIR)
	mkdir -p $(ISODIR)

all: create_dirs
	echo "sources: $(c_sources)"
	echo "objects: $(c_objs)"

$(BINDIR)/%.o: $(SRCDIR)/%.c
	echo $<

clean:
	rm -rf bin
	rm -rf isodir