<?php 
	$adminLib = $this->acl->hasMenuPermission('admin','1');
	$teacherLib = $this->acl->hasMenuPermission('teacher','1');
	$studentLib = $this->acl->hasMenuPermission('student','1');
	$staffLib = $this->acl->hasMenuPermission('staff','1');
	$userLib = $this->acl->hasMenuPermission('user','1');

	// print_r($studentLib);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Card</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body> 
 
<div class="container">
	<br><br>
  	<div class="card bg-light text-dark">
    	<div class="card-body">
    		<ul class="nav nav-tabs" role="tablist">
			    <li class="nav-item">
			      	<a class="nav-link active" data-toggle="tab" href="#home">Home</a>
			    </li>
			<?php if($adminLib['has_permission']) {?>
			    <li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"><?php echo $adminLib['menu_data']['menu_name']; ?></a>
				    <div class="dropdown-menu">
				    	<?php foreach ($this->acl->hasSubMenuPermission($adminLib['menu_data']['id'], '3') as $value) { ?>
				    		<a class="dropdown-item" data-toggle="tab" href="#menu1"><?php echo $value['sub_menu_name']; ?></a>
				 		<?php } ?>
				     	
				    </div>
				</li>
			<?php } if($teacherLib['has_permission']) { ?>

			    <li class="nav-item">
			      	<a class="nav-link" data-toggle="tab" href="#menu1"><?php echo $teacherLib['menu_data']['menu_name']; ?></a>
			    </li>
			<?php } if($studentLib['has_permission']) { ?>

			    <li class="nav-item">
			      	<a class="nav-link" data-toggle="tab" href="#menu2"><?php echo $studentLib['menu_data']['menu_name']; ?></a>
			    </li>
			<?php } if($staffLib['has_permission']) { ?>

			    <li class="nav-item">
			      	<a class="nav-link" data-toggle="tab" href="#menu3"><?php echo $staffLib['menu_data']['menu_name']; ?></a>
			    </li>

			<?php } if($userLib['has_permission']) { ?>

			    <li class="nav-item">
			      	<a class="nav-link" data-toggle="tab" href="#menu4"><?php echo $userLib['menu_data']['menu_name']; ?></a>
			    </li>
			<?php } ?>

			</ul>
    	</div>