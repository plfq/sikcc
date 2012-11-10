<?php

/**
 * 和用户相关的一些操作封装
 *
 * @author Ma
 */
class UserModel extends Model {

	/**
	 * 是否被禁止发言是就返回true，没有被禁止就返回false
	 * @param type $user_id  用户ID
	 * @param type $info  是否返回被禁止详情
	 * @return type
	 */
	public function isNotSay($user_id, $info = FALSE) {
		(bool) $r = D('UserEx')->getField(array('user_id' => $user_id), 'is_not_say');
		if ($info && $r) {
			$r = D('NotSay')->where(array('user_id' => $user_id))->find();
		}
		return $r;
	}

}

?>
