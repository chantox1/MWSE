#pragma once

#include "LuaGenericEvent.h"
#include "LuaDisableableEvent.h"

namespace mwse {
	namespace lua {
		namespace event {
			class WeatherTransitionStartedEvent : public GenericEvent, public DisableableEvent<WeatherTransitionStartedEvent> {
			public:
				WeatherTransitionStartedEvent();
				sol::table createEventTable();
			};
		}
	}
}
