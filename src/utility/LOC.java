package utility;

public class LOC {

	/*
	 * CHANGING THE PATH HERE IS ENOUGH FOR THE WHOLE PROJECT
	 * KEEP THE BELOW FORMAT
	 * F:/SISPL/WorkSpace/CS_Project/WebContent/G_Files/
	 */
	
	static String ProjPath = "F:\\SISPL\\WorkSpace\\CS_Project\\";
	static String FilePath = "F:/SISPL/WorkSpace/CS_Project/WebContent/G_Files/";
	static String FilePath1 = "F:/SISPL/WorkSpace/CS_Project/WebContent/Enc_F/";
	
	public static String xmlPath(){
		return FilePath;
	}
	public static String ProjPath(){
		return ProjPath;
	}
	public static String xmlPath_E(){
		return FilePath1;
	}
}
