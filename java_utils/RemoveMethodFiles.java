import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class RemoveMethodFiles {

	public static void main(String[] args) throws FileNotFoundException, IOException {
		String filepath = "/Users/wdxxl/Wdxxl_Github/Github/cordova_j2objc_libs/Header_Files";
		traverseFolder2(filepath);
	}

	public static void traverseFolder2(String path) {
        File file = new File(path);
        if (file.exists()) {
            File[] files = file.listFiles();
            if (files.length == 0) {
                System.out.println("Empty Folder!");
                return;
            } else {
                for (File file2 : files) {
                    if (file2.isDirectory()) {
                        System.out.println("Directory:" + file2.getAbsolutePath());
                        traverseFolder2(file2.getAbsolutePath());
                    } else {
                        System.out.println("File :" + file2.getAbsolutePath());
                        // remove if end with .m
                        if(file2.getAbsolutePath().endsWith(".m")){
                        	file2.delete();
                        }
                        if(file2.getAbsolutePath().endsWith("package-info.h")){
                        	file2.delete();
                        }
                    }
                }
            }
        } else {
            System.out.println("File Doesn't Existed");
        }
    }
}
