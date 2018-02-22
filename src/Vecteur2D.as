package  
{
    /**
     * Un vecteur x;y, pour les calculs
     * @author Guillaume CHAU
     */
	
    public class Vecteur2D 
    {
        private var _x:Number;
        private var _y:Number;
        
        private var _module:Number = 0;
        private var _angle:Number = 0;
        
        public function Vecteur2D(x:Number = 0, y:Number = 0) 
        {
            _x = x;
            _y = y;
            
            _calculAngleModule();
        }
        
        public function toString():String 
        {
            return "[Vecteur2D x=" + x + " y=" + y + " module=" + module + " angle=" + angle + "]";
        }
        
        /**
         * Revoie une copie du vecteur.
         * @return
         */
        public function clone():Vecteur2D
        {
            var c:Vecteur2D = new Vecteur2D();
            c.x = _x;
            c.y = _y;
            return c;
        }
        
        /**
         * Ajoute le vecteur passé en paramètre au vecteur courant.
         * @param vecteur   Vecteur à ajouter.
         * @param apply     Si vrai, modifie directement le vecteur courant. Sinon, renvoie un nouveau vecteur.
         * @return          Le vecteur représentant la somme des deux premiers vecteurs.
         */
        public function ajouter(vecteur:Vecteur2D, apply:Boolean = false):Vecteur2D
        {
            var cible:Vecteur2D;
            if (apply)
            {
                cible = this;
            }
            else
            {
                cible = clone();
            }
            cible.x += vecteur.x;
            cible.y += vecteur.y;
            return cible;
        }
        
        /**
         * Soustrait le vecteur passé en paramètre au vecteur courant.
         * @param vecteur   Vecteur à soustraire.
         * @param apply     Si vrai, modifie directement le vecteur courant. Sinon, renvoie un nouveau vecteur.
         * @return          Le vecteur représentant la soustraction des deux premiers vecteurs.
         */
        public function soustraire(vecteur:Vecteur2D, apply:Boolean = false):Vecteur2D
        {
            var cible:Vecteur2D;
            if (apply)
            {
                cible = this;
            }
            else
            {
                cible = clone();
            }
            cible.x -= vecteur.x;
            cible.y -= vecteur.y;
            return cible;
        }
        
        /**
         * Multiplie le vecteur par un coefficient numérique.
         * @param coef      Coefficient numérique.
         * @param apply     Si vrai, modifie directement le vecteur courant. Sinon, renvoie un nouveau vecteur.
         * @return          Le vecteur ayant reçu la multiplication.
         */
        public function multiplier(coef:Number, apply:Boolean = false):Vecteur2D
        {
            var cible:Vecteur2D;
            if (apply)
            {
                cible = this;
            }
            else
            {
                cible = clone();
            }
            cible.x *= coef;
            cible.y *= coef;
            return cible;
        }
        
        /**
         * Normalise le vecteur (c'est-à-dire modifie ses coordonnées x et y telles que son module vaille 1).
         * @param apply     Si vrai, modifie directement le vecteur courant. Sinon, renvoie un nouveau vecteur.
         * @return          Le vecteur normalisé.
         */
        public function normaliser(apply:Boolean = false):Vecteur2D
        {
            var cible:Vecteur2D;
            if (apply)
            {
                cible = this;
            }
            else
            {
                cible = clone();
            }
            var m:Number = cible.module;
            if (m != 0)
            {
                cible.x /= m;
                cible.y /= m;
            }
            else
            {
                cible.x = 0;
                cible.y = 0;
            }
            return cible;
        }
        
        /**
         * Calcule le produit du vecteur courant avec le vecteur passé en paramètre.
         * @param vecteur       Le vecteur à multiplier avec le vecteur courant.
         * @return              Nombre résultant de la multiplication des deux vecteurs.
         */
        public function produit(vecteur:Vecteur2D):Number
        {
            return this.x * vecteur.x + this.y + vecteur.y;
        }
        
        /* PRIVE */
        
        private function _calculCoord():void
        {
            if (_module == 0)
            {
                _x = 0;
                _y = 0;
            }
            else
            {
                _x = Math.cos(angle) * _module;
                _y = Math.sin(angle) * _module;
            }
        }
        
        private function _calculAngleModule():void
        {
            if (_x == 0 && _y == 0)
            {
                _angle = 0;
                _module = 0;
            }
            else
            {
                _module = Outils.distanceNombres(0, 0, _x, _y);
                _angle = Outils.angleNombres(0, 0, _x, _y);
            }
        }
        
        /* GETTERS */
        
        /**
         * Coordonnée horizontale.
         */
        public function get x():Number 
        {
            return _x;
        }
        
        public function set x(value:Number):void 
        {
            _x = value;
            
            _calculAngleModule();
        }
        
        /**
         * Coordonnée verticale.
         */
        public function get y():Number 
        {
            return _y;
        }
        
        public function set y(value:Number):void 
        {
            _y = value;
            
            _calculAngleModule();
        }
        
        /**
         * Module (longeur du vecteur).
         */
        public function get module():Number 
        {
            return _module;
        }
        
        public function set module(value:Number):void 
        {
            _module = value;
            
            _calculCoord();
        }
        
        /**
         * Angle du vecteur par rapport à l'horizontale.
         */
        public function get angle():Number 
        {
            return _angle;
        }
        
        public function set angle(value:Number):void 
        {
            _angle = value;
            
            _calculCoord();
        }
        
    }

}
