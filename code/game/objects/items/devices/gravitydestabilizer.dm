#define MODE_OFF 1
#define MODE_ON 2
#define MODE_STARTING 3

/obj/item/gravitydestabilizer
	name = "gravitational destabilizer"
	desc = "A device making use of gravitational anomalies to overwhelm the station's gravity field and shut it off. Originally employed by Mothic Fleet pirates."
	icon = 'icons/obj/devices/syndie_gadget.dmi'
	icon_state = "powersink0"
	inhand_icon_state = "electronic"
	lefthand_file = 'icons/mob/inhands/items/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/devices_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	obj_flags = CONDUCTS_ELECTRICITY
	item_flags = NO_PIXEL_RANDOM_DROP
	throwforce = 5
	throw_speed = 1
	throw_range = 2
	custom_materials = list(/datum/material/iron=SMALL_MATERIAL_AMOUNT* 7.5, /datum/material/plasma=SMALL_MATERIAL_AMOUNT*4)
	var/mode = MODE_OFF

/obj/item/gravitydestabilizer/Initialize(mapload)
	. = ..()
	AddComponent( \
		/datum/component/material_container, \
		list(/datum/material/bluespace = 0), \
		0, \
		MATCONTAINER_EXAMINE, \
	)

/obj/item/gravitydestabilizer/process(seconds_per_tick)
	. = ..()
