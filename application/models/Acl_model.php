<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Acl_model extends CI_Model {
	
	public function loginDb($data)
	{
		$query = $this->db->get_where('users', array('username' => $data['empid'], 'password' => $data['encr_pass']));
        return $query->row_array();
	}

	public function getPermissionByModulename($modulename, $roleid)
	{
		$menu_row = $this->db->get_where('main_menu', array('menu_slug' => $modulename, 'is_active' => '1'));
        $menu_row_array = $menu_row->row_array();
        $mid = $menu_row_array['id'];

        $menu_has_permission = $this->db->query("SELECT * FROM menu_roles LEFT JOIN main_menu ON menu_roles.menu_id = main_menu.id WHERE menu_roles.role_id = '$roleid' AND main_menu.menu_slug = '$modulename' AND menu_roles.is_active = '1' ");
        $num_row = $menu_has_permission->num_rows();

        if($num_row > 0)
        {
        	return array('has_permission' => true, 'menu_data' => $menu_row_array);
        }
        else
        {
        	return array('has_permission' => false);
        }
	}

	public function getSubmenuByMenuid($moduleid, $roleid)
	{
		$submenu_has_permission = $this->db->query("SELECT * FROM submenu_roles LEFT JOIN sub_menu ON submenu_roles.sub_menu_id = sub_menu.id WHERE submenu_roles.role_id = '$roleid' AND sub_menu.menu_id = '$moduleid' AND submenu_roles.is_active = '1' AND sub_menu.is_active = '1'");
       	return $submenu_has_permission->result_array();
	}

	public function getAllMenu()
	{
		$menu_result = $this->db->get_where('main_menu', array('is_active' => '1'));
        return $menu_result->result_array();
	}

	public function getAllSubMenu()
	{
		$submenu_result = $this->db->get_where('sub_menu', array('is_active' => '1'));
        return $submenu_result->result_array();
	}

	public function getAllMenuRole($roleid)
	{
		$menu_result = $this->db->get_where('menu_roles', array('role_id' => $roleid));
        return $menu_result->result_array();
	}

	public function getAllSubMenuRole($roleid)
	{
		$submenu_result = $this->db->get_where('submenu_roles', array('role_id' => $roleid));
        return $submenu_result->result_array();
	}
}