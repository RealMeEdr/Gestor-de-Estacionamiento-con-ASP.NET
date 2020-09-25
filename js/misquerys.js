/*
function Ocultarr1() {
    document.getElementById("regla1").style.display="none";
}
function Mostrarr1() {
    document.getElementById("regla1").style.display="block";
}
function regla1() {
    var boton = document.getElementById("regla1");
    if(boton.style.display == "none"){
        Mostrarr1();
    }else{
        Ocultarr1();
    }
}
/*
function Ocultarr2() {
    document.getElementById("regla2").style.display="none";
}
function Mostrarr2() {
    document.getElementById("regla2").style.display="block";
}
function regla2() {
    var boton = document.getElementById("regla2");
    if(boton.style.display == "none"){
        Mostrarr2();
    }else{
        Ocultarr2();
    }
}
*/
//aqui lo hago con jquery
$(document).ready(function()
{
$('#btnregla2').click(function() {
    $('#regla2').toggle(1000, function() {
          });
    });
 });

 $(document).ready(function()
{
$('#btnregla1').click(function() {
    $('#regla1').toggle(1000, function() {
          });
    });
 });
 