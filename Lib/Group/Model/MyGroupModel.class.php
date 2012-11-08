<?php

/**
 * 用户小组
 *
 * @author 马
 */
class MyGroupModel extends Model {

	/**
	 * 获取用户加入的所有小组
	 * @param type $groupId 小组Id
	 * @param type $userId 用户Id
	 * @param type $isPage 是否分页
	 * @param type $return 返回值
	 */
	public function myGroup($userId = FALSE, $isPage = FALSE, $field = "group_id") {
		$userId || $userId = USER_ID;
		if (!$userId) {
			return FALSE;
		}
		$field = strtolower($field);
		if ($field == 'all' || $field == 'info') {
			$field = '*';
		} elseif ($field == 'id' || $field == 'group_id') {
			$field = 'group_id';
		}
		$NUM = substr($userId, -1);
		$where = array('user_id' => $userId);
		if ($isPage) {
			$page = $_REQUEST['page'];
			$page || $page = 1;
			$memberObj = M('Member_' . $NUM);
			$list = $memberObj->page($page, 30)->where($where)->field($field)->select();
			import("ORG.Page");
			$pageObj = new Page($memberObj->where($where)->count(), $page, 30);
			$pageObj->show();
		} else {
			$list = M('Member_' . $NUM)->where($where)->field($field)->select();
		}
		return $list;
	}

}

?>
