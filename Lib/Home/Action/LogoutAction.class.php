<?php

/**
 * 注销登录
 *
 * @author 马
 */
class LogoutAction extends Action {

	public function index() {
		session('user_id', NULL);
		$this->success('已经注销！');
	}

}

?>
