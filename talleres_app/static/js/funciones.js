$(document).ready(function(){
    $('#datePicker').datetimepicker({
      pickTime: false
    });

    $('#timePicker').datetimepicker({
      pickDate: false
    });
    
    $('#formSubmit').click(function(){
	$('#tallerForm').submit();
    });
    
    $('#showModal').click(function(){
	clearForm('.modal-body');	
	$('#newTaller').modal('show');		
    });
});


var clearForm = function(element){       
    $(element).find(':input').each(function(){
	switch(this.type){
	case 'password':
        case 'select-multiple':
        case 'select-one':
        case 'text':
        case 'textarea':
            $(this).val('');
            break;
        case 'checkbox':
        case 'radio':
            this.checked = false;
        }	    
    });
};
