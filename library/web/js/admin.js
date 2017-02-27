function img_prvw(id1,id2)/*******************show preview of image*******************/
{
var oFiles = document.getElementById(id1).files;
var valid_extensions = /(.jpg|.jpeg|.png)$/i;
if(!(valid_extensions.test(document.getElementById(id1).files[0].name)))
{
document.getElementById('er').innerHTML="Select jpg or png image";
}
else
{
var reader = new FileReader();
reader.readAsDataURL(oFiles[0]);
reader.onload=
function (e) {
document.getElementById(id2).src=e.target.result;
document.getElementById("select_imgs").src=e.target.result;
};
}
}


