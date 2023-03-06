<div id="content" class="row">
<?php

echo 
			'<div class="col-12 med-col-2"><img id="empImage" alt="User Photo" src="images/'.$users[0]->user_photo.'"></div>
			<div id="empDetails" class="col-12 med-col-10"> <span class="centerDetails"><span class="label">Name:</span> '.$users[0]->emp_lname.', '.$employees[0]->emp_fname.'<br>
			<span class="label">User ID:</span> '.$users[0]->id.'<br>
			<span class="label">Username:</span> '.$users[0]->user_username.'<br></span></div>'
		;
?>
<br><br>
<div id="content" class="row">
<?php	
echo '<a href="http://localhost:8888/tenuta_matthew_PHPMidterm/index.php?task=delete&id='.$users[0]->id.'">delete user</a><br>';
echo '<a href="http://localhost:8888/tenuta_matthew_PHPMidterm/index.php?task=update&id='.$users[0]->id.'">update user</a>';
?>
</div>