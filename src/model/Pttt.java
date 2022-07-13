/**
 *
 */
/**
 * @author user
 *
 */
package model;

import java.io.Serializable;
import java.util.Date;

public class Pttt implements Serializable {
	private String name;
	private String gender;
	private Date date;
	private String blood ;
	private String[] study;
    private String text;

	public Pttt() {
	}
	public Pttt (String name,String gender,Date date,String blood,String[] study,String text) {
		this.name = name ;
		this.gender = gender;
		this.date=date;
		this.blood=blood;
		this.study=study;
		this.text=text;
	}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getGender() {return gender;}
	public void setGender(String gender) {this.gender = gender;}

	public Date getDate() {return date;}
	public void setDate(Date date) {this.date = date;}

	public String getBlood     () {return blood ;}
	public void setBlood    (String blood) {this.blood   = blood   ;}
	public String[] getStudy     () {return study ;}
	public void setStudy    (String study[]) {this.study   =  study  ;}
	public String getText  () {return text ;}
	public void setText    (String text) {this.text   =  text  ;}
}

