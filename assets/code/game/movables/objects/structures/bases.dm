obj/outdoors/structures/bases
	icon = 'assets/art/turfs/base.dmi'

	respawner
		icon_state = "respawn"
		#ifndef SPACEMAN_DMM
		filters = list(filter(type="drop_shadow",size=4,color="#ADD8E6"))
		#endif
		MapInit()
			..()
			animate(filters[1],color=rgb(155,155,155,155),size = 10,time = 10, loop = -1)
			animate(color="#ADD8E6",time = 10)
			new/obj/lights/respawner_light(src.loc)

	wall
		icon_state = "wall"
		density = 1
		plane = WALL_PLANE
		hasShadow = true
		#ifndef SPACEMAN_DMM
		filters = list(filter(type="drop_shadow",x=0,y=-2,size=4,color="#04080FAA"))
		#endif

	lamp
		icon_state = "lamp"
		hasShadow = true
		#ifndef SPACEMAN_DMM
		filters = list(filter(type="bloom",threshold=rgb(254,254,254),size=2,offset=1))
		#endif
		MapInit()
			..()
			new/obj/lights/white_light(src.loc)
			animate(filters[1],offset = 2,time = rand(8,11),loop=-1)
			animate(offset=1,time=rand(8,11))
		invisible_lamp
			invisibility = 1