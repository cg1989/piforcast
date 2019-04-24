#pragma once

#include "bme280.h"

#if defined (__cplusplus)
extern "C" {
#endif
#include <sys/types.h>
#include <fcntl.h>
#include <stdint.h>

struct bme280_dev init();

struct bme280_data refresh(struct bme280_dev *dev);

#if defined (__cplusplus)
}
#endif
 

