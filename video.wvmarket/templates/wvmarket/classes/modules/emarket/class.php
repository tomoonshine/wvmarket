<?php
    class emarket_custom extends def_module {
		
		
		// Функция добавляет 1 балл в рейтинг страницы и записывает ip адресс 

		function saveOrder_mod($order_id="0", $data='0') {
			
			$order = $this->getBasketOrder(false);
			$order->setValue('tekst_video', getRequest('text'));
			$this->saveInfo();
		}
		
		function saveParam_mod() {
			
			
			$order = $this->getBasketOrder(false);
			
			$order->setValue('vidimost_v_kadre', getRequest('frame1'));
			$order->setValue('razmer_video', getRequest('frame2'));
			$order->setValue('stil_video', getRequest('wardrobe'));
			$order->setValue('osobyj_stil', getRequest('wardrobeOther'));
			$order->setValue('tekst_video', getRequest('script'));

			return;
			// echo getRequest('frame1') . "<br/>";
			// echo getRequest('frame2') . "<br/>";
			// echo getRequest('script') . "<br/>";
			// echo getRequest('wardrobe'). "<br/>";
		}

    };
?>