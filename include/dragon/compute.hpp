#pragma once

#include <dragon/dragon.hpp>

#include "computeEngine.hpp"

DGAPI DgResult dgAddComputeEngine(std::shared_ptr<DgEngine> pEngine, std::shared_ptr<DgComputeEngine> pComputeEngine);
DGAPI void dgDestroyComputeEngine(std::shared_ptr<DgComputeEngine> pComputeEngine);