package components
{
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	import flash.geom.Matrix;
	
	public class BitmapFill extends Sprite
	{
		private var url:String = "assets/patterns/brushed.jpg";
		private var loader:Loader = new Loader();
		
		public function BitmapFill()
		{
			super();
		}
		
		
		
		public function BitmapFillFromURL(url) {
			
			var request:URLRequest = new URLRequest(url);
			
			loader.load(request);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, drawImage);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
		}
		
		private function drawImage(event:Event):void {
			
			var mySprite:Sprite = new Sprite();
			var myBitmap:BitmapData = new BitmapData(loader.width, loader.height, false);
			
			myBitmap.draw(loader, new Matrix());
			
			var matrix:Matrix = new Matrix();
			matrix.rotate(Math.PI/4);
			
			mySprite.graphics.beginBitmapFill(myBitmap, matrix, true);
			mySprite.graphics.drawRect(100, 50, 200, 90);
			mySprite.graphics.endFill();
			
			addChild(mySprite);
		}
		
		private function ioErrorHandler(event:IOErrorEvent):void {
			trace("Unable to load image: " + url);
		}
	}
}