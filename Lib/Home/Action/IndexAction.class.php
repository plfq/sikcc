<?php

class IndexAction extends Action {

	/**
	 * @todo 把时间给限制了，把时间限制在这两天时间里面的尽量减少获取的数据两
	 * 或者是把所有的动态统一采集到一张数据表中去，每5分钟更新下这张表，重新采集所有动态
	 */
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