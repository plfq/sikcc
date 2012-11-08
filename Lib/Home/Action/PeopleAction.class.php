<?php

/**
 * 用户信息中心
 *
 * @author 马
 */
class PeopleAction extends Action {

	/**
	 * 查看用户资料
	 */
	public function index() {
		$userId = $this->_param(3);
		$user = M('User')->find(array('id' => $userId));
		$user = array_merge($user, M('UserEx')->find(array('user_id' => $userId)));
		$myGroup = D('Group/MyGroup')->myGroup($userId, TRUE, 'id');
		$groupObj = M('Group');
		$aboutObj = M('GAbout');
		foreach ($myGroup as &$value) {

			$value = $groupObj->where(array('id' => $value['group_id']))->find();
			$value['about'] = mb_substr($aboutObj->where(array('group_id' => $value['id']))->getField('about'), 0, 30, 'utf-8') . '…';
		}
		$this->assign('user', $user);
		$this->assign('group', $myGroup);

		$this->display();
	}

}

?>
