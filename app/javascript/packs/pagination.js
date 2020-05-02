$('.pagination a').click( function(data) {
    if($('.pagination').length) {
        let url = data.target.getAttribute('href');
        $.getScript(url);
        return false;
    }
});

$("#clients_search input").keyup(function() {
    $.get($("#clients_search").attr("action"), $("#clients_search").serialize(), null, "script");
    return false;
});

const dataTable = new mdc.dataTable.MDCDataTable(document.querySelector('.mdc-data-table'));
const textField = new mdc.textField.MDCTextField(document.querySelector('.mdc-text-field'));
