	var xmlhttp=null;
  
  	function change(){
  		document.getElementById("f").submit();
  	}

  	function asynRequest(){
  		loadXMLDoc("/FomatDemo/jsonRequest");
  	}	
  	
  	function loadXMLDoc(url){
  		if(window.XMLHttpRequest)
  			xmlhttp=new XMLHttpRequest();
  		else if(window.ActivityXObject)
  			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  		if(xmlhttp!=null){ 
  			xmlhttp.onreadystatechange=state_Change;
  			xmlhttp.open("GET", url, true);
  			xmlhttp.send(null);
  		}else{
  			alert("You browser does not support XMLHTTP.");
  		}
  	}
  	
  	function state_Change(){
  		if(xmlhttp.readyState==4){
  			if(xmlhttp.status==200){
  				document.getElementById("A1").innerHTML=xmlhttp.status;
  				document.getElementById("A2").innerHTML=xmlhttp.statusText;
//  				document.getElementById("A3").innerHTML=xmlhttp.responseText;
  				var json=eval(xmlhttp.responseText);
  				var msg="<table border='1'><tr><td>商品ID</td><td>商品名称</td><td>商品价格</td></tr>";
  				for(var i=0;i<json.length;i++){
  					msg+="<tr><td>"+json[i].id+"</td><td>"+json[i].name+"</td><td>"+json[i].price+"</td></tr>";
  				}
  				msg+="</table>";
  				document.getElementById("A3").innerHTML=msg;
  			}else
  				alert("Problem retrieving XML data");
  		}
  		
  	}
  	