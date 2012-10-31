<?php

/**
 * 小组发帖的控制器
 *
 * @author 马
 */
class NewTopicAction extends Action {

	/**
	 * 这个调用模版
	 */
	public function index() {
		$groupId = $this->_get('group');
		$topicType = D('GroupTopicType')->getTopicType($groupId);
		$this->assign('topicType', $topicType);
		$this->assign('groupId', $groupId);
		$this->display();
	}

	/**
	 * 保存帖子
	 */
	public function newTopic() {
		$title = $this->_post('title');
		$content = $this->_post('content');
		$groupId = $this->_post('groupId');
		$topicTypeId = $this->_post('topicTypeId');
		$topicTypeId || $topicTypeId = 0;
		dump(get_defined_vars());
	}

}

?>
