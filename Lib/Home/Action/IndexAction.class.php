<?php

class IndexAction extends Action {

	public function index() {

		if (USER_ID) {
			$myGroup = D('Group/MyGroup')->myGroup();
			$topicObj = D('Group/Topic');
			$temp = array();
			foreach ($myGroup as $value) {
				$topicList = $topicObj->topicList($value['group_id'], 'all', FALSE, 5);
				if ($topicList) {
					$temp = array_merge($temp, $topicList);
				}
			}
			$groupObj = D('Group');
			foreach ($temp as $key => $value) {
				$key = ($value['last_time'] - 1300000000) + $key;
				$topic[$key] = $value;
				$topic[$key]['group_name'] = $groupObj->where(array('id' => $value['group_id']))->getField('name');
			}
			unset($temp);
			ksort($topic);
			$this->assign('topic', $topic);
			$this->display();
		} else {
			redirect(U('Group/Group/explore'));
		}
	}

}