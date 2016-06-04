<%-- 
    Document   : head
    Created on : Jun 2, 2012, 4:10:42 PM
    Author     : Administrator
--%>

<style type="text/css">
{
		background: #eee 
		font: 13px 'trebuchet MS', Arial, Helvetica;
	}
	
	h2, p {
		text-align: center;
		color: #444;
		text-shadow: 0 1px 0 #fff;	
	}
	
	a {
		color: #2A679F;
	}
	
	/* You don't need the above styles, they are demo-specific ----------- */
	
	#menu, #menu ul {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	#menu {
		width: 1181px;
		margin: 0px auto;
		border: 1px solid #789;
		background-color: #789;
		background-image: -moz-linear-gradient(#789, #789); 
		background-image: -webkit-gradient(linear, left top, left bottom, from(#789), to(#789));	
		background-image: -webkit-linear-gradient(#789, #789);	
		background-image: -o-linear-gradient(#789, #789);
		background-image: -ms-linear-gradient(#789, #789);
		background-image: linear-gradient(#789, #789);
		-moz-border-radius: 6px;
		-webkit-border-radius: 6px;
		border-radius: 4px;
		-moz-box-shadow: 0 1px 1px #789, 0 1px 0 #789 inset;
		-webkit-box-shadow: 0 1px 1px #789, 0 1px 0 #789 inset;
		box-shadow: 0 1px 1px #789, 0 1px 0 #789 inset;
	}
	
	#menu:before,
	#menu:after {
		content: "";
		display: table;
	}
	
	#menu:after {
		clear: both;
	}
	
	#menu {
		zoom:1;
	}
	
	#menu li {
		float: left;
		border-right: 1px solid #567;
		-moz-box-shadow: 1px 0 0 #444;
		-webkit-box-shadow: 1px 0 0 #444;
		box-shadow: 1px 0 0 #567;
		position: relative;
	}
	
	#menu a {
		float: left;
		padding: 12px 30px;
		color: #000;
		text-transform: uppercase;
		font: bold 14px Arial, Helvetica;
		text-decoration: none;
		
	}
	
	#menu li:hover > a {
		color: #000000;
                background-color: #c9c9c9;
	}
	
	*html #menu li a:hover { /* IE6 only */
		color: #fafafa;
	}
	
	#menu ul {
		margin: 20px 0 0 0;
		_margin: 0; /*IE6 only*/
		opacity: 0;
		visibility: hidden;
		position: absolute;
		top: 38px;
		left: 0;
		z-index: 1;    
		background: #789;
		background: -moz-linear-gradient(#789, #789);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#789), to(#789));
		background: -webkit-linear-gradient(#789, #789);    
		background: -o-linear-gradient(#789, #789);	
		background: -ms-linear-gradient(#789, #789);	
		background: linear-gradient(#789, #789);
		-moz-box-shadow: 0 -1px rgba(255,255,255,.3);
		-webkit-box-shadow: 0 -1px 0 rgba(255,255,255,.3);
		box-shadow: 0 -1px 0 rgba(255,255,255,.3);	
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		border-radius: 3px;
		-webkit-transition: all .2s ease-in-out;
		-moz-transition: all .2s ease-in-out;
		-ms-transition: all .2s ease-in-out;
		-o-transition: all .2s ease-in-out;
		transition: all .2s ease-in-out;  
	}

	#menu li:hover > ul {
		opacity: 1;
		visibility: visible;
		margin: 0;
	}
	
	#menu ul ul {
		top: 0;
		left: 150px;
		margin: 0 0 0 20px;
		_margin: 0; /*IE6 only*/
		-moz-box-shadow: -1px 0 0 rgba(255,255,255,.3);
		-webkit-box-shadow: -1px 0 0 rgba(255,255,255,.3);
		box-shadow: -1px 0 0 rgba(255,255,255,.3);		
	}
	
	#menu ul li {
		float: none;
		display: block;
		border: 0;
		_line-height: 0; /*IE6 only*/
		-moz-box-shadow: 0 1px 0 #111, 0 2px 0 #666;
		-webkit-box-shadow: 0 1px 0 #111, 0 2px 0 #666;
		box-shadow: 0 1px 0 #111, 0 2px 0 #666;
	}
	
	#menu ul li:last-child {   
		-moz-box-shadow: none;
		-webkit-box-shadow: none;
		box-shadow: none;    
	}
	
	#menu ul a {    
		padding: 10px;
		width: 130px;
		_height: 10px; /*IE6 only*/
		display: block;
		white-space: nowrap;
		float: none;
		text-transform: none;
	}
	
	#menu ul a:hover {
		background-color: #c9c9c9;
		background-image: -moz-linear-gradient(#c9c9c9,  #c9c9c9);	
		background-image: -webkit-gradient(linear, left top, left bottom, from(#c9c9c9), to(#c9c9c9));
		background-image: -webkit-linear-gradient(#c9c9c9, #c9c9c9);
		background-image: -o-linear-gradient(#c9c9c9, #c9c9c9);
		background-image: -ms-linear-gradient(#c9c9c9, #c9c9c9);
		background-image: linear-gradient(#c9c9c9, #c9c9c9);
	}
	
	#menu ul li:first-child > a {
		-moz-border-radius: 3px 3px 0 0;
		-webkit-border-radius: 3px 3px 0 0;
		border-radius: 3px 3px 0 0;
	}
	
	#menu ul li:first-child > a:after {
		content: '';
		position: absolute;
		left: 40px;
		top: -6px;
		border-left: 6px solid transparent;
		border-right: 6px solid transparent;
		border-bottom: 6px solid #444;
	}
	
	#menu ul ul li:first-child a:after {
		left: -6px;
		top: 50%;
		margin-top: -6px;
		border-left: 0;	
		border-bottom: 6px solid transparent;
		border-top: 6px solid transparent;
		border-right: 6px solid #000000;
	}
	
	#menu ul li:first-child a:hover:after {
		border-bottom-color: #000000; 
	}
	
	#menu ul ul li:first-child a:hover:after {
		border-right-color: #000000; 
		border-bottom-color: transparent; 	
	}
	
	#menu ul li:last-child > a {
		-moz-border-radius: 0 0 3px 3px;
		-webkit-border-radius: 0 0 3px 3px;
		border-radius: 0 0 3px 3px;
	}
	
	/* Mobile */
	#menu-trigger {
		display: none;
	}

	@media screen and (max-width: 600px) {

		/* nav-wrap */
		#menu-wrap {
			position: relative;
		}

		#menu-wrap * {
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
			box-sizing: border-box;
		}

		/* menu icon */
		#menu-trigger {
			display: block; /* show menu icon */
			height: 40px;
			line-height: 40px;
			cursor: pointer;		
			padding: 0 0 0 35px;
			border: 1px solid #222;
			color: #fafafa;
			font-weight: bold;
			background-color: #111;
			background: 
                        background: 
                        background: 
			background: 
			background: 
			-moz-border-radius: 6px;
			-webkit-border-radius: 6px;
			border-radius: 6px;
			-moz-box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
			-webkit-box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
			box-shadow: 0 1px 1px #777, 0 1px 0 #666 inset;
		}
		
		/* main nav */
		#menu {
			margin: 0; padding: 10px;
			position: absolute;
			top: 40px;
			width: 100%;
			z-index: 1;
			background-color: #444;
			display: none;
			-moz-box-shadow: none;
			-webkit-box-shadow: none;
			box-shadow: none;		
		}

		#menu:after {
			content: '';
			position: absolute;
			left: 25px;
			top: -8px;
			border-left: 8px solid transparent;
			border-right: 8px solid transparent;
			border-bottom: 8px solid #444;
		}	

		#menu ul {
			position: static;
			visibility: visible;
			opacity: 1;
			margin: 0;
			background: none;
			-moz-box-shadow: none;
			-webkit-box-shadow: none;
			box-shadow: none;				
		}

		#menu ul ul {
			margin: 0 0 0 20px !important;
			-moz-box-shadow: none;
			-webkit-box-shadow: none;
			box-shadow: none;		
		}

		#menu li {
			position: static;
			display: block;
			float: none;
			border: 0;
			margin: 5px;
			-moz-box-shadow: none;
			-webkit-box-shadow: none;
			box-shadow: none;			
		}

		#menu ul li{
			margin-left: 20px;
			-moz-box-shadow: none;
			-webkit-box-shadow: none;
			box-shadow: none;		
		}

		#menu a{
			display: block;
			float: none;
			padding: 0;
			color: #999;
		}

		#menu a:hover{
			color: #fafafa;
		}	

		#menu ul a{
			padding: 0;
			width: auto;		
		}

		#menu ul a:hover{
			background: none;	
		}

		#menu ul li:first-child a:after,
		#menu ul ul li:first-child a:after {
			border: 0;
		}		

	}

	@media screen and (min-width: 600px) {
		#menu {
			display: block !important;
		}
	}	

	/* iPad */
	.no-transition {
		-webkit-transition: none;
		-moz-transition: none;
		-ms-transition: none;
		-o-transition: none;
		transition: none;
		opacity: 1;
		visibility: visible;
		display: none;  		
	}

	#menu li:hover > .no-transition {
		display: block;
	}
</style>

<body>




<table align=center border=1 width=1182 height=100 bordercolor="gray" rules="all" >

<tr>
    
  
<td width=100 height=100 bgcolor="000000"><img src="pi/process.jpg" width=100 height=100></td>
 
<td width=1082 align="center" bgcolor="#e9e9e9 "><font color="#4f5f6f" face="verdana"><b><h1>SRI SIVANI COLLEGE OF ENGINEERING<br><small>CSE DEPARTMENT</small><br></h1></b></font></td>


</tr>

 </table>
 
 