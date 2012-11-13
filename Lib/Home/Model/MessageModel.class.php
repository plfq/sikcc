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
		$rM = M('Message_' . $NUM)->add(array('sender' => $sender, 'receiver' => $receiver, 'content' => $content, 'date' => time()));
		//写入联系人表
		$linkmanObj = M('Linkman');
		//关于联系人，暂时没有想到好的分表方案，暂时先这么写着
		$rL = $linkmanObj->where("(receiver = $receiver AND sender = $sender) OR (receiver = $sender AND sender = $receiver) ")->save(array('date' => time()));
		$rL || $rL = $linkmanObj->add(array('receiver' => $receiver, 'sender' => $sender, 'date' => time()));

		if ($rM) {
			return TRUE;
		}
		return FALSE;
	}

	/**
	 * 获取最近联系人！
	 * @todo 最近联系人，和好友的概念 要好好分析，最后取舍
	 */
	public function getLinkman($userId = FALSE) {
		$userId || $userId = USER_ID;
		$linkmanObj = M('Linkman');
		$linkman = $linkmanObj->where(array('receiver' => $userId, 'sender' => $userId, '_logic' => 'OR'))->order('date desc')->limit(10)->select();
		return $linkman;
	}

	/**
	 * 最后一条消息预览
	 * @param type $linkman 联系人Id
	 * @param type $number 获取的消息数量
	 * @param type $userId 用户的Id
	 */
	public function messagesList($linkman, $userId, $number = 1) {
		$userId || USER_ID;
		$messageObj = M('Message_' . $this->getTable($linkman, $userId));
		$messages = $messageObj->where(array('receiver' => $userId, 'sender' => $userId, '_logic' => 'OR'))->order('date desc')->limit($number)->select();
		return array_reverse($messages);
	}

	/**
	 * 处理分表问题
	 * @param type $linkman
	 * @param type $userId
	 */
	private function getTable($linkman, $userId = FALSE) {
		$userId || $userId = USER_ID;
		$NUM = substr($linkman + $userId, -1);
		return $NUM;
	}

}

?>
