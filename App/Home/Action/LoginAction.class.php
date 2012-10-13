<?php

/**
 * Description of loginAction
 *
 * @author Ma
 */
class LoginAction extends Action {

	//登陆首页
	public function index() {

		$HTTP_REFERER = $_SERVER['HTTP_REFERER'];
		if (USER_ID) {
			$this->success('您已经登录！', $HTTP_REFERER ? $HTTP_REFERER : __APP__);
		}
		$this->assign('HTTP_REFERER', $HTTP_REFERER);
		$this->display();
	}

	/**
	 * 处理数据，交付登录
	 */
	public function login() {
		$email = $this->_post("email");
		$password = $this->_post("password");
		$HTTP_REFERER = $this->_post('HTTP_REFERER');
		$loginObj = D('Login');
		$user = $loginObj->login($email, $password);
		$r = D('User')->isNotSay($user['id'], TRUE);
		if ($r) {
			$notSay = '您被禁止发言！<br>' . $r['remark'];
		}
		if ($user > 0) {
			$this->success($user['username'] . '<br/>欢迎回来！' . $notSay, $HTTP_REFERER ? $HTTP_REFERER : __APP__);
		} else {
			switch ($user) {
				case -1:
					$notice = '密码不正确！';
					break;
				case -2:
					$notice = '未注册！';
					break;
			}
			$this->error('登录失败！<br/>' . $notice, $HTTP_REFERER);
		}
	}

}

?>
