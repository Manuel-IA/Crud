const list =  new mdc.list.MDCList.attachTo(document.querySelector('.mdc-list'));
list.wrapFocus = true;

const drawer = new mdc.drawer.MDCDrawer.attachTo(document.querySelector('.mdc-drawer'));

const topAppBar = new mdc.topAppBar.MDCTopAppBar.attachTo(document.getElementById('app-bar'));
topAppBar.setScrollTarget(document.getElementById('main-content'));
topAppBar.listen('MDCTopAppBar:nav', () => {
    drawer.open = !drawer.open;
});


let url = window.location.pathname;  
let activeClass = ' mdc-list-item--activated';
console.log(url);
if(url == '/clients'){
    $('#item-home').addClass(activeClass)
    $('#item-new').removeClass(activeClass)
}else if(url == '/clients/new'){
    $('#item-home').removeClass(activeClass)
    $('#item-new').addClass(activeClass)
}else{
    $('#item-home').removeClass(activeClass)
    $('#item-new').removeClass(activeClass)
}

