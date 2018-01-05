<html>
    <head>
        <title>一个简单的文档</title>
    </head>
    <body onload = "show()">
        欢迎访问
        <br>
        <a href = "http://www.baidu.com">http://www.baidu.com</a>
    </body>
</html>

<script language = "javascript">
    var elementList = "";
    function getElement(node) {
        var total = 0;
        if(node.nodeType == 1) {
            total++;
            elementList = elementList + node.nodeName + "、";
        }
        var childrens = node.childNodes;
        for(var m = node.firstChild; m != null; m = m.nextSibling) {
            total += getElement(m);
        }
        return total;
    }
    function show() {
        var number = getElement(document);
        elementList = elementList.substring(0, elementList.length -1 );
        alert("该文档中包含：" + elelementList + "等" + number + "个标记！");
        elementList = "";
    }
</script>