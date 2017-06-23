package starling.utils 
{
	/**
	 * ...
	 * @author Dimo & Ivko
	 */
	public class KeyValuePair
	{
		public var key : String;
		public var value : Object;
		
		private static var sPool : Array = [];
		
		public static function allocate() : KeyValuePair
		{
			if (sPool.length > 0)
				return sPool.pop();
			return new KeyValuePair();
		}
		
		public static function free(obj : KeyValuePair)
		{
			obj.key = null;
			obj.value = null;
			sPool[sPool.length] = obj;
		}
	}
}