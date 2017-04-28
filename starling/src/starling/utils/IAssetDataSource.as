package starling.utils 
{
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author 
	 */
	public interface IAssetDataSource 
	{
		 function GetPath() :String;
		 function LoadData(): ByteArray;
		
	}

}