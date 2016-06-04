/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function validate(frm){
 iput=document.all?document.all.tags("INPUT"):document.getElementsByTagName("INPUT");
 for(i=0;i<iput.length;i++) {
            // trim(iput[i]);
             if(iput[i].value=="") {
             (!document.all)?alert(iput[i].name.toUpperCase()+" value must be entered"):alert(iput[i].name.toUpperCase()+" value must be entered");
             iput[i].focus();
             return false;}
     }

    iput1=document.all?document.all.tags("SELECT"):document.getElementsByTagName("SELECT");
 for(i=0;i<iput1.length;i++) {
            // trim(iput[i]);
             if(iput1[i].value=="") {
             (!document.all)?alert(iput1[i].name.toUpperCase()+" value must be entered"):alert(iput1[i].name.toUpperCase()+" value must be entered");

             return false;}
     }
 iput2=document.all?document.all.tags("TEXTAREA"):document.getElementsByTagName("TEXTAREA");
 for(i=0;i<iput2.length;i++) {
            // trim(iput[i]);
             if(iput2[i].value=="") {
             (!document.all)?alert(iput2[i].name.toUpperCase()+" value must be entered"):alert(iput2[i].name.toUpperCase()+" value must be entered");

             return false;}
     }

     return true;
  }


function validT()
    {
        
     var s=document.getElementById("b").value;
     var s1=document.getElementById("e").value;
     if(s > 20)
     {
      alert("value must be less than 20");
      document.getElementById("b").focus;
      document.getElementById("b").value="";      
      
     }
     if(s1 > 20)
     {
      alert("value must be less than 20");
      document.getElementById("e").focus;  
      document.getElementById("e").value="";      
     }
            }
    
    function validF()
    {
     var s2=document.getElementById("a").value;
     var s3=document.getElementById("d").value;
     if(s2 > 40)
     {
      alert("value must be less than 40");   
     document.getElementById("a").focus;
     document.getElementById("a").value="";      
     } 
     if(s3 > 40)
     {
      alert("value must be less than 40");   
      document.getElementById("d").focus;
      document.getElementById("d").value="";      
     } 
        
    }
 