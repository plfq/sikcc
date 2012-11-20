<?php

/**
 * 成员列表的管理Action
 *
 * @author 马
 */
class MemberAdminAction extends Action {

	private $groupId = FALSE;
	private $userId = USER_ID;
	private $memberId = FALSE;

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
		$this->memberId = $this->_param('user');
		$this->memberId || $this->error('参数错误！');
		$r = D('GroupAdmin')->checkPermission($this->groupId, $this->userId);
		if ($r) {
			if ($this->userId == (M('Group')->where(array('id' => $this->groupId))->getField('master_id'))) {
				$this->permissions = 2; //组长
			} else {
				$this->permissions = 1; //管理员
			}
		}
		if ($this->permissions < 1) {
			$this->error('你没有权限！');
		}
		if ($this->memberId == $this->userId) {
			$this->error('不要对自己操作！');
		}
	}

	/**
	 * 删除成员
	 */
	public function delete() {
		$r = D('GroupAdmin')->checkPermission($this->groupId, $this->memberId);
		if ($r) {
			$this->error('删除管理员请先取消管理员身份！');
		}
		$r = D('Member')->quit($this->groupId, $this->memberId);
		if ($r) {
			$this->success('已经删除！');
		} else {
			$this->error('失败!');
		}
	}

	/**
	 * 提升为管理员
	 */
	public function up() {
		if ($this->permissions > 1) {
			$groupAdminObj = M('GroupAdmin');
			if (!$groupAdminObj->where(array('group_id' => $this->groupId, 'user_id' => $this->memberId))->find()) {
				$r = $groupAdminObj->add(array('group_id' => $this->groupId, 'user_id' => $this->memberId, 'date' => time()));
				if ($r) {
					$this->success('成功！');
				} else {
					$this->error('失败');
				}
			}
		}
	}

	/**
	 * 取消管理员身份
	 */
	public function down() {
		if ($this->permissions > 1) {
			$groupAdminObj = M('GroupAdmin');

			$r = $groupAdminObj->where(array('group_id' => $this->groupId, 'user_id' => $this->memberId))->delete();
			if ($r) {
				$this->success('成功！');
			} else {
				$this->error('失败');
			}
		}
	}

	/**
	 * 禁止加入小组
	 */
	public function forbid() {

		if (D('GroupAdmin')->checkPermission($this->groupId, $this->memberId)) {
			$this->error('删除管理员请先取消管理员身份！');
		}
		if (D('Member')->quit($this->groupId, $this->memberId)) {
			//开始写入到禁止加入的 列表
			$r = M('GFordib')->add(array('user_id' => $this->memberId, 'group_id' => $this->groupId, 'date' => time()));
			if ($r) {
				$this->success('成功！');
			} else {
				$this->error('失败！');
			}
		}
	}

}

?>
