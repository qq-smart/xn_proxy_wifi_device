/*
 * Copyright (C) lilinwei
 * Copyright (C) qq_smarthome, Inc.
 */


#ifndef _QQ_ALLOC_H_INCLUDED_
#define _QQ_ALLOC_H_INCLUDED_


#include "qq_config.h"
#include "qq_core.h"


void *qq_alloc(size_t size);
void *qq_calloc(size_t size);
void *qq_memalign(size_t alignment, size_t size);


extern qq_uint_t  qq_pagesize;
extern qq_uint_t  qq_pagesize_shift;
extern qq_uint_t  qq_cacheline_size;


#endif /* _QQ_ALLOC_H_INCLUDED_ */
