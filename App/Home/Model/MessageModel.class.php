<?php

/**
 * 消息模块
 *
 * @author Ma
 */
class MessageModel extends Model {

	/**
	 * 发送消息的入口
	 * @param type $content
	 * @param type $receiveId
	 * @param string $sendId
	 * @return boolean
	 */
	public function send($content, $receiveId, $sendId = FALSE) {
		$sendId || $sendId = USER_ID;
		if (!$sendId || !$receiveId || !$content) {
			return FALSE;
		}
		$this;
	}

}

?>
