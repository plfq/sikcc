<?php

/**
 * 帖子回复控制器
 *
 * @author 马
 */
class RetopicAction extends Action {

	/**
	 * 增加新回复
	 */
	public function newRetopic() {
		$topicId = $this->_param('topic_id');
		$content = $this->_param('content');
		$brother = $this->_param('brother');
		$r = D('Retopic')->newRetopic($content, $topicId, $brother);
		if ($r) {
			$this->success('回复成功了！');
		} else {
			$this->error('失败了！亲！');
		}
	}

}

?>
