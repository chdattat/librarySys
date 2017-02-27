function reg_valid()
{
var fname = document.getElementById('fname').value;
var sexr = document.getElementById('sexr').value;
var dob = document.getElementById('dob').value;
var addrss = document.getElementById('addrss').value;
var uname = document.getElementById('uname').value;
var psswd = document.getElementById('psswd').value;
var email = document.getElementById('email').value;
var Mobno = document.getElementById('Mobno').value;

if(fname==='')
    {
        alert("fill the first name");
        return false;
    }
else if(sexr==='Select Gender')
                {
        alert("Select the Gender");
        return false;
    }
  else if(dob==='')
   {
        alert("fill the dob");
        return false;
    }
    else if(addrss==='')
     {
        alert("fill the addrss");
        return false;
    }
    else if(uname==='')
     {
        alert("fill the uname");
        return false;
    }
   else if(psswd==='')
    {
        alert("fill the psswd");
        return false;
    }
  else if(email==='')
   {
        alert("fill the email");
        return false;
    }
    else if(Mobno==='')
    {
        alert("fill the Mobno");
        return false;
    }
    
    return true;
}




function login()/**************************validate login form*************************/
{
   
var user_name = document.getElementById('uname').value;
var user_pwd = document.getElementById('psswd').value;
   if(user_name===''||user_pwd==='')
   {
alert("Enter login credentials");
   }
   
    else
    {
            $.ajax({
                type: "POST",
                url: 'signin',
                data: {user_name: user_name, user_pwd: user_pwd},
                success: function(result) 
                { 
                    
                    if (result === "success")
                    {
                       window.location = "user_welcome.jsp";
                    }
                   else if (result === "fail")
                    {
                        alert("Enter valid login credentials");
                    }
                    
                }
            });
        }
        
    
}
