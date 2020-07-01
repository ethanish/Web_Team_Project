package guestbook;
import java.util.*;
public class GuestBook 
{
	private int gb_id;
	private int gb_num;
	private Date gb_date;
	private String gb_title;
	private String gb_contents;
	
	public int getGb_id() {
		return gb_id;
	}
	public void setGb_id(int gb_id) {
		this.gb_id = gb_id;
	}
	public int getGb_num() {
		return gb_num;
	}
	public void setGb_num(int gb_num) {
		this.gb_num = gb_num;
	}
	public String getGb_title() {
		return gb_title;
	}
	public void setGb_title(String gb_title) {
		this.gb_title = gb_title;
	}
	public Date getGb_date() {
		return gb_date;
	}
	public void setGb_date(Date gb_date) {
		this.gb_date = gb_date;
	}
	public String getGb_contents() {
		return gb_contents;
	}
	public void setGb_contents(String gb_contents) {
		this.gb_contents = gb_contents;
	}		
}
