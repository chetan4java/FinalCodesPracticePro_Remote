<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function Person(fname1,lname1)
{
	var prop = "birthday";
	
	this.fname=fname1;
	this.lname=lname1;
	var a=1+2;
	console.log(a);
	this.additionval=a;
	this[prop] = "January 12";
	 
}

var developers =  {
	    person: {
	        'name': 'John',
	        'age': 23
	    },
	    anarchist: (function(){ var a = {};
	        a['name'] = 'Johnsds';
	        a['age'] = 5523;
	        a[false] = false;
	        a[1] = 1;
	        a[window] = window;
	    return a; })()
	    
	};

var NewObject = {
		"clss":
		{
				methods:
				{
					func1:function(id1,id2){
							alert("func1 calling .."+id1+ " and "+id2);
					},
					func2:function(){
							alert("func2 calling ..");
					}
				}
		}

};
NewObject['property1'] = "jklj";
NewObject['property2'] = 23;
NewObject['method'] = function(){ 
	return "method op rtyr";
}

console.log("op  "+NewObject.property1);
console.log("method output is  "+NewObject.clss.methods.func1('chetan',11));


var myfather=new Person("chetan");
document.write("name is :" + myfather.fname + " last name is "+myfather.lname);
document.write("<br>window is :" + myfather.birthday + " last name is "+myfather.birthday);

 
console.log("name is hh "+developers.anarchist.name);
console.log("age is hh "+developers.anarchist.age);

</script>
</head>
<body>fg
</body>
</html>