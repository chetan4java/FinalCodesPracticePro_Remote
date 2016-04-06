package util.files;
import java.io.File;
import java.util.Arrays;


public class FindFilesInFolders {

	
	public static void main(String[] args) {
		/*List<String> results = new ArrayList<String>();


		File[] files = new File("C:/Users/JEEDeveloer/git/FinalCodeReferenceRepo/FinalCodesPracticePro/WebContent/CSS/POP_BOXES/popbox").listFiles();
		//If this pathname does not denote a directory, then listFiles() returns null. 

		for (File file : files) {
		    if (file.isFile()) {
		        results.add(file.getName());
		    }
		}
		
		System.out.println("list of file are "+ results);*/
		File folder = new File("C:/Users/JEEDeveloer/git/FinalCodeReferenceRepo/FinalCodesPracticePro/WebContent/CSS");
		File[] listOfFiles = folder.listFiles();
		System.out.println("list of files are "+Arrays.toString(listOfFiles));

		    for (int i = 0; i < listOfFiles.length; i++) {
		      if (listOfFiles[i].isFile()) {
		        System.out.println("File " + listOfFiles[i].getName());
		      } else if (listOfFiles[i].isDirectory()) {
		        System.out.println("Directory " + listOfFiles[i].getName());
		      }
		    }
	}
}
