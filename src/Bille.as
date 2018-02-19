package 
{
	import flash.display.*;
	import flash.text.TextField;
	/**
	 * ...
	 * @author Clément Pera
	 */
	
	public class Bille extends Visuel
	{
		private const LARGEUR_SCENE:int = 970;
        private const HAUTEUR_SCENE:int = 600;
		
		public function Bille():void
		{
			var billes:Shape = new Shape();
			var texte:TextField = new TextField();
			var masque:Shape = new Shape();
			
			var coX:Array = [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160];
			var coY:Array = [30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30];
			
			var diametre:Number = 10;
			var masse:Number = 172 * Unite.GRAMME;

			
			//Toutes les couleurs des Billes...
			var couleurs:Array = [
				0xffffff, // Bille blanche
				0xfac92e, //1
				0x1744c1, //2
				0xee372e, //3
				0x271d53, //4
				0xff8d59, //5
				0x189e66, //6
				0x931422, //7
				0x000000, // Bille 8
				0xf7af1d, //9
				0x2059e8, //10
				0xde291d, //11
				0x2f2665, //12
				0xfb8351, //13
				0x0d955c, //14
				0x92121d  //15
			]; 
			
			var NumberBilles:Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
			
			for (var i:int = 0; i < 16; i++)
			{
				billes.graphics.beginFill(couleurs[i]);
				billes.graphics.drawCircle(coX[i], coY[i], diametre);
				billes.graphics.endFill();
				addChild(billes);
		/* MASQUE
				var coYM:int = coY[i] - 10;
				trace(coYM);
				
				masque.graphics.beginFill(0x00FF00);
				masque.graphics.drawCircle(coX[i], coYM, diametre);
				masque.graphics.endFill();
				
				
				addChild(masque);
				//masque.blendMode = BlendMode.ALPHA
				//this.blendMode = BlendMode.LAYER
				masque.mask = billes;
		*/
				
				texte.text = NumberBilles[i];
				//texte
				trace("BLA BLA BLA : " + texte.text);
				
				if (i <= 15)
				{
				
					//trace(texte.text);
					
				}


			}

		}
	}
	
}