<?php

/**
 * 消息模块！
 *
 * @author 马
 */
class MessageAction extends Action {

	//查看消息

	public function __construct() {
		if (!USER_ID) {
			$this->error('请先登录！');
		}
	}

	//纸条盒子首页
	public function index() {
		
	}

}

?>
