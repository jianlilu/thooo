/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.mx.project.persondetail.entity;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;
import com.shark.base.common.utils.IdGen;
import com.shark.base.common.utils.excel.annotation.ExcelField;
import com.shark.base.modules.sys.entity.User;
import com.shark.base.modules.sys.utils.UserUtils;

/**
 * 就业专项资金补贴人员的明细Entity
 * @author wujh
 * @version 2015-11-24
 */
public class Persondetail extends DataEntity<Persondetail> {
	
	private static final long serialVersionUID = 1L;
	private String zb;		// 镇别
	private String username;		// 姓名
	private String cardno;		// 身份证号
	private String jyknrylx;		// 就业困难人员类型
	private String zyjsbt;		// （一）职业介绍补贴（金额）
	private String zypxbt;		// （二）职业培训补贴（金额）
	private String shbxbt;		// （三）社会保险补贴（金额）
	private String gwbt;		// （四）岗位补贴      （金额）
	private String jxbt;		// （五）高校毕业生见习补贴     （金额）
	private String zxwqyjybt;		// （六）高校毕业生到中小微企业就业补贴
	private String lsshbt;		// （七）应届高校毕业生临时生活补贴     （金额）
	private String cypxbt;		// （八）创业培训补贴           （金额）
	private String ycxcyzz;		// （九）一次性创业资助         （金额）
	private String zjbt;		// （十）租金补贴（金额）
	private String cyfhbt;		// （十一）创业孵化补贴           （金额）
	private String cyddjybt;		// （十二）创业带动就业补贴     （金额）
	private String xedbdktx;		// （十三）小额担保贷款贴息      （金额）
	private String cyfwzc;		// （十四）扶持就业创业服务支出（金额）
	
	private String frdb;		// 法人代表
	private String btrs;		// 补贴人数
	
	private String btlx;//补贴类型
	public String getBtlx() {
		return btlx;
	}

	public void setBtlx(String btlx) {
		this.btlx = btlx;
	}

	public Persondetail() {
		super();
		this.zyjsbt = "0";
		this.zypxbt = "0";
		this.shbxbt = "0";
		this.gwbt = "0";
		this.jxbt = "0";
		this.zxwqyjybt = "0";
		this.lsshbt = "0";
		this.cypxbt = "0";
		this.ycxcyzz = "0";
		this.zjbt = "0";
		this.cyfhbt = "0";
		this.cyddjybt = "0";
		this.xedbdktx = "0";
		this.cyfwzc = "0";
//		this.createDate = new Date();
//		this.updateDate = new Date();
	}

	public Persondetail(String id){
		super(id);
	}

	@Length(min=0, max=100, message="镇别长度必须介于 0 和 100 之间")
	@ExcelField(title="镇别", align=2, sort=10, dictType="zb")
	public String getZb() {
		return zb;
	}

	public void setZb(String zb) {
		this.zb = zb;
	}
	
	@Length(min=0, max=100, message="姓名长度必须介于 0 和 100 之间")
	@ExcelField(title="姓名", align=2, sort=20)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	@Length(min=0, max=50, message="身份证号长度必须介于 0 和 50 之间")
	@ExcelField(title="身份证号", align=2, sort=30)
	public String getCardno() {
		return cardno;
	}

	public void setCardno(String cardno) {
		this.cardno = cardno;
	}
	
	@Length(min=0, max=100, message="就业困难人员类型长度必须介于 0 和 100 之间")
	@ExcelField(title="就业困难人员类型", align=2, sort=40, dictType="jyknrylx")
	public String getJyknrylx() {
		return jyknrylx;
	}

	public void setJyknrylx(String jyknrylx) {
		this.jyknrylx = jyknrylx;
	}
	
	@Length(min=0, max=50, message="（一）职业介绍补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（一）职业介绍补贴（金额）", align=2, sort=40)
	public String getZyjsbt() {
		return zyjsbt;
	}

	public void setZyjsbt(String zyjsbt) {
		this.zyjsbt = zyjsbt;
	}
	
	@Length(min=0, max=50, message="（二）职业培训补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（二）职业培训补贴（金额）", align=2, sort=50)
	public String getZypxbt() {
		return zypxbt;
	}

	public void setZypxbt(String zypxbt) {
		this.zypxbt = zypxbt;
	}
	
	@Length(min=0, max=50, message="（三）社会保险补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（三）社会保险补贴（金额）", align=2, sort=60)
	public String getShbxbt() {
		return shbxbt;
	}

	public void setShbxbt(String shbxbt) {
		this.shbxbt = shbxbt;
	}
	
	@Length(min=0, max=50, message="（四）岗位补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（四）岗位补贴（金额）", align=2, sort=70)
	public String getGwbt() {
		return gwbt;
	}

