<?php

/**
 * 小组相关
 *
 * @author Ma
 */
class GroupAction extends Action {

	/**
	 * 申请创建的小组列表
	 */
	public function newGroup() {
		$group = D('NewGroup')->select();

		foreach ($group as $key => $value) {
			$group[$key]['masterName'] = D('User')->where(array('id' => $value['master_id']))->getField('username');
		}
		$this->assign('group', $group);
		$this->display();
	}

	/**
	 * 查看申请创建的小组的详情
	 */
	public function newGroupInfo() {
		$id = $this->_get('id');
		$group = D('NewGroup')->where(array('id' => $id))->find();
		$master = D('User')->where(array('id' => $group['master_id']))->find();
		$this->assign('master', $master);
		$this->assign('group', $group);
		$this->display();
	}

	/**
	 * 批准创建小组
	 */
	public function pass() {
		$id = $this->_get('id');
		$group = D('NewGroup')->where(array('id' => $id))->find();
		$tags = array_filter(explode(' ', $group['tags']));
		$r = D('Group/GTags')->saveTags($tags, $group['id']);
		if ($r) {
			D('NewGroup')->where(array('id' => $id))->delete();
			$this->success('OK了！');
		} else {
			$this->error('Debug吧！亲！');
		}
	}

	/**
	 * 拒绝创建小组
	 */
	public function refuse() {
		$id = $this->_get('id');
		$r = D('NewGroup')->where(array('id' => $id))->delete();
		if ($r) {
			D('Home/Message')->send();
		} else {
			
		}
	}

}

?>
