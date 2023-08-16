#pragma once

#include <dragon/core.hpp>

#include "computeEngine.hpp"

DGAPI DgResult dgInitComputeEngine(DgEngine &pEngine);
DGAPI void dgDestroyComputeEngine(DgEngine &pComputeEngine);