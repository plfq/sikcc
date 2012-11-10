<?php

/**
 * 输入框@ 功能的后台数据处理
 * @author 马
 */
class AtAction extends Action {

	public function index() {
		$name = trim($this->_param('p')); //获取输入的数据
		$where = "name LIKE '" . $name . "%'";
		$list = M('User')->where($where)->limit(5)->select();
		$this->ajaxReturn($list);
	}

}

?>
