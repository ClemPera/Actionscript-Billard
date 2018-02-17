package 
{
	import flash.display.*;
	import Table;
	
	public class Trou extends Visuel
	{		
		private const LARGEUR_SCENE:int = 970;
        private const HAUTEUR_SCENE:int = 600;
		
		//trace(maTable.tableLargeur);
		

		
		public function Trou():void
		{
			var maTable:Table = new Table;
			var X1:Number = maTable.tableLargeur
			var coX:Array = [X1, 20, 30, 40, 50, 60];
			var coY:Array = [40, 20, 30, 40, 50, 60];
			
			var trou1:Shape = new Shape();		
			var taille_trou1:int = 0.069 * Unite.METRE;
			
			for (var i:int = 0; i < 1; i++)
			{
				//trace("coY : ", coY[i]);
				
				trou1.graphics.beginFill(0x000000);
				trou1.graphics.drawCircle(coX[i],coY[i],15);
				trou1.graphics.endFill();
				addChild(trou1)
				
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
