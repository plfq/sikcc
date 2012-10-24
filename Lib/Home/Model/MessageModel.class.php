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
	public function send($content, $receiver, $sender = FALSE) {
		$sender || $sender = USER_ID;
		if (!$sender || !$receiver || !$content) {
			return FALSE;
		}
		//获取第几message表；##可以分成10个
		$NUM = substr($sender + $receiver, -1);
		if ($NUM > 5) {
			$NUM = 1;
		} else {
			$NUM = 0;
		}
		$rM = M('Message_' . $NUM)->add(array('sender' => $sender, 'receiver' => $receiver, 'content' => $content, 'date' => time()));
		/** // 更新最近联系人 #暂时不使用a最近联系人，考虑下是否加好友后才可以发纸条
		  $linkmanObj = D('Linkman');
		  $rL = $linkmanObj->save(array('receiver' => $receiver, 'sender' => $sender, 'date' => time()));
		  $rL || $rL = $linkmanObj->add(array('receiver' => $receiver, 'sender' => $sender, 'date' => time()));
		 * 
		 */
		if ($rM) {
			return FALSE;
		}
		return TRUE;
	}

}

?>
