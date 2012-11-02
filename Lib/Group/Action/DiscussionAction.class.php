<?php

/**
 * 显示小组的帖子列表
 * 分开的主要是想着可以优化URL方便
 * @author 马
 */
class DiscussionAction extends Action {

	/**
	 * 空方法，优化url
	 */
	public function _empty() {
		
	}

	/**
	 * 展示小组列表的
	 */
	public function discussion() {
		$groupId = $this->_get('group');
		$type = $this->_get('topicType');
		$type || $type = 'All';
		$topic = D('Topic')->topicList($groupId, $type, TRUE, 25);
		$this->assign('topic', $topic);
		$this->display();
	}

}

?>
