package starling.utils 
{
	import starling.utils.KeyValuePair;

	/**
	 * ...
	 * @author Dimo & Ivko
	 */
	public class DictUsingArray 
	{
		private var mArray : Array;
		
		public function DictUsingArray() 
		{
			mArray = [];
		}
		
		public function setValue(key : String, value : Object)
		{
			for (var i:int = 0; i < mArray.length; ++i)
				if (mArray[i].key == key)
				{
					mArray[i].value = value;
					return;
				}
				
			var item = KeyValuePair.allocate();
			item.key = key;
			item.value = value;
			mArray[mArray.length] = item;
		}
		
		public function getValue(key : String) : Object
		{
			for (var i:int = 0; i < mArray.length; ++i)
				if (mArray[i].key == key)
					return mArray[i].value;
			return null;
		}
		
		public function contains(key : String) : Object
		{
			for (var i:int = 0; i < mArray.length; ++i)
				if (mArray[i].key == key)
					return true;
			return false;
		}

		public function deleteValue(key : String)
		{
			for (var i:int = 0; i < mArray.length; ++i)
				if (mArray[i].key == key)
				{
					var lastItem = mArray.pop();
					if (i < mArray.length)
						mArray[i] = lastItem;
					return;
				}
		}
	}
}