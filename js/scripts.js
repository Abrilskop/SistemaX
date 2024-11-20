$('.fixed-action-btn').openFAB();
$('.button-collpase').sideNav();

// conversion a mayusculas = regresa el upper key para converit r el valor
function may(obj, id)
{
    obj = obj.toUpperCase();
    document.getElementById(id).value = obj;
}
