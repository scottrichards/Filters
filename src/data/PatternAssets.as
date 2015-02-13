package data
{
	public class PatternAssets extends Object
	{
		[Embed(source="/assets/patterns/school.png")]
		public static const School:Class;
		[Embed(source="/assets/patterns/seamless_paper_texture.png")]
		public static const Paper:Class;
		[Embed(source="/assets/patterns/subtle_white_mini_waves.png")]
		public static const Waves:Class;
		[Embed(source="/assets/patterns/swirl_pattern.png")]
		public static const Swirl:Class;
		[Embed(source="/assets/patterns/symphony.png")]
		public static const Symphony:Class;
		[Embed(source="/assets/patterns/ricepaper_v3/ricepaper_v3_@2X.png")]
		public static const RicePaper:Class;
		
		[Embed(source="/assets/patterns/brushed/brushed_@2X.png")]
		public static const Brushed:Class;
		
		[Embed(source="/assets/patterns/crossword/crossword.png")]
		public static const Crossword:Class;
		
		[Embed(source="/assets/patterns/nice_snow/nice_snow_@2X.png")]
		public static const Snow:Class;
		
		[Embed(source="/assets/patterns/old_moon.png")]
		public static const Moon:Class;
		
		public function PatternAssets()
		{
			super();
		}
		
		static public function getNamedPattern(name : String):Class 
		{
			switch (name) {
				case "School" : return School;
								break;
				case "Paper" : return Paper;
					break;
				case "Symphony" : return Symphony;
					break;
				case "Waves" : return Waves;
					break;
				case "Swirl" : return Swirl;
					break;
				case "RicePaper" : return RicePaper;
					break;
				case "Brushed" : return Brushed;
					break;
				case "Crossword" : return Crossword;
					break;
				case "Snow" : return Snow;
					break;
				case "Moon" : return Moon;
					break;
				
			}
			return null;
		}
	}
}