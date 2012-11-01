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
		$this->show('这个是小组首页，登录时候默认是小组动态中心，未登录为浏览小而已');
	}

	/**
	 * 这里是每个小组的首页！主要是为了优化URL的时候用的
	 */
	public function group() {
		$groupId = $this->_get('group');
		$group = D('Group')->find(array('id' => $groupId));
		$groupAbout = M('GAbout')->where(array('group_id' => $groupId))->getField('about');
		$isMember = D('Member')->is_member($groupId);
		$master['username'] = M('User')->where(array('id' => $group['master_id']))->getField('name');
		$master['id'] = $group['master_id'];
		$topic = D('Topic')->topicList($groupId, 'All', FALSE, 20);
		$this->assign('group', $group);
		$this->assign('groupAbout', $groupAbout);
		$this->assign('isMember', $isMember);
		$this->assign('master', $master);
		$this->assign('topic', $topic);
		$this->display();
	}

	/**
	 * 获取最近更新的帖子
	 */
	protected function newTopic() {
		
	}

	/**
	 * 获取最新成员
	 */
	protected function newMember() {
		
	}

}

?>
