<?php

/**
 * 获取小组成员的
 *
 * @author 马
 */
class MemberListModel extends Model {

	/**
	 * 获取所有小组成员
	 * @param type $groupId
	 * @param type $page
	 * @param type $number
	 */
	public function memberList($groupId, $page, $number = 40) {
		if ($page == FALSE) {
			$page = 1;
			$isPage = FALSE;
		}
		$NUM = substr($groupId, -1);
		$memberObj = M('Member_' . $NUM);
		$list = $memberObj->where(array('group_id' => $groupId))->page($page, $number)->order('date')->select();
		if ($isPage) {
			import("ORG.Page");
			$pageObj = new Page($memberObj->where(array('group_id' => $groupId))->count(), $page, $number);
			$pageObj->show();
		}
		return $list;
	}

}

?>