	public void setGwbt(String gwbt) {
		this.gwbt = gwbt;
	}
	
	@Length(min=0, max=50, message="（五）高校毕业生见习补贴 （金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（五）高校毕业生见习补贴 （金额）", align=2, sort=80)
	public String getJxbt() {
		return jxbt;
	}

	public void setJxbt(String jxbt) {
		this.jxbt = jxbt;
	}
	
	@Length(min=0, max=50, message="（六）高校毕业生到中小微企业就业补贴长度必须介于 0 和 50 之间")
	@ExcelField(title="（六）高校毕业生到中小微企业就业补贴", align=2, sort=90)
	public String getZxwqyjybt() {
		return zxwqyjybt;
	}

	public void setZxwqyjybt(String zxwqyjybt) {
		this.zxwqyjybt = zxwqyjybt;
	}
	
	@Length(min=0, max=50, message="（七）应届高校毕业生临时生活补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（七）应届高校毕业生临时生活补贴（金额）", align=2, sort=100)
	public String getLsshbt() {
		return lsshbt;
	}

	public void setLsshbt(String lsshbt) {
		this.lsshbt = lsshbt;
	}
	
	@Length(min=0, max=50, message="（八）创业培训补贴 （金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（八）创业培训补贴 （金额）", align=2, sort=110)
	public String getCypxbt() {
		return cypxbt;
	}

	public void setCypxbt(String cypxbt) {
		this.cypxbt = cypxbt;
	}
	
	@Length(min=0, max=50, message="（九）一次性创业资助（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（九）一次性创业资助（金额）", align=2, sort=120)
	public String getYcxcyzz() {
		return ycxcyzz;
	}

	public void setYcxcyzz(String ycxcyzz) {
		this.ycxcyzz = ycxcyzz;
	}
	
	@Length(min=0, max=50, message="（十）租金补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（十）租金补贴（金额）", align=2, sort=130)
	public String getZjbt() {
		return zjbt;
	}

	public void setZjbt(String zjbt) {
		this.zjbt = zjbt;
	}
	
	@Length(min=0, max=50, message="（十一）创业孵化补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（十一）创业孵化补贴（金额）", align=2, sort=140)
	public String getCyfhbt() {
		return cyfhbt;
	}

	public void setCyfhbt(String cyfhbt) {
		this.cyfhbt = cyfhbt;
	}
	
	@Length(min=0, max=50, message="（十二）创业带动就业补贴（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（十二）创业带动就业补贴（金额）", align=2, sort=150)
	public String getCyddjybt() {
		return cyddjybt;
	}

	public void setCyddjybt(String cyddjybt) {
		this.cyddjybt = cyddjybt;
	}
	
	@Length(min=0, max=50, message="（十三）小额担保贷款贴息（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（十三）小额担保贷款贴息（金额）", align=2, sort=160)
	public String getXedbdktx() {
		return xedbdktx;
	}

	public void setXedbdktx(String xedbdktx) {
		this.xedbdktx = xedbdktx;
	}
	
	@Length(min=0, max=50, message="（十四）扶持就业创业服务支出（金额）长度必须介于 0 和 50 之间")
	@ExcelField(title="（十四）扶持就业创业服务支出（金额）", align=2, sort=170)
	public String getCyfwzc() {
		return cyfwzc;
	}

	public void setCyfwzc(String cyfwzc) {
		this.cyfwzc = cyfwzc;
	}

	@Length(min=0, max=50, message="法人代表长度必须介于 0 和 50 之间")
	@ExcelField(title="法人代表", align=2, sort=31)
	public String getFrdb() {
		return frdb;
	}

	public void setFrdb(String frdb) {
		this.frdb = frdb;
	}

	@Length(min=0, max=50, message="补贴人数长度必须介于 0 和 50 之间")
	@ExcelField(title="补贴人数", align=2, sort=32)
	public String getBtrs() {
		return btrs;
	}

	public void setBtrs(String btrs) {
		this.btrs = btrs;
	}
	
	/**
	 * 插入之前执行方法，需要手动调用
	 */
	@Override
	public void preInsert(){
		// 不限制ID为UUID，调用setIsNewRecord()使用自定义ID
		if (!this.isNewRecord){
			setId(IdGen.uuid());
		}
		User user = UserUtils.getUser();
		if (StringUtils.isNotBlank(user.getId())){
			this.updateBy = user;
			this.createBy = user;
		}
//		this.updateDate = new Date();
//		this.createDate = this.updateDate;
	}
	
	/**
	 * 更新之前执行方法，需要手动调用
	 */
	@Override
	public void preUpdate(){
		User user = UserUtils.getUser();
		if (StringUtils.isNotBlank(user.getId())){
			this.updateBy = user;
		}
//		this.updateDate = new Date();
	}
	
}