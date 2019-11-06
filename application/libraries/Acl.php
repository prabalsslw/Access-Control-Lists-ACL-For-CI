<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Acl
{
	public function __construct() {
        $this->CI = & get_instance();
    }

    public function hasMenuPermission($module_name, $roleid)
    {
    	$menuperm = $this->CI->Acl_model->getPermissionByModulename($module_name, $roleid);
    	return $menuperm;
    }

    public function hasSubMenuPermission($module_id, $roleid)
    {
    	$subMenuPerm = $this->CI->Acl_model->getSubmenuByMenuid($module_id, $roleid);
    	return $subMenuPerm;
    }

}
