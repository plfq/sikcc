<?php

/**
 * 浏览小组
 *
 * @author 马
 */
class GroupAction extends Action {

	public function explore() {
		$gclassId = $this->_param(3);
		if ($gclassId) {
			$where = array('gclass' => $gclassId);
		} else {
			$where = NULL;
		}
		$page = $_REQUEST['page'];
		$page || $page = 1;
		$gclass = M('GClass')->where('father > 0')->select();
		$group = M('Group')->where($where)->page($page, 20)->select();
		//开始分页
		import("ORG.Page");
		$pageObj = new Page(M('Group')->where($where)->count(), $page, 20);
		$pageObj->show();
		//</分页>
		$aboutObj = M('GAbout');
		foreach ($group as &$value) {
			$value['about'] = mb_substr($aboutObj->where(array('group_id' => $value['id']))->getField('about'), 0, 30, 'utf-8') . '…';
		}
		$this->assign('gclass', $gclass);
		$this->assign('group', $group);
		$this->display();
	}

}

?>
