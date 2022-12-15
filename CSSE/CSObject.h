#pragma once

#include "CSBaseObject.h"

#include "NIDefines.h"

namespace se::cs {
	struct Object_VirtualTable : BaseObject_VirtualTable {
		void* unknown_0x24;
		void(__thiscall* setObjectID)(Object*, const char*); // 0x28
		void* unknown_0x2C;
		void* unknown_0x30;
		void* unknown_0x34;
		void* unknown_0x38;
		void* unknown_0x3C;
		void* unknown_0x40;
		void* unknown_0x44;
		void* unknown_0x48;
		void* unknown_0x4C;
		void* unknown_0x50;
		void* unknown_0x54;
		void* unknown_0x58;
		void* unknown_0x5C;
		void* unknown_0x60;
		void* unknown_0x64;
		void* unknown_0x68;
		void* unknown_0x6C;
		void* unknown_0x70;
		void* unknown_0x74;
		void* unknown_0x78;
		void* unknown_0x7C;
		void* unknown_0x80;
		void* unknown_0x84;
		void* unknown_0x88;
		void* unknown_0x8C;
		void* unknown_0x90;
		void* unknown_0x94;
		void* unknown_0x98;
		void* unknown_0x9C;
		void* unknown_0xA0;
		void* unknown_0xA4;
		void* unknown_0xA8;
		void* unknown_0xAC;
		void* unknown_0xB0;
		void* unknown_0xB4;
		void* unknown_0xB8;
		void* unknown_0xBC;
		void* unknown_0xC0;
		void* unknown_0xC4;
		void* unknown_0xC8;
		void* unknown_0xCC;
		void* unknown_0xD0;
		void* unknown_0xD4;
		void* unknown_0xD8;
		void* unknown_0xDC;
		void* unknown_0xE0;
		void* unknown_0xE4;
		void* unknown_0xE8;
		void* unknown_0xEC;
		void* unknown_0xF0;
		void* unknown_0xF4;
		void* unknown_0xF8;
		void* unknown_0xFC;
		void* unknown_0x100;
		void* unknown_0x104;
		bool(__thiscall* isMarker)(const Object*); // 0x108
		void* unknown_0x10C;
		void* unknown_0x110;
		void* unknown_0x114;
		void* unknown_0x118;
		void* unknown_0x11C;
		float(__thiscall* getScale)(const Object*); // 0x120
		void(__thiscall* setScale)(Object*, float, bool); // 0x124
		void* unknown_0x128;
		void* unknown_0x12C;
		void* unknown_0x130;
		void* unknown_0x134;
		void* unknown_0x138;
		void* unknown_0x13C;
		void* unknown_0x140;
		void* unknown_0x144;
		void* unknown_0x148;
		void* unknown_0x14C;
		void* unknown_0x150;
		void* unknown_0x154;
		void* unknown_0x158;
		void* unknown_0x15C;
		void* unknown_0x160;
		void* unknown_0x164;
		void* unknown_0x168;
		void* unknown_0x16C;
		void* unknown_0x170;
		void* unknown_0x174;
		void* unknown_0x178;
		void* unknown_0x17C;
		void* unknown_0x180;
		void* unknown_0x184;
		void* unknown_0x188;
		void* unknown_0x18C;
		void* unknown_0x190;
		void* unknown_0x194;
		void* unknown_0x198;
		void* unknown_0x19C;
		void* unknown_0x1A0;
		void* unknown_0x1A4;
		void* unknown_0x1A8;
		void* unknown_0x1AC;
		void* unknown_0x1B0;
		void* unknown_0x1B4;
		void* unknown_0x1B8;
		void* unknown_0x1BC;
		void* unknown_0x1C0;
		void* unknown_0x1C4;
		void* unknown_0x1C8;
		void* unknown_0x1CC;
		void* unknown_0x1D0;
		void* unknown_0x1D4;
		void* unknown_0x1D8;
		void* unknown_0x1DC;
	};

	struct Object : BaseObject {
		NI::Node* sceneNode; // 0x10
		int unknown_0x14;
		void* referenceToThis; // 0x18
		Object* previousInCollection; // 0x1C
		Object* nextInCollection; // 0x20
		int unknown_0x24;

		bool isMarker() const {
			return vtbl.object->isMarker(this);
		}

		float getScale() const {
			return vtbl.object->getScale(this);
		}

		void setScale(float scale, bool something = true) {
			vtbl.object->setScale(this, scale, something);
		}
	};
	static_assert(sizeof(Object) == 0x28, "CS::Object failed size validation");
	static_assert(sizeof(Object_VirtualTable) == 0x1E0, "CS::Object's virtual table failed size validation");
}