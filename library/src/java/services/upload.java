package services;

import java.io.File;
import org.apache.commons.fileupload.FileItem;


//@WebService(endpointInterface = "services.Image_Upload")
public class upload {
    //implements Image_Upload{
File file;

    
    public File upload_file1(FileItem fi, String path)
    {
 try
    {    
    file = new File(path+fi.getName().substring(fi.getName().lastIndexOf(".")));
    fi.write(file);
    }
    catch(Exception e)
    {
        System.out.print("problem to upload file"+e);
    }
    return file;
    }



}
