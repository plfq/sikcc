<?php

/**
 * 获取列表
 *
 * @author 马
 */
class GetListAction extends Action {

	private $ssid = 0;
	private $userId = 0;
	private $folder = array(
		'today' => 1,
		'tomorrow' => 2,
		'week' => 3,
		'later' => 4,
		'note' => 5
	);

	public function __construct() {
		$this->ssid = $this->_param('ssid');
		$this->userId = M('User')->where(array('ssid' => $this->ssid))->getField('id');
		$this->userId || $this->ajaxReturn(array('status' => 0, 'info' => '用户不存在！'));
	}

	/**
	 * 按照时间获取列表<br>
	 * all=>所有的<br>
	 * today=>今天的列表<br>
	 * tomorrow=>明天的列表<br>
	 * week=>本周的列表<br>
	 * later=>以后的列表<br>
	 * note=>备忘录的列表<br>
	 */
	public function getList($loading=FALSE) {
		$folder = trim(strtolower($this->_param('folder')));
		$folder || $folder = 'all';
		if ($this->folder[$folder]) {
			$where['folder'] = $this->folder[$folder];
		}
		$where['user_id'] = $this->userId;
		$where['finish'] = FALSE;
		if ($where['folder']) {
			$list = M('Todo')->where($where)->select();
		} else {
			$todoObj = M('Todo');
			$list = array();
			foreach ($this->folder as $key => $value) {
				$where['folder'] = $value;
				$list[$key] = $todoObj->where($where)->order('sid')->select();
			}
			//返回已经完成的
			unset($where['folder']);
			$where['finish'] = TRUE;
			
			$list['finish'] = $todoObj->where($where)->limit(0, 20)->order('finish_date desc')->select();
		}
		if($loading){
			return $list;
		}
		$this->ajaxReturn($list);
	}

	/**
	 * 按照标签获取列表
	 */
	public function getListByTag() {
		
	}

}

?>
