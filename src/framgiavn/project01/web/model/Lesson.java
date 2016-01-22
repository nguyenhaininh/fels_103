package framgiavn.project01.web.model;
import java.io.Serializable;
import java.util.Date;
public class Lesson implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private Date create_at;
	private Date update_at;
	private String code;
	private int level;
	private String image;
	private String descript;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name=name;
	}
	public Date getCreate_at(){
		return create_at;
	}
	public void setCreate_at(Date create_at){
		this.create_at=create_at;
	}
	public Date getUpdate_at(){
		return update_at;
	}
	public void setUpdate_at(Date update_at){
		this.update_at=update_at;
	}
	public String getCode(){
		return code;
	}
	public void setCode( String code){
		this.code=code;
	}
	public String getImage(){
		return image;
	}
	public void setImage(String image){
		this.image=image;
	}
	public int getLevel(){
		return level;
	}
	public void setLevel(int level){
		this.level=level;
	}
	public String getDescript(){
		return descript;
	}
	public void setDescript(String descript){
		this.descript=descript;
	}
}
