objects = {}

function object(x,y,dir)
	add(objects,{
		x=x,
	  	y=y,
	  	width=4,
	  	height=4,
	   	draw=function (this)
	     		rect(this.x,this.y,this.x+this.width,this.y+this.height,1)
	   	end,
	   	update=function (this)
	     		this.x += this.dir
	   	end
	})
end

function _update60()
	foreach(objects, function(o)
		o:update()
	end)
end

function _draw()
	foreach(objects, function(o)
		o:draw()
	end)
end
