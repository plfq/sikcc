<?php

/**
 * 成员模块！
 * 根据用户Id分表，当小组需要读取成员的时候使用缓存提高速度，对小组管理员不使用缓存
 * 多表后缀_N
 * @author Ma
 */
class MemberModel extends Model {

	/**
	 * 检查是否是小组成员
	 * @param type $groupId
	 * @param type $userId
	 * @return boolean
	 */
	public function is_member($groupId, $userId = FALSE) {
		$userId || $userId = USER_ID;
		if (!$userId)
			return FALSE;
		$NUM = substr($userId, -1);
		return M('Member_' . $NUM)->find(array('group_id' => $groupId, 'user_id' => $userId));
	}

	/**
	 * 添加小组成员
	 * @param type $groupId
	 * @param string $userId
	 * @return type
	 */
	public function addMember($groupId, $userId = FALSE) {
		$userId || $userId = USER_ID;
		if (!$userId) {
			return FALSE;
		}
		$NUM = substr($userId, -1);
		return M('Member_' . $NUM)->add(array('group_id' => $groupId, 'user_id' => $userId, 'date' => time()));
	}

}

?>
