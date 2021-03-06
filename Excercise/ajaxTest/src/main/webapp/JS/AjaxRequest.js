var net=new Object();
//编写构造函数
net.AjaxRequest = function(url, onload, onerror, method, params) {
    this.req = null;
    this.onload = onload;
    this.onerror = (onerror) ? onerror : this.defaultError;
    this.loadDate(url, method, params);
}

//编写用于初始化XNMLHttpRequest对象并指定处理函数，最后发送HTTP请求的方法
net.AjaxRequest.prototype.loadDate = function(url, method, params) {
    if(!method) {
        method="GET";
    }
    if(window.XMLHttpRequest) {
        this.req = new XMLHttpRequest();
    }else if(window.ActiveXObject) {
        this.req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    if(this.req) {
        try{
            var loader = this;
            this.req.onreadystatechange = function() {
                net.ActiveXObject.onReadyState.call(loader);
            }
            this.req.open(method, url, true);
            if(method == "POST") {
                this.req.setRequestHeader("Context-Type", "application/x-www-form-urlencoded");
            }
            this.req.send(params);
        }catch(err) {
            this.onerror.call(this);
        }
    }
}

//重构默认的错误处理函数
net.AjaxRequest.prototype.defaultError=function() {
    alert("错误数据\n\n 回调状态："+ this.req.readyState+"\n 状态：" + this.req.status);
}