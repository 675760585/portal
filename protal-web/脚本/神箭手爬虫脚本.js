var configs = {
    domains: ["www.dy2018.com"],   //要爬去的域名
    scanUrls: ["http://www.dy2018.com/html/gndy/dyzz/index.html"],         		//"爬虫的入口URL 1", "爬虫的入口URL 2"
    contentUrlRegexes: ["http://www\\.dy2018\\.com/i/\\d+\\.html"],
    helperUrlRegexes: ["http://www\\.dy2018\\.com/html/gndy/dyzz/index(_\\d+)?\\.html"], //可留空
    fields: [
     
        {
            // 迅雷下载地址
            name: "urls",
            repeated:"true",  //多项结果， 返回数组
            selector: "//div[@id='Zoom']/table/tbody/tr/td/a[@href]", 
            required: true //是否不能为空
        },
        {
            // 标题
            name: "title",
            selector: "//div[@class='title_all']/h1", //默认使用XPath
            required: true //是否不能为空
        },
        {
            // 主图片
            name: "img",
            selector: "//div[@id='Zoom']/p[1]/img/@src" 
        },
        {
            // 评分
            name: "score",
            selector: "//div[@class='position']/span[1]/strong[@class='rank']" 
        },
        {
            // 发布时间
            name: "release_time",
            selector: "//span[@class='updatetime']" 
        },
        {
            // 片名
            name: "title_name",
            selector: "//div[@id='Zoom']/p[contains(text(),'片　　名')]" 
        },
        {
            // 年代
            name: "decade",
            selector: "//div[@id='Zoom']/p[contains(text(),'年　　代')]" 
        },
        {
            // 国家
            name: "country",
            selector: "//div[@id='Zoom']/p[contains(text(),'国　　家')]" 
        },
        {
            // 类别
            name: "type",
            selector: "//div[@id='Zoom']/p[contains(text(),'类　　别')]" 
        },
        {
            // 语言
            name: "language",
            selector: "//div[@id='Zoom']/p[contains(text(),'语　　言')]" 
        },
        {
            // 字幕
            name: "subtitle",
            selector: "//div[@id='Zoom']/p[contains(text(),'字　　幕')]" 
        },
        {
            // 文件格式
            name: "file_format",
            selector: "//div[@id='Zoom']/p[contains(text(),'文件格式')]" 
        },
        {
            // 视频尺寸
            name: "video_size",
            selector: "//div[@id='Zoom']/p[contains(text(),'视频尺寸')]" 
        },
        {
            // 文件大小
            name: "file_size",
            selector: "//div[@id='Zoom']/p[contains(text(),'文件大小')]" 
        },
        {
            // 片长
            name: "length",
            selector: "//div[@id='Zoom']/p[contains(text(),'片　　长')]" 
        },
        {
            // 导演
            name: "director",
            selector: "//div[@id='Zoom']/p[contains(text(),'导　　演')]" 
        },
        {
            // 主演 
            name: "starring",
            selector: "//div[@id='Zoom']/p[contains(text(),'主　　演')]" 
        },
        {
            //简介
            name: "summary",
            selector: "//div[@id='Zoom']/p[contains(text(),'简　　介')]/following-sibling::*" 
        },
        {
            //截图
            name: "jietu",
            selector: "//div[@id='Zoom']/p[contains(text(),'影片截图')]",
            required: true //是否不能为空
        }
    ]
};
// afterExtractField回调函数：将爬取到的时间转换为时间戳，以便发布数据时用
configs.afterExtractField = function(fieldName, data, page) {
    if (fieldName == "country") {
      if(data!=='' && data!==null){
        var str=data.indexOf("家");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "type") {
      if(data!=='' && data!==null){
        var str=data.indexOf("别");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "decade") {
      if(data!=='' && data!==null){
        var str=data.indexOf("代");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "director") {
      if(data!=='' && data!==null){
        var str=data.indexOf("演");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "file_format") {
      if(data!=='' && data!==null){
        var str=data.indexOf("式");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "file_size") {
      if(data!=='' && data!==null){
        var str=data.indexOf("小");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "language") {
      if(data!=='' && data!==null){
        var str=data.indexOf("言");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "length") {
      if(data!=='' && data!==null){
        var str=data.indexOf("长");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "release_time") {
      if(data!=='' && data!==null){
        var str=data.indexOf("间");
        return str==-1 ? "无" : data.substring(str+2,data.length).trim();
      }
    }
    if (fieldName == "starring") {
      if(data!=='' && data!==null){
        var str=data.indexOf("演");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "subtitle") {
      if(data!=='' && data!==null){
        var str=data.indexOf("幕");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "title_name") {
      if(data!=='' && data!==null){
        var str=data.indexOf("名");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
    if (fieldName == "video_size") {
      if(data!=='' && data!==null){
        var str=data.indexOf("寸");
        return str==-1 ? "无" : data.substring(str+1,data.length).trim();
      }
    }
  
    return data;
};

configs.onProcessHelperUrl = function(url, content, site){  
    if(content.indexOf("404")==-1){  
      console.log("我进来了");
				var first=url.substring(0,url.indexOf(".html"));
				var text=first.substring(first.length-1,first.length);
        if(isNaN(text)){
          text=2;
        }else{
          text=first.substring(first.indexOf("_")+1,first.length);
          text=parseInt(text)+1;
          first=first.substring(0,first.indexOf("_"));
        }
		     var nextUrl=first+"_"+text+".html";
      console.log("nextUrl"+nextUrl);
        site.addUrl(nextUrl);  
    }  
    return true;  
};


var crawler = new Crawler(configs);
crawler.start();