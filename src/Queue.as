package 
{
	import Table;
	import flash.display.*;
	
	public class Queue extends Visuel
	{
		
		public function Queue():void
		{
			var q1:Shape = new Shape();
			//var q2:Shape = new Shape();
			
			var Longueur1:int = -(0.9* Unite.METRE) //total
			var Largeur1:int = (0.0125 * Unite.METRE) 
			var longueur2:int = -(0.6 * Unite.METRE)
			var largeur2:int = (0.025 * Unite.METRE)
			
			q1.graphics.beginFill(0x3e2317);
			q1.graphics.drawRect(660, 552.5, Longueur1, Largeur1);
			q1.graphics.endFill();
			
			q1.graphics.beginFill(0x000000);
			q1.graphics.drawRect(300, 550, longueur2, largeur2);
			q1.graphics.endFill();
			
			//addChildAt(q2, 0);
			addChild(q1);

		}
	}
	
	
}