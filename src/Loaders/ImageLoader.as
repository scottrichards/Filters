package Loaders
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;

	public class ImageLoader
	{
		private var _data : Object;
		private var _loader : Loader;
		
		public function ImageLoader()
		{
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
			_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
		}
		
		public function loadDirectory() {
		 	
		}
		
		public function loadImage(path)
		{
			_loader.load(new URLRequest(path));
		}
		
		private function loadComplete( evt:Event ):void
		{
			var loaderInfo : LoaderInfo = evt.target as LoaderInfo;
			var bmp:Bitmap = loaderInfo.content as Bitmap;
			trace("Loaded: " + loaderInfo.url);
			_data[getFileNameFromUrl(loaderInfo.url)] = bmp;
		}
		
		private function getFileNameFromUrl(url:String):String
		{
			var fileName : String;
			fileName = url.substring(url.lastIndexOf('/'),url.length);
			return fileName;
		}
		
		private function loadError( ioError:IOErrorEvent):void
		{
			var loaderInfo : LoaderInfo = ioError.target as LoaderInfo;
			trace("ERROR Loading File: " + loaderInfo.url); 	
			trace("IO ERROR : " + ioError); 	
		}
	}
}