$(document).ready(function() {

	$(".worldpay").find(".add_to_bill").click(compute);
});

function compute() {
	var total = 0;
	if ($("#plan30").is(':checked')) {
		total = total + 30;
	}
	if ($("#plan50").is(':checked')) {
		total = total + 50;
	}

	$('.addon').each(function() {
		if ($(this).is(':checked')) {
			total = total + 10;	
		}
	});
	
	extra_txn_lines = $('.txnlines').val() * 10;
	total = total + extra_txn_lines;
	if(total > 0){
		$('.summary').text('$'+ total);		
	}
	
}
