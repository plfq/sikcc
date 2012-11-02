<?php

/**
 * 帖子的回复的处理
 *
 * @author 马
 */
class RetopicModel extends Model {

	/**
	 * 新增回复
	 * @param type $content 回复内容
	 * @param type $topicId 所回复的帖子Id
	 * @param type $brother 是否有兄弟
	 * @param type $userId 用户Id
	 */
	public function newRetopic($content, $topicId, $brother = FALSE, $userId = FALSE) {
		$userId || $userId = USER_ID;
		if (!$userId)
			return FALSE;
		$data['content'] = $content;
		$data['topic_id'] = $topicId;
		$data['user_id'] = $userId;
		$data['brother'] = $brother ? $brother : 0;
		$data['date'] = time();
		$r = M('Retopic_' . substr($topicId, -1))->add($data);
		if (!$r)
			return FALSE;
		//添加一个回复总数统计
		if ($topicId < 1000000) {//1百万
			$NUM = 0;
		} else {
			$NUM = substr($topicId, 0, 1);
		}
		$rR = M('Topic_' . $NUM)->setInc('retopic');
		return $r;
	}

	/**
	 * 获取回复列表
	 * @param type $topicId 帖子Id
	 * @param type $isPage 是否分页
	 * @param type $num 获取的数量（分页不分页都可）
	 */
	public function retopicList($topicId, $isPage = TRUE, $number = 25) {
		$page = $_REQUEST['page'];
		if (!$page || !$isPage) {
			$page = 1;
		}
		$NUM = substr($topicId, -1);
		$retopicObj = M('Retopic_' . $NUM);
		$list = $retopicObj->page($page, $number)->where(array('topic_id' => $topicId))->select();
		//寻找兄弟回复
		foreach ($list as &$value) {
			if ($value['brother']) {
				$value['brother'] = $retopicObj->where(array('id' => $value['brother']))->find();
			}
		}
		//开始分页
		if ($isPage) {
			import("ORG.Page");
			$pageObj = new Page($topicObj->where($where)->count(), $page, $num);
			$pageObj->show();
		}
		return $list;
	}

}

?>
