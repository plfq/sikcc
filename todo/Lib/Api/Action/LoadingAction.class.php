<?php

/**
 * 初始化的接口
 *
 * @author 马
 */
class LoadingAction extends Action {

	private $ssid = 0;
	private $userId = 0;

	public function __construct() {
		$this->ssid = $this->_param('ssid');
		$this->userId = M('User')->where(array('ssid' => $this->ssid))->getField('id');
		$this->userId || $this->ajaxReturn(array('status' => 0, 'info' => '用户不存在！'));
	}

	public function chrome() {
		$list['list'] = A('GetList')->getList(true);
		$list['tags'] = M('Tags')->where(array('user_id' => $this->userId))->limit(4)->select();
		
		$this->ajaxReturn($list);
	}

}

?>
