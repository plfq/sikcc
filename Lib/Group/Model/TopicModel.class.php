<?php

/**
 * 帖子相关
 *
 * @author 马
 */
class TopicModel extends Model {

	/**
	 * 发帖，
	 * @param type $title 标题
	 * @param type $content 内容
	 * @param type $groupId 小组Id
	 * @param type $userId 用户Id
	 * @param type $typeId 帖子类型的Id
	 * @return boolean或者topicId
	 */
	public function newTopic($title, $content, $groupId, $userId = FALSE, $typeId = 0) {
		$userId || $userId = USER_ID;
		if (!$groupId || !$userId) {
			return FALSE;
		}
		$data['title'] = $title;
		$data['group_id'] = $groupId;
		$data['user_id'] = $userId;
		$data['type_id'] = $typeId;
		$data['creat_time'] = time();
		$data['edit_time'] = $data['creat_time'];
		$data['last_time'] = $data['creat_time'];
		$NUM = substr($groupId, -1);
		$topicId = M('Topic_' . $NUM)->add($data);
		if (!$topicId) {
			return FALSE;
		}
		if (C('search')) {
			//这个是分词。为了搜索引擎
//		$title = D();
//		$conten = D();
		}
		$rc = M('TopicContent_' . $NUM)->add(array('topic_id' => $topicId, 'content' => $content));
		if (!$rc) {
			return FALSE;
		}
		return $topicId;
	}

	/**
	 * @param type $groupId 小组Id
	 * @param type $typeId 帖子类型的Id
	 * @param bool $isPage 是否分页
	 * @return array
	 */
	public function topicList($groupId, $typeId = 'All', $isPage = FALSE, $num = 10) {
		$page = $_REQUEST['page'];
		if (!$page || !$isPage) {
			$page = 1;
		}
		$NUM = substr($groupId, -1);
		$where = array('group_id' => $groupId);
		if (strtolower($typeId) == 'all') {
			;
		} else {
			$where['type_id'] = $typeId;
		}
		$topicObj = M('Topic_' . $NUM);
		$list = $topicObj->page($page, $num)->where($where)->select();
		if ($isPage) {
			import("ORG.Page");
			$pageObj = new Page($topicObj->where($where)->count(), $page, $num);
			$pageObj->show();
		}
		return $list;
	}

	/**
	 * 查看某个帖子的详情
	 * 根据帖子的Id进行不同的分表读取github WIKI上有分表思路
	 * @param type $topicId
	 * @return array
	 */
	public function topic($topicId) {
		if ($topicId < 1000000) {//1百万
			$NUM = 0;
		} else {
			$NUM = substr($topicId, 0, 1);
		}
		$topicObj = M('Topic_' . $NUM);
		$topic = $topicObj->where(array('id' => $topicId))->find();
		if (!$topic)
			return FALSE;
		$topic['content'] = M('TopicContent_' . $NUM)->where(array('group_id' => $topicId))->getField('content');
		//添加一次阅读
		$r = $topicObj->setInc('read');
		return $topic;
	}

}

?>
