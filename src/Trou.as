package 
{
	import flash.display.*;
	import Table;
	
	public class Trou extends Visuel
	{		
		private const LARGEUR_SCENE:int = 970;
        private const HAUTEUR_SCENE:int = 600;
		
		public function Trou():void
		{
			var coX:Array = [-35, 438, 870, -35, 438, 870];
			var coY:Array = [60, 60, 60, 509, 509, 509];
			
			var trou:Shape = new Shape();
			
			
			for (var i:int = 0; i < 6; i++)
			{
				//trace("coY : ", coY[i]);
				
				trou.graphics.beginFill(0x000000);
				trou.graphics.drawCircle(coX[i],coY[i],15);
				trou.graphics.endFill();
				addChild(trou);
				
			}
			
			
			/* exemples
			for (var i:int = 0; i < 6; i++)
			{
				trace("coY : ", coY[i]);
			}
			*/
		}
		
	}
	
}
