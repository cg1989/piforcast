#pragma once

#include "bme280.h"

#if defined (__cplusplus)
extern "C" {
#endif
#include <sys/types.h>
#include <fcntl.h>
#include <stdint.h>

int8_t init(struct bme280_dev *dev);

struct bme280_data getData(struct bme280_dev *dev);

#if defined (__cplusplus)
}
#endif
 

