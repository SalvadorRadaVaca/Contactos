<?php 

	if($_POST)
	{
		require_once("conexion.php");

		if($_POST['action'] == 'searchContact')
		{
			if(!empty($_POST['id']))
			{
				$arrContact = array();
				$intId = intval($_POST['id']);
				$query_select = mysqli_query($conection, "SELECT *FROM ag_contacto WHERE id_contacto = $intId");
				$num_rows = mysqli_num_rows($query_select);
				if($num_rows > 0)
				{
					$arrContact = mysqli_fetch_assoc($query_select);
					echo json_encode($arrContact, JSON_UNESCAPED_UNICODE);
				} else {
					echo "Not data";
				}
				exit;
			}
		}

		//Buscar por input
		if($_POST['action'] == 'searchContactkey')
		{
			$searchData = $_POST['dataSearch'];
			//tabla cliente para error boolean
			$query_select = mysqli_query($conection, "SELECT * FROM ag_contacto WHERE
													  id_contacto LIKE '%$searchData%' OR
													  nombres LIKE '%$searchData%' OR
													  apellidos LIKE '%$searchData%' OR
													  telefono LIKE '%$searchData%' OR
													  email LIKE '%$searchData%'	
												");
			$num_rows = mysqli_num_rows($query_select);
			if($num_rows > 0)
			{
				$htmlTable = '';
				while ($row = mysqli_fetch_assoc($query_select)) {
					$htmlTable .= '<tr>
					                  <th scope="row">'.$row['id_contacto'].'</th>
					                  <td>'.$row['nombres'].'</td>
					                  <td>'.$row['apellidos'].'</td>
					                  <td>'.$row['telefono'].'</td>
					                  <td>'.$row['email'].'</td>
					              </tr>';
				}
				echo json_encode($htmlTable, JSON_UNESCAPED_UNICODE);
			}else{
				echo "Not data";
			}
			exit;
		}

		if($_POST['action'] == 'listContact')
		{
			$query_select = mysqli_query($conection, "SELECT * FROM ag_contacto");
			$num_rows = mysqli_num_rows($query_select);
			if($num_rows > 0)
			{
				$htmlTable = '';
				while ($row = mysqli_fetch_assoc($query_select)) {
					$htmlTable .= '<tr>
					                  <th scope="row">'.$row['id_contacto'].'</th>
					                  <td>'.$row['nombres'].'</td>
					                  <td>'.$row['apellidos'].'</td>
					                  <td>'.$row['telefono'].'</td>
					                  <td>'.$row['email'].'</td>
					              </tr>';
				}
				echo json_encode($htmlTable, JSON_UNESCAPED_UNICODE);
			}else{
				echo "Not data";
			}
			exit;
		}
	}

?>