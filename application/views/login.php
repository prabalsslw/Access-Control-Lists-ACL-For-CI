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
  	<div class="card bg-light text-dark col-lg-6">
    	<div class="card-body">
    		<div>
       			<?php if($this->session->flashdata('errorMsg')): ?>
                    <div class='alert alert-warning text-left'><?php echo $this->session->flashdata('errorMsg'); ?></div>
                <?php elseif($this->session->flashdata('successMsg')): ?>
                    <div class='alert alert-success text-left'><?php echo $this->session->flashdata('successMsg'); ?></div>
                <?php endif; ?>
       		</div>
    		<form action="<?php echo base_url(); ?>loginaction" method="post">
			    <label for="email">User Name:</label>
			    <input type="text" class="form-control" placeholder="Enter Usernamed" name="username" required>
			    
			    <label for="pwd">Password:</label>
			    <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
			    <br>
			   	<input type="submit" name="login" value="Login" class="btn btn-primary">
			</form>
    	</div>
  	</div>
</div>

</body>
</html>
