package utility
{
	public class StringUtility
	{
		public function StringUtility()
		{
		}
		
		public function hexToRGB(hex:Number):Object
		{
			var rgbObj:Object = {
				red: ((hex & 0xFF0000) >> 16) / 255,
				green: ((hex & 0x00FF00) >> 8) / 255,
				blue: ((hex & 0x0000FF)) / 255
			};
			
			return rgbObj;
		}
		
		public function stringToHexInt(hexString : String):int
		{
			return parseInt(hexString,16);
		}
		
		static public function hexStringToRGB(hexString : String):Object
		{
			
		}
	}
}