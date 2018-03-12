#pragma once

#include "TES3Object.h"
#include "TES3Collections.h"

namespace TES3 {
	struct ItemVariables {
		int count; // 0x0
		void * owner; // 0x4
		void * lockData; // 0x8
		int condition; // 0xC
		int enchantCharge; // 0x10
		void * script; // 0x14
		void * scriptData; // 0x18
	};
	static_assert(sizeof(ItemVariables) == 0x1C, "TES3::ItemVariables failed size validation");

	struct ItemStack {
		int count; // 0x0
		Object * object; // 0x4
		ItemVariables * variables; // 0x8
	};
	static_assert(sizeof(ItemStack) == 0xC, "TES3::ItemStack failed size validation");

	struct Inventory {
		unsigned int flags; // 0x0
		Iterator<ItemStack> iterator; // 0x4
		int unknown_0x18;
	};
	static_assert(sizeof(Inventory) == 0x1C, "TES3::Inventory failed size validation");
}
