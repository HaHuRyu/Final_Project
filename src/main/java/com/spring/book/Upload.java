package com.spring.book;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Iterator;

import com.sun.jdi.request.VMDeathRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class Upload {

	String imgDir = null;
	String saveFileName = null;

	public boolean fileUpload(MultipartHttpServletRequest mRequest) {
		
		boolean isUpload = false;

		String uploadPath = "/src/main/webapp/resources/images/user_profile_image";

		Calendar cal = Calendar.getInstance();
		
		int year = cal.get(Calendar.YEAR);
		
		int month = cal.get(Calendar.MONTH) + 1;
		
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		// getFileNames() : 업로드된 파일들의 이름 목록을
		//                  제공해 주는 메서드.


		Iterator<String> iterator =
							mRequest.getFileNames();
		
		while(iterator.hasNext()) {
			String uploadFileName = iterator.next();
			System.out.println
				("uploadFilename >>> " + uploadFileName);
			
			MultipartFile mFile = 
					mRequest.getFile(uploadFileName);
			
			String originalFileName = 
					mFile.getOriginalFilename();
			
			System.out.println
				("originalFileName >>> " + originalFileName);
			
			// 실제 폴더를 만들어 보자
			// .........\\resources\\upload\\2023-05-12
			String homedir = 
				uploadPath;
			
			File path1 = new File(homedir);

			if(!path1.exists()) {
				path1.mkdirs();
			}
			
			// 실제 파일을 만들어 보자.
			saveFileName = originalFileName;
			if(containsKoreanCharacters(saveFileName)) {
				saveFileName = convertToEnglish(saveFileName);
			}

			
			if(!saveFileName.equals("")) {
				saveFileName = 
					System.currentTimeMillis() + "_" + saveFileName;
				
				
				try {
					File origin = 
							new File(homedir+"/"+saveFileName);

					imgDir = homedir+"/"+saveFileName;
					// transferTo() : 파일 데이터를 지정한 폴더로
					//                실제 저장시키는 메서드.
					mFile.transferTo(origin);
					
					isUpload = true;
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}  // while문 end
		
		
		return isUpload;
	}

	public String getImg(){
		return this.saveFileName;
	}

	public String convertToEnglish(String saveFileName) {
		boolean containsKorean = containsKoreanCharacters(saveFileName);

		if (containsKorean) {
			String randomFileName = generateRandomEnglishFileName(saveFileName);
			return randomFileName;
		} else {
			return saveFileName;
		}
	}

	public boolean containsKoreanCharacters(String text) {
		for (char character : text.toCharArray()) {
			if (Character.UnicodeBlock.of(character) == Character.UnicodeBlock.HANGUL_SYLLABLES
					|| Character.UnicodeBlock.of(character) == Character.UnicodeBlock.HANGUL_COMPATIBILITY_JAMO
					|| Character.UnicodeBlock.of(character) == Character.UnicodeBlock.HANGUL_JAMO) {
				return true;
			}
		}
		return false;
	}

	public  String generateRandomEnglishFileName(String korean) {
		String abc = "";
		int dotIndex = korean.lastIndexOf('.');
		if (dotIndex >= 0 && dotIndex < korean.length() - 1) {
			abc = korean.substring(dotIndex);
		}
		return "koreanfile"+abc;
	}

}
