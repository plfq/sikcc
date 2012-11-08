<?php

/**
 * Description of TopInfoWidget
 *
 * @author 马
 */
class TopInfoWidget extends Widget {

	public function render($data) {
		$name=D('User')->where($data)->getField('name');
		return $name;
	}

}

?>
