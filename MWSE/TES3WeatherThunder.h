#pragma once

#include "TES3Weather.h"

namespace TES3 {
	struct WeatherThunder : Weather {
		char soundIdThunder1[260]; // 0x318
		char soundIdThunder2[260]; // 0x41C
		char soundIdThunder3[260]; // 0x520
		char soundIdThunder4[260]; // 0x624
		char soundIdRainLoop[260]; // 0x728
		Sound * thunderSound1; // 0x82C
		Sound * thunderSound2; // 0x830
		Sound * thunderSound3; // 0x834
		Sound * thunderSound4; // 0x838
		int thunderSoundCount; // 0x83C
		Sound * rainLoopSound; // 0x840
		float thunderFrequency; // 0x844
		float thunderThreshold; // 0x848
		float rainRadius; // 0x84C
		float rainHeightMin; // 0x850
		float rainHeightMax; // 0x854
		float rainThreshold; // 0x858
		float rainEntranceSpeed; // 0x85C
		float raindropsMax; // 0x860
		float flashDecrement; // 0x864
		bool rainPlaying; // 0x868
	};
	static_assert(sizeof(WeatherThunder) == 0x86C, "TES3::WeatherThunder failed size validation");
}
