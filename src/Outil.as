package  
{
    import flash.display.DisplayObject;
    /**
     * Quelques fonctions utiles.
     * @author Guillaume CHAU
     */
    public class Outils 
    {
        /**
         * Calcule et renvoie la distance (en pixels) entre deux objets.
         * @param    obj1
         * @param    obj2
         * @return    Distance en pixels
         */
        static public function distance(obj1:DisplayObject, obj2:DisplayObject):Number
        {
            return distanceNombres(obj1.x, obj1.y, obj2.x, obj2.y);
        }
        
        /**
         * Calcule et renvoie la distance (en pixels) entre les deux points formés par les coordonnées parssées en paramètre.
         * @param    x1
         * @param    y1
         * @param    x2
         * @param    y2
         * @return    Distance en pixels
         */
        static public function distanceNombres(x1:Number, y1:Number, x2:Number, y2:Number):Number
        {
            var X:Number = x2 - x1;
            var Y:Number = y2 - y1;
            return Math.sqrt(X * X + Y * Y);
        }
        
        /**
         * Calcule et renvoie l'angle (en radians) entre les deux objets.
         * @param    obj1
         * @param    obj2
         * @return    Angle en radians
         */
        static public function angle(obj1:DisplayObject, obj2:DisplayObject):Number
        {
            return angleNombres(obj1.x, obj1.y, obj2.x, obj2.y);
        }
        
        /**
         * Calcule et renvoie l'angle (en radians) entre les deux points formés par les coordonnées passées en paramètre.
         * @param    x1
         * @param    y1
         * @param    x2
         * @param    y2
         * @return    Angle en radians
         */
        static public function angleNombres(x1:Number, y1:Number, x2:Number, y2:Number):Number
        {
            return Math.atan2(y2 - y1, x2 - x1);
        }
    }

}
