#pragma once

namespace TES3 {
	struct AIConfig {
		short hello; // 0x0
		unsigned char fight; // 0x2
		unsigned char flee; // 0x3
		unsigned char alarm; // 0x4
		char unknown_0x5[3];
		int merchantFlags; // 0x8
		void * travelDestinations; // 0xC
	};
}
