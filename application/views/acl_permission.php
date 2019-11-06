<!-- <div class="col-md-12"> -->
<?php 
	$manuid = array();
	$submenuid = array();
	foreach ($allmenurole as $manuRoleValue) {
	$manuid[] = $manuRoleValue['menu_id'];
	}
	foreach ($allsubmenurole as $subManuRoleValue)
	{
	$submenuid[] = $subManuRoleValue['sub_menu_id'];
	}
?>
<div class="row">
	<form class="form-inline" action="conf" method="post">
		<?php foreach ($allmenu as $menuValue) 
		{ 
      ?>
		<div class="col-md-4">
			<div class="card text-dark">
				<div class="card-body">
					<h5 class="card-title">
						<input type="checkbox" name="main_menu[]" value="<?php echo $menuValue['id']; ?>" <?php if(in_array($menuValue['id'], $manuid)){echo 'checked';} ?>><?php echo $menuValue['menu_name']; ?>
					</h5><hr>
					<?php foreach ($allsubmenu as $submenuValue) { 
            			if($menuValue['id'] == $submenuValue['menu_id']){
            			?>
							<span><input type="checkbox" name="submain_menu[]" value="<?php echo $submenuValue['id']; ?>" <?php if(in_array($submenuValue['id'], $submenuid)){echo 'checked';} ?>><?php echo $submenuValue['sub_menu_name']; ?></span><br>
							<?php 
            					}
         				 	} 
        				?>
				</div>
			</div>
		</div>
		<?php } ?>
		<input type="submit" name="give_permission" value="Submit">
	</form>
</div>
<!-- </div> -->
<br><br>
    