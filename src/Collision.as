package
{
    import flash.display.DisplayObject;
    import flash.display.BitmapData;
    import flash.geom.Matrix;
    import flash.geom.Point;
    import flash.geom.Rectangle;
    
    public class Collision
    {
        
        public function Collision()
        {
            throw new Error('Classe abstraite');
        }
        
        static public function tester(obj1:DisplayObject, obj2:DisplayObject, seuil:uint):Boolean
        {
            var collision:Boolean = false;
            if (obj1.hitTestObject(obj2) == true)
            {
                var img1:BitmapData = creerBitmapData(obj1);
                var img2:BitmapData = creerBitmapData(obj2);
                var rect1:Rectangle = obj1.getBounds(obj1);
                var rect2:Rectangle = obj2.getBounds(obj2);
                var pos1:Point = new Point(obj1.x + rect1.x, obj1.y + rect1.y);
                var pos2:Point = new Point(obj2.x + rect2.x, obj2.y + rect2.y);
                collision = img1.hitTest(pos1, seuil, img2, pos2, seuil);
            }
            return collision;
        }
        
        static private function creerBitmapData(objet:DisplayObject):BitmapData
        {
            var image:BitmapData = new BitmapData(objet.width, objet.height, true, 0x00000000);
            var rect:Rectangle = objet.getBounds(objet);
            var transformation:Matrix = new Matrix();
            transformation.translate(-rect.x, -rect.y);
            image.draw(objet, transformation);
            return image;
        }
    
    }

}
