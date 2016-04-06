package util.files;
import java.io.File;

public class ListFilesUtil {

    /**

     * List all the files and folders from a directory

     * @param directoryName to be listed

     */

    public void listFilesAndFolders(String directoryName){

        File directory = new File(directoryName);

        //get all the files from a directory

        File[] fList = directory.listFiles();

        for (File file : fList){

            System.out.println(file.getName());

        }

    }

    /**

     * List all the files under a directory

     * @param directoryName to be listed

     */

    public void listFiles(String directoryName){

        File directory = new File(directoryName);

        //get all the files from a directory

        File[] fList = directory.listFiles();

        for (File file : fList){

            if (file.isFile()){

                System.out.println(file.getName());

            }

        }

    }

    /**

     * List all the folder under a directory

     * @param directoryName to be listed

     */

    public void listFolders(String directoryName){

        File directory = new File(directoryName);

        //get all the files from a directory

        File[] fList = directory.listFiles();

        for (File file : fList){

            if (file.isDirectory()){

                System.out.println(file.getName());

            }

        }

    }

    /**

     * List all files from a directory and its subdirectories

     * @param directoryName to be listed

     */

    public void listFilesAndFilesSubDirectories(String directoryName){

        File directory = new File(directoryName);

        //get all the files from a directory

        File[] fList = directory.listFiles();

        for (File file : fList){

            if (file.isFile()){

                System.out.println(removeExtension(file.getPath()));

            } else if (file.isDirectory()){

                listFilesAndFilesSubDirectories(file.getPath());

            }

        }

    }

    public static String removeExtension(String s) {

        String separator = System.getProperty("file.separator");
        String filename;

        // Remove the path upto the filename.
        int lastSeparatorIndex = s.lastIndexOf(separator);
        if (lastSeparatorIndex == -1) {
            filename = s;
        } else {
            filename = s.substring(lastSeparatorIndex + 1);
        }

        // Remove the extension.
        int extensionIndex = filename.lastIndexOf(".");
        if (extensionIndex == -1)
            return filename;

        return filename.substring(0, extensionIndex);
    }
    public static void main (String[] args){

        ListFilesUtil listFilesUtil = new ListFilesUtil();
         

        final String directoryLinuxMac ="C:/Users/JEEDeveloer/git/FinalCodeReferenceRepo/FinalCodesPracticePro/WebContent/CSS";

        //Windows directory example

        final String directoryWindows ="C://test";

        listFilesUtil.listFiles(directoryLinuxMac);
        listFilesUtil.listFilesAndFilesSubDirectories(directoryLinuxMac);
    }

}