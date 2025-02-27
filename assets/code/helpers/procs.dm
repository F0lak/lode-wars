proc/
	GetStep(atom/ref,dir,dist=1)
		var/list/tileList = list()
		var/xaa = ref.x
		var/yaa = ref.y
		while(dist--)
			switch(dir)
				if(NORTH) yaa += 1
				if(SOUTH) yaa -= 1
				if(EAST) xaa += 1
				if(WEST) xaa -= 1
			var/turf/t = locate(xaa,yaa,ref.z)
			if(t && istype(t)) tileList.Add(t.contents, t)
		return tileList

	num2dir(num)
		switch(num)
			if(1) return "NORTH"
			if(2) return "SOUTH"
			if(8) return "WEST"
			if(4) return "EAST"

	ListToString(list/strings = list(), delimiter, breakAfter)
		var returnString = ""
		var/newLineAfter = breakAfter
		for(var/i in strings)
			if(i != strings[strings.len])
				if(i == strings[newLineAfter])
					returnString = "[returnString][i][delimiter]<br>"
					newLineAfter = newLineAfter + breakAfter
				else
					returnString = "[returnString][i][delimiter]"
			else
				returnString = "[returnString][i]"
		return returnString