<?php if($tienIchLists): ?>
	<?php $i_ti = 0; ?>
	<?php foreach($tienIchLists as $ti): ?>
	<?php $i_ti++; ?>
	<div class="col-md-4">
		<input type="checkbox" value="<?php echo e($ti->id); ?>" name="tien_ich[]" id="tien_ich_<?php echo e($i_ti); ?>"> 
		<label style="cursor:poiter;text-transform:uppercase; font-weight:normal" for="tien_ich_<?php echo e($i_ti); ?>"><?php echo e($ti->name); ?></label>
	</div>
	<?php endforeach; ?>	
<?php else: ?>
<p>Chưa có tiện ích nào.</p>
<?php endif; ?>
<div class="clearfix"></div>