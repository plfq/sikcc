<?php

/**
 * 个人中心吧！
 *
 * @author 马
 */
class MineAction extends Action {

	/**
	 * 自动检测是否登录
	 */
	public function _initialize() {
		if (!USER_ID) {
			$this->error('亲，登录先！', U('Home/Login'));
		}
	}

	public function index() {
		$this->redirect(U('edit'));
	}

	/**
	 * 编辑用户资料
	 * @todo 把侧边拦用户信息改写到Widget里面去
	 */
	public function edit() {
		$userId = USER_ID;
		$user = M('User')->find(array('id' => $userId));
		$user = array_merge($user, M('UserEx')->find(array('user_id' => $userId)));
		$this->assign('user', $user);
		$this->display();
	}

	/**
	 * 保存edit
	 */
	public function saveEdit() {
		$data['name'] = $this->_post('name');
		$data['signature'] = $this->_post('signature');
		$r = M('User')->where(array('id' => USER_ID))->save($data);
		if ($r) {
			$this->success('保存成功！', U('index'));
		} else {
			$this->error('再试试呗！');
		}
	}

	/**
	 * 修改密码
	 */
	public function psw() {
		$userId = USER_ID;
		$user = M('User')->find(array('id' => $userId));
		$user = array_merge($user, M('UserEx')->find(array('user_id' => $userId)));
		$this->assign('user', $user);
		$this->display();
	}

	/**
	 * 保存新密码
	 */
	public function savePsw() {
		$newpsw = $this->_post('newpsw');
		$oldpsw = $this->_post('oldpsw');
		$r = M('User')->where(array('id' => USER_ID, 'password' => $oldpsw))->find();
		$r || $this->error('原密码错误！');
		$r = M('User')->where(array('id' => USER_ID))->save(array('password' => $newpsw));
		if ($r) {
			$this->success('保存成功！', U('index'));
		} else {
			$this->error('再试试呗！');
		}
	}

	/**
	 * 修改头像
	 */
	public function head() {
		$userId = USER_ID;
		$user = M('User')->find(array('id' => $userId));
		$user = array_merge($user, M('UserEx')->find(array('user_id' => $userId)));
		$this->assign('user', $user);
		$this->display();
	}

	/**
	 * 编辑头像
	 */
	public function editHead() {

		$userId = USER_ID;
		import('ORG.UploadFile');
		$upload = new UploadFile(); // 实例化上传类
		$upload->maxSize = 3145728; // 设置附件上传大小
		$upload->allowExts = array('jpg', 'gif', 'png', 'jpeg'); // 设置附件上传类型
		$upload->savePath = './Public/HEAD/' . substr($userId, -2) . '/'; // 设置附件上传目录
		$upload->thumb = TRUE; //开启缩略图
		$upload->thumbFile = $userId . '_new'; //缩略文件名
		$upload->thumbMaxWidth = '150px';
		$upload->thumbMaxHeight = '450px';
		$upload->thumbRemoveOrigin = TRUE;
		if (!$upload->upload()) {// 上传错误提示错误信息
			$this->error($upload->getErrorMsg());
		} else {// 上传成功 获取上传文件信息
			$info = $upload->getUploadFileInfo();
		}
		$headNew = substr($userId, -2) . '/' . $userId . '_new' . '.' . reset($info)['extension'];
		$userObj = M('User');
		$user = $userObj->find(array('id' => $userId));
		$user = array_merge($user, M('UserEx')->find(array('user_id' => $userId)));
		$this->assign('user', $user);
		$this->assign('headNew', $headNew);
		$this->display();
	}

	/**
	 * 保存编辑好的好头像
	 */
	public function saveHead() {
		$newHead = $this->_post('headNew');
		$x1 = $this->_post('x1');
		$y1 = $this->_post('y1');
		$x2 = $this->_post('x2');
		$y2 = $this->_post('y2');
		$width = $this->_post('width');
		$height = $this->_post('height');

		$image = './Public/HEAD/' . $newHead; // 原图
		$imgstream = file_get_contents($image);
		$im = imagecreatefromstring($imgstream);
		$x = imagesx($im); //获取图片的宽
		$y = imagesy($im); //获取图片的高

		if ($x > $y) {//图片宽大于高
			$width = ($width / 150) * $x; //需要截取的宽度
			$height = $width;
			$sx = abs(($y - $x) / 2);
			$sy = 0;
			$thumbw = $y;
			$thumbh = $y;
		} else {//图片高大于等于宽
			$sy = abs(($x - $y) / 2);
			$sx = 0;
			$thumbw = $x;
			$thumbh = $x;
		}
		if (function_exists("imagecreatetruecolor"))
			$dim = imagecreatetruecolor(100, 100); // 创建目标图gd2
		else
			$dim = imagecreate(100, 100); // 创建目标图gd1

		imagecopyresized($dim, $im, 0, 0, $sx, $sy, 100, 100, $thumbw, $thumbh);
		header("Content-type: image/jpeg");
		imagejpeg($dim);
	}

}

?>
