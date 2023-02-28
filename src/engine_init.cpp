#include <dragon/compute.hpp>

DGAPI DgResult dgAddComputeEngine(std::shared_ptr<DgEngine> pEngine, std::shared_ptr<DgComputeEngine> pComputeEngine) {
	if (pEngine == nullptr) {
		dgCreateEngine(pEngine);
	}
	pComputeEngine->pDragon = pEngine;
	return DG_SUCCESS;
}

