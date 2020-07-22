obj = hello_world

gtk_version = 2.0

CFLAGS = `pkg-config gtk+-$(gtk_version) --cflags`
CLIBS = `pkg-config gtk+-$(gtk_version) --libs`

all:
	gcc $(CFLAGS) $(obj).c -o $(obj) $(CLIBS)
