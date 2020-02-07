package co.yedam.app.blob;

import java.util.Arrays;

public class BlobDTO {
	private String code;
	private String filename;
	private byte[] blob;
	private String stringImage;
	
	public String getStringImage() {
		return stringImage;
	}
	public void setStringImage(String stringImage) {
		this.stringImage = stringImage;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public byte[] getBlob() {
		return blob;
	}
	public void setBlob(byte[] blob) {
		this.blob = blob;
	}

	

}
