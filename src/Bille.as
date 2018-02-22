package 
{
	import com.adobe.tvsdk.mediacore.TextFormat;
	import flash.display.*;
	import flash.filters.DropShadowFilter;
	import flash.text.TextField;
	/**
	 * ...
	 * @author Clément Pera
	 */
	
	public class Bille extends Visuel
	{
		private const LARGEUR_SCENE:int = 970;
        private const HAUTEUR_SCENE:int = 600;
		
		public var ta_race:int = 42;
		public function Bille():void
		{
			var billes:Shape = new Shape();
			var masque:Shape = new Shape();
			
			var coX:Array = [30,60,90,120,150,180,210,240,270,300,330,360,390,420,450,480];
			var coY:Array = [30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30];
			
			var diametre:Number = 10;
			var masse:Number = 172 * Unite.GRAMME;

			
			//Toutes les couleurs des billes...
			var couleurs:Array = [
				0xfac92e, //1
				0x1744c1, //2
				0xee372e, //3
				0x271d53, //4
				0xff8d59, //5
				0x189e66, //6
				0x931422, //7
				0x000000, // billes 8
				0xf7af1d, //9
				0x2059e8, //10
				0xde291d, //11
				0x2f2665, //12
				0xfb8351, //13
				0x0d955c, //14
				0x92121d,  //15
				0xffffff // billes blanche
			]; 
			
			filters = [
				// Ombre
				new DropShadowFilter(3, 45, 0, 0.3, 6, 6, 1, 2),
				// Volume (ombre intérieure)
				new DropShadowFilter( -10, 45, 0, 0.3, 6, 6, 1, 2, true)
			];

			
			var Numberbilles:Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
			
			for (var i:int = 0; i < 16; i++)
			{
				
				billes.graphics.beginFill(couleurs[i]);
				billes.graphics.drawCircle(coX[i], coY[i], diametre);
				billes.graphics.endFill();
				addChildAt(billes, 0);
				
				var coXM:int = coX[i];
				//var diametreM:int = diametre;
				//trace(coXM);
		/* Masque
				masque.graphics.beginFill(0xFFFFFF);
				masque.graphics.drawCircle(coXM, coY[i], diametreM);
				masque.graphics.endFill();
				
				
				addChild(masque);
				//masque.blendMode = BlendMode.ALPHA
				//this.blendMode = BlendMode.LAYER
				masque.mask = billes;
		*/
				if (i < 15)
				{

					

					var texte:TextField = new TextField();
					var format:TextFormat = new TextFormat();
					
					texte.text = String(Numberbilles[i]);
					var Xtext:int = coX[i];
					var Ytext:int = coY[i];
					
					if (i >= 9)
					{
						texte.x = Xtext -8;
						texte.y = Ytext -8;
					}
					else
					{
						texte.x = Xtext-5;
						texte.y = Ytext -8;
					}
					
					// Mise en forme
					addChildAt(texte,1);
				}
				
			}
			
		}
	}
	
}