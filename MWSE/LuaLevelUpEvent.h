#pragma once

#include "LuaGenericEvent.h"
#include "LuaDisableableEvent.h"

namespace mwse {
	namespace lua {
		namespace event {
			class LevelUpEvent : public GenericEvent, public DisableableEvent<LevelUpEvent> {
			public:
				LevelUpEvent();
				sol::table createEventTable();
				sol::object getEventOptions();
			};
		}
	}
}
