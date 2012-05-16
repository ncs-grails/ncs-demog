/************************************\
 * |*                                  *|
 * |* NCS Demographic Change Form v1.0 *|
 * |* University of Minnesota          *|
 * |* 3/29/2012                        *|
 * |*                                  *|
 * \***********************************/

$(document).ready(function(){
		enableToolTips();
});

function enableToolTips() {
	$('.provenance').hide();

	$('comments').hide();

	$('div.button-panel').find('a.info').unbind('click');
	$('div.button-panel').find('a.notes').unbind('click');

	$('div.button-panel').find('a.info').click(function(){
			$(this).parent().parent().find('.provenance:first').toggle('fast');
			return false;

	});

}
