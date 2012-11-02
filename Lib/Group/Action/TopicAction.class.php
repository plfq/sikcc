<?php

/**
 * 帖子相关
 *
 * @author 马
 */
class TopicAction extends Action {

	/**
	 * 空方法，优化URL
	 * @param type $topicId
	 */
	public function _empty($topicId) {
		$this->topic($topicId);
	}

	/**
	 * 查看帖子
	 * @param type $topicId
	 */
	public function topic($topicId) {
		$topic = D('Topic')->topic($topicId);
		$retopic = D('Retopic')->retopicList($topicId);
		$this->assign('topic', $topic);
		$this->assign('retopic', $retopic);
		$this->display();
	}

}

?>
