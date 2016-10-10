package org.portal.dto.business;

import java.io.Serializable;

public class TmovieWithBLOBs extends Tmovie implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -1635009398727444542L;

	private String urls;

    private String starring;

    private String summary;

    private String jietu;

    public String getUrls() {
        return urls;
    }

    public void setUrls(String urls) {
        this.urls = urls == null ? null : urls.trim();
    }

    public String getStarring() {
        return starring;
    }

    public void setStarring(String starring) {
        this.starring = starring == null ? null : starring.trim();
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary == null ? null : summary.trim();
    }

    public String getJietu() {
        return jietu;
    }

    public void setJietu(String jietu) {
        this.jietu = jietu == null ? null : jietu.trim();
    }
}