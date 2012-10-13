<?php

class IndexAction extends Action {

	public function index() {

		if (USER_ID) {
			$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 80px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>^_^</h1><p>欢迎使用！</p></div>', 'utf-8');
		} else {
			$this->success('先去登陆一下', __APP__ . '/Login');
		}
	}

}