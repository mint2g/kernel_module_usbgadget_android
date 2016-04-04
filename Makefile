
PWD := $(shell pwd)  

.PHONY: build clean  

build:
	 $(MAKE) -C $(KDIR) M=$(PWD) modules  

clean:
	 rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c 


obj-m := g_android.o  g_android_samsung.o

g_android-objs := android.o multi_config.o
g_android_samsung-objs := android_samsung.o multi_config.o

