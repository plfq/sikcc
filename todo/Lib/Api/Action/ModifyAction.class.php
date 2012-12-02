<?php

/**
 * 修改
 *
 * @author 马
 */
class ModifyAction extends Action {

	private $ssid = 0;
	private $userId = 0;
	private $key = false;
	private $value = false;
	private $id = false;

	public function __construct() {
		$this->ssid = $this->_param('ssid');
		$this->userId = M('User')->where(array('ssid' => $this->ssid))->getField('id');
		$this->userId || $this->ajaxReturn(array('status' => 0, 'info' => '用户不存在！'));
		if (trim($this->_param('key'))) {
			$this->key = trim($this->_param('key'));
		}

		if (trim($this->_param('value'))) {
			$this->key = trim($this->_param('value'));
		}

		if (trim($this->_param('todoId'))) {
			$this->key = trim($this->_param('todoId'));
		}
	}

	/**
	 * 修改某一项
	 */
	public function one() {
		if (!$this->id && !$this->key && !$this->value) {
			$r = M('Todo')->where(array('id' => $this->id))->save(array($this->key => $this->value));
			$this->ajaxReturn(array('status' => $r));
		}
	}

	/**
	 * 新增加一个@ todo
	 */
	public function add() {
		$folderBox = array(
			'today' => 1,
			'tomorrow' => 2,
			'week' => 3,
			'later' => 4,
			'note' => 5,
		);
		$content = trim($this->_param('content'));
		$folder = $folderBox[$this->_param('folder')];
		$folder || $folder = 1;
		if ($content) {
			$r = M('Todo')->add(array('user_id' => $this->userId, 'content' => $content, 'folder' => $folder));
			$this->ajaxReturn(array('status' => (int) $r, 'id' => (int) $r));
		}
	}

	/**
	 * 修改标签
	 * @todo 增加安全验证
	 */
	public function modifyTag() {
		$tagsObj = M("Tags");
		foreach ($_GET["tags"] as $value) {
			$r = $tagsObj->where(array('id' => $value['id'], 'user_id' => $this->userId))->save(array($value['key'] => $value["value"]));
			if ($r) {
				continue;
			} else {
				break;
			}
		}
		$this->ajaxReturn(array('status' => $value));
	}

}

?>
