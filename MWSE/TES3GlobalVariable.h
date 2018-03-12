#pragma once

#include "TES3Object.h"

namespace TES3 {
	struct GlobalVariable : BaseObject {
		char name[32]; // 0x10
		char valueType; // 0x30
		char unknown_0x31;
		char unknown_0x32;
		char unknown_0x33;
		float value; // 0x34
	};
	static_assert(sizeof(GlobalVariable) == 0x38, "TES3::GlobalVariable failed size validation");
}
