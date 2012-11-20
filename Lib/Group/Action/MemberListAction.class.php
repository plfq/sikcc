<?php

/**
 * 查看成员列表
 */
class MemberListAction extends Action {

	private $groupId = FALSE;
	private $userId = USER_ID;

	/**
	 * 权限代码
	 * 0->无任何权限
	 * 1->管理员权限
	 * 2->组长权限
	 * @var type 
	 */
	private $permissions = 0;

	/**
	 * 权限检查
	 */
	public function __construct() {
		$this->groupId = $this->_param('group');
		$this->groupId || $this->groupId = $this->_param('3');
		$this->groupId || $this->groupId = $this->_param('2');
		$this->groupId || $this->error('参数错误！');
		$r = D('GroupAdmin')->checkPermission($this->groupId, $this->userId);
		if ($r) {
			if ($this->userId == (M('Group')->where(array('id' => $this->groupId))->getField('master_id'))) {
				$this->permissions = 2; //组长
			} else {
				$this->permissions = 1; //管理员
			}
		}
	}

	/**
	 * 优化URL
	 */
	public function _empty($groupId) {
		$this->groupId = $groupId;
		$this->index();
	}

	/**
	 * 查看成员列表
	 */
	public function index() {
		$page = $this->_param('page');
		$page || $page = $this->_get('page');
		$page || $page = 1;
		$userObj = M('User');
		$list = D('MemberList')->memberList($this->groupId, $page, $number = 40);
		$group = M('Group')->where(array('id' => $this->groupId))->find();
		//第一页的时候显示组长和管理员

		foreach ($list as &$value) {
			$value = $userObj->where(array('id' => $value['user_id']))->field('id,head,url,name')->find();
		}
		if ($page == 1) {
			$admin = M('GroupAdmin')->where(array('group_id' => $this->groupId))->select();
			foreach ($admin as &$value) {
				$value = $userObj->where(array('id' => $value['user_id']))->field('id,head,url,name')->find();
			}
			$master = $userObj->where(array('id' => $group['master_id']))->field('id,head,url,name')->find();
		}
		$this->assign('master', $master);
		$this->assign('admin', $admin);
		$this->assign('list', $list);
		$this->assign('group', $group);
		$this->assign('permissions', $this->permissions); //权限检查 
		$this->display('index');
	}

}

?>
