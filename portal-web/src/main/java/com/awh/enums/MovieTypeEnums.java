package com.awh.enums;

public enum MovieTypeEnums {
	
			DZ("0", "动作"),
			KH("1", "科幻"),
			MX("2", "冒险"),
			XJ("3", "喜剧"),
			AQ("4", "爱情"),
			JQ("5", "剧情"),
			FZ("6", "犯罪"),
			XB("7", "西部"),
			ZN("8", "灾难"),
			SM("9", "神秘"),
			JS("10", "惊悚"),
			XY("11", "悬疑"),
			KB("12", "恐怖"),
			CJ("13", "传记"),
			SJ("14", "历史");	

    private String code;
    private String view;

    private MovieTypeEnums(String code, String view) {
        this.code = code;
        this.view = view;
    }

    public String getView() {
		return view;
	}

	/**
     * @return the code
     */
    public String getCode() {
        return code;
    }
    
    public static MovieTypeEnums getByValue(String value){
    	for(MovieTypeEnums en : MovieTypeEnums.values()){
    		if(en.getCode().equals(value)){
    			return en;
    		}
    	}
    	return null;
    }

    public static MovieTypeEnums getByView(String value){
        for(MovieTypeEnums en : MovieTypeEnums.values()){
            if(en.getView().equals(value)){
                return en;
            }
        }
        return null;
    }
	
	
}
