const textFields = document.querySelectorAll('.mdc-text-field');
for (const textField of textFields) {
  mdc.textField.MDCTextField.attachTo(textField);
}
const checkbox = new mdc.checkbox.MDCCheckbox(document.querySelector('.mdc-checkbox'));
const formField = new mdc.formField.MDCFormField(document.querySelector('.mdc-form-field'));
formField.input = checkbox;