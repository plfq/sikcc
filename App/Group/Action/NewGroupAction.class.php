<?php

/**
 * 这个是创建小组
 *
 * @author Ma
 */
class NewGroupAction extends Action {

	public function index() {
		if (!USER_ID) {
			$this->error('请先登录！', U('Home/Login/index'));
		}
		if (!C('NEWGROUP')) {
			$this->error('网站未开放小组创建，请联系网站管理员！', U('Home/Login/index'));
		}
		$this->display();
	}

	/**
	 * 处理数据，交给logic写入数据库
	 */
	public function newGroup() {
		$data['type'] = $this->_post('type');
		$data['name'] = $this->_post('name');
		$data['about'] = $this->_post('about');
		//这个时候先不把标签写入数据库，因为group_id还不确定
		//$data['tags'] = array_splice(array_filter(explode(' ', trim($this->_post('tags')))), 0, 5);
		$data['tags'] = trim($this->_post('tags'));
		if (!$data['name']) {
			$this->error('起个名字呗！');
		}
		if (mb_strlen($data['about'], 'UTF-8') < 2) {//限制简介长度
			$this->error('简介太少！在来五毛钱的！');
		}
		$r = D('NewGroup')->newGroup($data);
		if ($r) {
			$this->success('好了，跪安吧！', U('Index/index'));
		} else {
			$this->error('数据库早造反了！你在试试！');
		}
	}

}

?>
