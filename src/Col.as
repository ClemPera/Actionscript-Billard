package
{
    import flash.display.*;
	import flash.geom.*;
	import flash.events.Event;
	import flash.filters.GlowFilter;
	
    public class Col extends Visuel
    {
        
        public function Col():void
        {
			
			var obj1:Shape = new Shape();
			obj1.graphics.lineStyle(20, 0x000000);
			obj1.graphics.drawCircle(200, 200, 100);
			var obj2:Shape = new Shape();
			obj2.graphics.beginFill(0x880088);
			obj2.graphics.drawCircle(0, 0, 15);
			obj2
			addChild(obj1);
			addChild(obj2);
			addEventListener(Event.ENTER_FRAME, maFonction);
			function maFonction():void
			{
				obj2.x = mouseX;
				obj2.y = mouseY;
				if (Collision.tester(obj1, obj2, 0x11)) {
					obj1.filters = new Array(new GlowFilter());
				}else{
					obj1.filters = new Array();
				}
			}

			
        }
           
    }

}
