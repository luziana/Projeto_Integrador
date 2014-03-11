package congic_projeto

class Image {

	byte[] arquivo;
	
	   static constraints = {
		   arquivo(blank:true,maxSize: 20 * 1024 * 102)
		  // arquivo(maxSize: 20 * 1024 * 1024) // 20 MBs
	   }
}
