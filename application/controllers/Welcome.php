<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('welcome_message');
		$this->load->view('layout/footer');
	}

	public function login()
	{
		$this->load->view('login');
	}

	public function loginaction()
	{
		if($this->input->get_post('login'))
		{
			$data['empid'] = $this->input->post('username');
			$data['encr_pass'] = $this->input->post('password');

			$result = $this->Acl_model->loginDb($data);

			if(isset($result) && ($result['username'] == $data['empid']) && ($result['password'] == $data['encr_pass']))
			{
				$newdata = array(
					'ses_name' => $result['name'],
			        'ses_usern'  => $result['username'],
			        'ses_roleid'     => $result['role_id'],
			        'logged_in' => TRUE
				);
				$this->session->set_userdata($newdata);

				$this->session->set_flashdata('successMsg', 'Welcome ACL');
				redirect(base_url(), 'refresh');
			}
			else
			{
				$this->session->set_flashdata('errorMsg', 'Invalid User ID or Password!');
				redirect(base_url().'login', 'refresh');
			}
		}
	}

	public function aclper()
	{
		$data['allmenu'] = $this->Acl_model->getAllMenu();
		$data['allsubmenu'] = $this->Acl_model->getAllSubMenu();

		$data['allmenurole'] = $this->Acl_model->getAllMenuRole('1');
		$data['allsubmenurole'] = $this->Acl_model->getAllSubMenuRole('1');
		
		$this->load->view('layout/header');
		$this->load->view('acl_permission', $data);
		$this->load->view('layout/footer');
	}

	public function conpre()
	{
		echo "<pre>";
		print_r($_POST);
	}
}
