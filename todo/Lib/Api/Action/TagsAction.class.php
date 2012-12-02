<?php

/**
 * 标签控制
 *
 * @author 马
 */
class TagsAction extends Action {

	private $ssid = 0;
	private $userId = 0;
	private $folder = array(
		'today' => 1,
		'tomorrow' => 2,
		'week' => 3,
		'later' => 4,
		'note' => 5
	);

	public function __construct() {
		$this->ssid = $this->_param('ssid');
		$this->userId = M('User')->where(array('ssid' => $this->ssid))->getField('id');
		$this->userId || $this->ajaxReturn(array('status' => 0, 'info' => '用户不存在！'));
	}

	/**
	 * 获取所有标签
	 */
	public function getAll($loading=FALSE) {
		$list = M('Tags')->where(array('user_id' => $this->userId))->limit(4)->select();
		$this->ajaxReturn($list);
	}

}

?>
