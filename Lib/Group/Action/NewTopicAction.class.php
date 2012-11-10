<?php

/**
 * 小组发帖的控制器
 *
 * @author 马
 */
class NewTopicAction extends Action {

	/**
	 * 构造方法，判断是否为小组成员
	 */
	public function _initialize() {
		if (!D('Member')->is_member($this->_param('group'))) {
			$this->error('你不是这个小组的成员!');
		}
	}

	/**
	 * 这个调用模版
	 */
	public function index() {
		$groupId = $this->_param('3');
		$topicType = D('GroupTopicType')->getTopicType($groupId);
		$this->assign('topicType', $topicType);
		$group = M('Group')->where(array("id"=>$groupId))->find();
		$this->assign('group', $group);
		$this->display();
	}

	/**
	 * 保存帖子
	 */
	public function newTopic() {
		$title = $this->_post('title');
		$content = $this->_post('content');
		$groupId = $this->_post('group');
		$topicTypeId = $this->_post('topicTypeId');
		$topicTypeId || $topicTypeId = 0;
		$r = D('Topic')->newTopic($title, $content, $groupId, $userId = FALSE, $topicTypeId);
		if ($r) {
			$this->success('发帖成功！', U('Group/Index/group', 'group=' . $groupId));
		} else {
			$this->success('发帖失败！');
		}
	}

}

?>
