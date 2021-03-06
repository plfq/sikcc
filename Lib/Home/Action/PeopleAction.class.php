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
		$userId = $this->_param(2);
		$user = M('User')->where(array('id' => $userId))->find();
		$user = array_merge($user, M('UserEx')->where(array('user_id' => $userId))->find());
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
