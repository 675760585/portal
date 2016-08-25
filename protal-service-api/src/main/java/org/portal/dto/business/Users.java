package org.portal.dto.business;

import java.io.Serializable;
import java.util.Date;


public class Users implements Serializable{

	 /**
	 * 
	 */
	private static final long serialVersionUID = -3374848423614752470L;

	private Integer loginid;

	    private String loginname;

	    private String loginpwd;

	    private String realname;

	    private String type;

	    private String status;

	    private String mobileno;

	    private String email;

	    private Date createdate;

	    private Date updatedate;

	    private String remark;

	    public Integer getLoginid() {
	        return loginid;
	    }

	    public void setLoginid(Integer loginid) {
	        this.loginid = loginid;
	    }

	    public String getLoginname() {
	        return loginname;
	    }

	    public void setLoginname(String loginname) {
	        this.loginname = loginname == null ? null : loginname.trim();
	    }

	    public String getLoginpwd() {
	        return loginpwd;
	    }

	    public void setLoginpwd(String loginpwd) {
	        this.loginpwd = loginpwd == null ? null : loginpwd.trim();
	    }

	    public String getRealname() {
	        return realname;
	    }

	    public void setRealname(String realname) {
	        this.realname = realname == null ? null : realname.trim();
	    }

	    public String getType() {
	        return type;
	    }

	    public void setType(String type) {
	        this.type = type == null ? null : type.trim();
	    }

	    public String getStatus() {
	        return status;
	    }

	    public void setStatus(String status) {
	        this.status = status == null ? null : status.trim();
	    }

	    public String getMobileno() {
	        return mobileno;
	    }

	    public void setMobileno(String mobileno) {
	        this.mobileno = mobileno == null ? null : mobileno.trim();
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email == null ? null : email.trim();
	    }

	    public Date getCreatedate() {
	        return createdate;
	    }

	    public void setCreatedate(Date createdate) {
	        this.createdate = createdate;
	    }

	    public Date getUpdatedate() {
	        return updatedate;
	    }

	    public void setUpdatedate(Date updatedate) {
	        this.updatedate = updatedate;
	    }

	    public String getRemark() {
	        return remark;
	    }

	    public void setRemark(String remark) {
	        this.remark = remark == null ? null : remark.trim();
	    }
	

}

