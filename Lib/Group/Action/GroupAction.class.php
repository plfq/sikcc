<?php

/**
 * 小组相关
 *
 * @author Ma
 */
class GroupAction extends Action {

	/**
	 * 小组首页
	 */
	public function index() {
		$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 80px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>^_^</h1><p>这是小组首页</p></div>','utf-8');
	
	}

}

?>
