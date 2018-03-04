<html>
<script language="javascript" src="JS/AjaxRequest.js">
function getProvince() {
    var loader = new net.AjaxRequest("ZoneServlet?action=getProvince&nocahe=" + new Date().getTime(), 
        deal_getProvince, onerror, "GET");
}
function deal_getProvince() {
    provinceArr = this.req.responseText.split(",");
    for(i=0; i < provinceArr.length; i++) {
        document.getElementById("province").options[i]=new Option(provinceArr[i], provinceArr[i]);
    }
    if(provinceArr[0]!="") {
        getCity(provinceArr[0]);
    }
}
window.onload=function(){
    getProvince();
}

function getCity(selProvince) {
    var loader = new net.AjaxRequest("ZoneServlet?action=getCity&parPronvince="+selProvince+"nocahe="+
    new Date().getTime(), deal_getCity, onerror, "GET");
}
function deal_getCity() {
    cityArr=this.req.responseText.split(",");
    document.getElementById("city").length=0;
    for(int i = 0; i < cityArr.length; i++) {
        document.getElementById("city").options[i]=new Option(cityArr[i], cityArr[i]);
    }
}
function onerror(){}
</script>
<body>
<h2>Hello World!</h2>
<select name="province" id="province" onchange="getCity(this.value)">
</select>
<select name="city" id="city">
</select>
</body>
</html>

