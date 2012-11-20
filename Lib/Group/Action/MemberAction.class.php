<?php

/**
 * 小组成员相关操作
 *
 * @author Ma
 */
class MemberAction extends Action {

	protected $userId = FALSE;
	protected $groupId = FALSE;

	public function __construct() {
		USER_ID || $this->error('请登录！');
		$this->groupId = $this->_param('group');
		$this->groupId || $this->groupId = $this->_param('3');
		$this->groupId || $this->groupId = $this->_param('2');
		$this->groupId || $this->error('参数错误！');
		$this->userId = USER_ID;
	}

	/**
	 * 用户加入小组
	 */
	public function join() {
		$groupId = $this->groupId;
		$r = D('Member')->addMember($groupId, $this->userId);
		if ($r) {
			if ($r === 1) {
				$this->success('已经申请！等待批准！');
			} else {
				$this->success('好了！');
			}
		} else {
			$this->error('没有加进来！');
		}
	}

	/**
	 * 退出小组
	 */
	public function quit() {
		$userId = $this->userId;
		$r = D('Member')->quit($this->groupId, $userId);
		if ($r) {
			$this->success('已经退出！');
		} else {
			$this->error('失败！');
		}
	}

	/**
	 * 取消申请
	 */
	public function cancel() {
		$userId = $this->userId;
		$r = D('Member')->cancel($this->groupId, $userId);
		if ($r) {
			$this->success('已经取消！');
		} else {
			$this->error('失败！');
		}
	}

}

?>
