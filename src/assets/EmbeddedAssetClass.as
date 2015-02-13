package assets
{
	public class EmbeddedAssetClass extends Object
	{
		[Embed(source="logo.gif")] 
		[Bindable] 
		public var imgCls:Class;
		
		public function EmbeddedAssetClass()
		{
			super();
		}
	}
}