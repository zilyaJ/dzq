package orm;

public class Tgoods 
{
	private int id;
	private String bianhao;
	
	private String mingcheng;
	private String jieshao;
	private String fujian;
	
	private int shichangjia;
	private int tejia;
	private String shifoutejia;
	private int kucun;
	private String del;
	
	
	public String getBianhao()
	{
		return bianhao;
	}
	public void setBianhao(String bianhao)
	{
		this.bianhao = bianhao;
	}
	
	public String getDel()
	{
		return del;
	}
	public void setDel(String del)
	{
		this.del = del;
	}
	public String getFujian()
	{
		return fujian;
	}
	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getJieshao()
	{
		return jieshao;
	}
	public void setJieshao(String jieshao)
	{
		this.jieshao = jieshao;
	}
	public int getKucun()
	{
		return kucun;
	}
	public void setKucun(int kucun)
	{
		this.kucun = kucun;
	}
	public String getMingcheng()
	{
		return mingcheng;
	}
	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}
	public int getShichangjia()
	{
		return shichangjia;
	}
	public void setShichangjia(int shichangjia)
	{
		this.shichangjia = shichangjia;
	}
	public String getShifoutejia()
	{
		return shifoutejia;
	}
	public void setShifoutejia(String shifoutejia)
	{
		this.shifoutejia = shifoutejia;
	}
	public int getTejia()
	{
		return tejia;
	}
	public void setTejia(int tejia)
	{
		this.tejia = tejia;
	}
	
}
