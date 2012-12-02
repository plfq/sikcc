<?php

/**
 * 登陆接口
 *
 * @author 马
 */
class LoginAction extends Action {

	//登陆
	public function index() {
		$data['email'] = $this->_param("email");
		$data['password'] = $this->_param("password");
		$userObj = M('User');
		$r = $userObj->where($data)->find();

		if ($r) {
			$ssid = dechex($r['id']) . md5($data['password']);
			$r = $userObj->where(array('id' => $r['id']))->save(array('ssid' => $ssid));
			$return['status'] = 1;
			$return['ssid'] = $ssid;
			$this->ajaxReturn($return);
		} else {
			$this->ajaxReturn(array('status' => 0));
		}
	}

}

?>
