package javaReview;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;



public class FileTest {
	public static void main(String[] args) throws IOException{
		File file = new File("D:\\gitctest\\BoardTest\\model1\\src\\javaReview","a.txt");
		System.out.println("파일크기:"+file.length());
		System.out.println("test:"+file.getFreeSpace());
		
		
		FileInputStream input=new FileInputStream("D:/gitctest/BoardTest/model1/src/javaReview/a.txt");
		InputStreamReader reader=new InputStreamReader(input,"UTF-8");
        BufferedReader in=new BufferedReader(reader);
        String line = "";
        while((line = in.readLine()) != null){
            System.out.println(line);
        }

		
		
		
		File dir = new File("D:\\dev\\eclipse");
		String[] list = dir.list();
		for(String temp:list) {
			System.out.println(temp);
		}
		
		//폴더생성
		File newFile = new File("c:/Temp/images");
		newFile.mkdir();
		
		//파일 복사
		FileInputStream src = new FileInputStream(
				"C:\\Temp\\images\\a.jpg");
		FileOutputStream des = new FileOutputStream(
				"C:/Temp/images//복사.jpg");
		byte[] data = new byte[100];
		int size = 0;
		while((size=src.read(data))>-1) {
			des.write(data);
		}
		src.close();
		des.close();
		
		
		
		
	}
}
