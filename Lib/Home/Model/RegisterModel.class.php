<?php

/**
 * 
 *
 * @author Ma
 */
class RegisterModel extends Model {

	/**
	 * 注册统一入口
	 */
	public function register($username, $email, $password) {
		$data['name'] = $username;
		$data['email'] = $email;
		$data['password'] = $password;
		$loginObj = D('Login');
		//检查数据是否合法
		$r = check($data);
		if (!$r) {
			return -1; //('请输入合法数据！');
		}
		$userObj = D('User');
		//检查是否已经注册
		$r = $userObj->where(array('email' => $email))->getField('id');
		if ($r) {
			return -2; //('邮箱已经注册！请登录！');
		}
		$r = $userObj->add($data);
		if ($r) {
			$loginObj->sessionWriter($r);
			//写入用户扩展信息
			$this->exWrite($r);
		} else {
			return -3; //数据库写入失败！
		}
		return $r;
	}

	/**
	 * 写入用户扩展信息
	 */
	private function exWrite($user_id) {
		$exObj = D('UserEx');
		$data['user_id'] = $user_id;
		$data['regdate'] = time();
		$r = $exObj->add($data);
		return $r;
	}

}

?>
