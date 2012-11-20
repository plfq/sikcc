<?php

/**
 * 成员模块！
 * 根据用户Id分表，当小组需要读取成员的时候使用缓存提高速度，对小组管理员不使用缓存
 * 多表后缀_N
 * @author Ma
 */
class MemberModel extends Model {

	/**
	 * 检查是否是小组成员<br>
	 * 1=>不是小组成员<br />
	 * 2=>是小组成员<br>
	 * 3=>正在申请中
	 * @param type $groupId
	 * @param type $userId
	 * @return boolean
	 */
	public function is_member($groupId, $userId = FALSE) {
		$userId || $userId = USER_ID;
		if (!$userId)
			return FALSE;
		$NUM = substr($userId, -1);
		$r = M('Mygroup_' . $NUM)->where(array('group_id' => $groupId, 'user_id' => $userId))->find();
		if ($r) {
			return 2;
		}
		$r = M('GApply')->where(array('group_id' => $groupId, 'user_id' => $userId))->find();
		if ($r) {
			return 3;
		}
		return 1;
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
		$join = M('Group')->where(array('id' => $groupId))->getField('join');
		if ($join == 3)
			return FALSE;
		if ($join == 2) {
			$r = $this->addApply($groupId, $userId);
			if ($r) {
				return 1;
			} else {
				return FALSE;
			}
		}

		$NUM = substr($userId, -1);
		if (M('Mygroup_' . $NUM)->where(array('group_id' => $groupId, 'user_id' => $userId))->find()) {
			return TRUE;
		}
		$r = M('Mygroup_' . $NUM)->add(array('group_id' => $groupId, 'user_id' => $userId, 'date' => time()));
		!$r || $r = M('Member_' . substr($groupId, -1))->add(array('group_id' => $groupId, 'user_id' => $userId, 'date' => time()));
		return (bool) $r;
	}

	/**
	 * 添加组长到member表！
	 */
	public function addMaster($groupId, $masterId) {
		$NUM = substr($masterId, -1);
		$r = M('Mygroup_' . $NUM)->add(array('group_id' => $groupId, 'user_id' => $masterId, 'date' => time()));
		!$r || $r = M('Member_' . substr($groupId, -1))->add(array('group_id' => $groupId, 'user_id' => $userId, 'date' => time()));
		return (bool) $r;
	}

	/**
	 * 添加到申请加入表
	 * @param type $groupId
	 * @param type $userId
	 */
	public function addApply($groupId, $userId) {
		$userId || $userId = USER_ID;
		if (!$userId) {
			return FALSE;
		}
		return M('GApply')->add(array('group_id' => $groupId, 'user_id' => $userId, 'date' => time()));
	}

	/**
	 * 退出（踢出）小组
	 * @param type $groupId
	 * @param type $userId
	 */
	public function quit($groupId, $userId) {
		$master_id = M('Group')->where(array('id' => $groupId))->getField('master_id');
		if ($userId == $master_id) {
			return FALSE;
		}
		$NUM = substr($userId, -1);
		$r = M('Mygroup_' . $NUM)->where(array('group_id' => $groupId, 'user_id' => $userId))->delete();
		!$r || $r = M('Member_' . $NUM = substr($groupId, -1))->where(array('group_id' => $groupId, 'user_id' => $userId))->delete();

		return $r;
	}

	/**
	 * 去除申请或者拒绝申请
	 * 
	 */
	public function cancel($groupId, $userId) {
		$userId || $userId = USER_ID;
		if (!$userId) {
			return FALSE;
		}
		return M('GApply')->where(array('group_id' => $groupId, 'user_id' => $userId))->delete();
	}

}

?>
