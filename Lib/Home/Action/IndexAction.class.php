<?php

class IndexAction extends Action {

	public function index() {
		$p=  $_REQUEST['q'];
		$data = ["Jacob", "Isabella", "Ethan", "Emma", "Michael", "Olivia", "Alexander", "Sophia", "William", "Ava", "Joshua", "Emily", "Daniel", "Madison", "Jayden", "lepture", "Abigail", "Noah", "Chloe", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "你好", "你你你",
			"Jacob", "Isabella", "Ethan", "reorx", "Emma", "Michael", "Olivia", "Alexander", "Sophia", "William", "Ava", "Joshua", "Emily", "Daniel", "Madison", "Jayden", "Abigail", "Noah", "Chloe", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "你好", "你你你"];
		$this->ajaxReturn($data,'names','ok');
		if (USER_ID) {
			$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 80px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>^_^</h1><p>欢迎使用！</p></div>', 'utf-8');
		} else {
			redirect(U('Group/Group/explore'));
		}
	}

}