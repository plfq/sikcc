<?php

/**
 * 这个是创建小组
 *
 * @author Ma
 */
class IndexAction extends Action {

	/**
	 * 这里是小组首页！
	 */
	public function index() {

		if (USER_ID) {
			redirect(U('Home/Index/index')); //这里的U方法利用一个巧合，其他地方使用就是错误的
		} else {
			redirect(U('Group/explore'));
		}
	}

	/**
	 * 这里是每个小组的首页！主要是为了优化URL的时候用的
	 */
	public function group() {
		$groupId = $this->_param(3);
		$group = D('Group')->where(array('id' => $groupId))->find();
		$groupAbout = M('GAbout')->where(array('group_id' => $groupId))->getField('about');
		$isMember = D('Member')->is_member($groupId);
		$master['name'] = M('User')->where(array('id' => $group['master_id']))->getField('name');
		$master['id'] = $group['master_id'];
		$topic = D('Topic')->topicList($groupId, 'All', FALSE, 25);
		$this->assign('group', $group);
		$this->assign('groupAbout', $groupAbout);
		$this->assign('isMember', $isMember);
		$this->assign('master', $master);
		$this->assign('topic', $topic);
		$this->display();
	}



}

?>
