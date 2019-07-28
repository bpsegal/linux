/* SPDX-License-Identifier: GPL-2.0
 *
 * Copyright 2016-2019 HabanaLabs, Ltd.
 * All Rights Reserved.
 *
 */

#ifndef DEBUG_H_
#define DEBUG_H_

static void dumpMemory(const char* desc, void* addr, u32 len) {
	unsigned char* byte;
	int i;
	byte = (unsigned char*) addr;
        if (desc != 0) {
		printk("%s | %u bytes", desc, len);
        }

        for (i=0; i < len; i++) {
		if ((i % 16) == 0) {
			printk("%px",byte+i);
		}		
		if ((i % 4) == 0) {
			printk(KERN_CONT "  ");
		}
		printk(KERN_CONT "%02x", byte[i]);
	}
}

#endif /* DEBUG_H_ */
