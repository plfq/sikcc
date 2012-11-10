<?php

/**
 * 处理标签相关的
 *
 * @author Ma
 */
class GTagsModel extends Model {

	/**
	 * 获取小组的所有标签
	 * @param type $groupId
	 */
	public function getGroupTags($groupId, $type = "array") {
		$tags = M('GroupTags')->where(array('group_id' => $groupId))->limit('5')->select();
		$tagsObj = M('GTags');
		if ($type == 'array') {
			foreach ($tags as &$value) {
				$value['name'] = $tagsObj->where(array('id' => $value['tag_id']))->getField('name');
			}
			return $tags;
		} elseif ($type == 'string') {
			$string = '';
			foreach ($tags as $value) {
				$string .= $tagsObj->where(array('id' => $value['tag_id']))->getField('name') . ' ';
			}
			return trim($string);
		}
	}

	/**
	 * 获取某个标签下的所有小组
	 * @param type $tag
	 */
	public function getTagGroups($tag) {
		
	}

	/**
	 * 处理小组相关的标签，
	 * @param type $tags 保存标签的数组
	 * @param type $groupId 小组ID
	 * @return boolean
	 */
	public function saveTags($tags, $groupId) {
		$tags = array_splice(array_filter($tags), 0, 5);
		$ids = $this->addTags($tags);
		$r = $this->tags2group($groupId, $ids);
		return $r;
	}

	/**
	 * 返回标签的ID
	 * @param type $tags
	 * @return type
	 */
	private function addTags($tags) {
		$id = array();
		foreach ($tags as $value) {
			$r = $this->where(array('name' => $value))->getField('id');
			if ($r) {
				$id[] = $r;
			} else {
				$id[] = $this->add(array('name' => $value, 'date' => time()));
			}
		}
		return $id;
	}

	/**
	 * 把标签贴在小组上
	 * @todo 加上计数器，控制在5个
	 * @param type $group_id
	 * @param type $tags
	 */
	private function tags2group($groupId, $tags) {
		$groupTagsObj = D('GroupTags');
		//先删除所有的标签
		$return = TRUE;
		$groupTagsObj->where(array('group_id' => $groupId))->delete();
		foreach ($tags as $value) {
			if (!$value)
				continue;
			$r = $groupTagsObj->add(array('group_id' => $groupId, 'tag_id' => $value, 'date' => time()));
			$r || $return = $r;
		}
		return $return;
	}

}

?>
