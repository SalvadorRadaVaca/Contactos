$(document).ready(function() {

	if( $('#btnSearch').length )
	{
		$('#btnSearch').click(function() {

			const id = $('#txtSearch').val();
			const action = 'searchContact';
			var dataContact = "";
			$.ajax({
				url : 'ajaxData.php',
				type: "POST",
				async : true,
				data: {
						action:action,
						id:id
				    },
				beforeSend: function(){

				},
				success: function(response)
				{
					if(response == 'Not data') {
						dataContact = "No hay registro para mostrar.";
					} else {
						var info = JSON.parse(response);
						dataContact = `<tr>
										   <th scope="row">${info.id_contacto}</th>
										   <td>${info.nombres}</td>
										   <td>${info.apellidos}</td>
										   <td>${info.telefono}</td>
										   <td>${info.email}</td>
										</tr>`;
					}
					$('#rowsContact').html(dataContact);
				},
				error: function(error) {
					console.log(error);
				}
			});

		});
	}

	if( $('#txtSearch').length ){
		
		$('#txtSearch').keyup(function() {
			const dataSearch = $('#txtSearch').val();
			const action = 'searchContactkey';
			var dataContact = '';
			$.ajax({
				url : 'ajaxData.php',
				type: "POST",
				async : true,
				data: {
						action:action, dataSearch:dataSearch
				    }, 
				beforeSend: function(){
				},
				success: function(response)
				{
					if(response == 'Not data'){
						dataContact = "No hay registros para mostrar.";
					}else{
						var info = JSON.parse(response);
						dataContact = info;
					}
					$('#rowsContact').html(dataContact);
				},
				error: function(error) {
				}
			});
		});
	}

	if( $('#tblContact').length )
	{
		fntContactos();
	}

});// End Ready

function fntContactos() {
	const action = 'listContact';
	const data = '';
	$.ajax({
			url : 'ajaxData.php',
			type: "POST",
			async : true,
			data: {
					action:action
			    },
			beforeSend: function() {
			},
			success: function(response) 
			{
				if(response == 'Not data')
				{
					data = "No hay registros para mostrar.";
				}else{
					var data = JSON.parse(response);
				}
				$('#rowsContact').html(data);
			},
			error: function(error){
			}
	});
}