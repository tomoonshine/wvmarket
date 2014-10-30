<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet SYSTEM	"ulang://i18n/constants.dtd:file"
	[
		<!ENTITY nbsp "&#160;">
	]
>

<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:umi="http://www.umi-cms.ru/TR/umi">

	<xsl:template match="/result[@module = 'catalog' and @method = 'object'][parents/page/@id = '195']">
	<!-- ШАГ 1 -->
	<div class="steps" id="step1">
        <div class="top"></div>
		<div class="middle">
          <div class="bottom"></div>
          <div class="wrap">
            <div class="content framing">
              <div id="step" class="orange">Шаг 1 из 7</div>
              <div id="total" name="totalCost">Сумма услуги: 0.00 </div>
              <div class="choose-framing-bg"></div>
              <div id="choose-framing">
                Видимость
                <span class="orange">в кадре</span>
              </div>
              <div class="options-framing-bg"></div>
          
			    <div id="options-framing">		
					<input type="radio" name="framing"  checked="checked" descr="Полностью">
					<xsl:attribute name="value">
						<xsl:value-of select="//property[@name='polnostyu']/value" />
					</xsl:attribute>
					</input>
					<label> полностью</label>
					<div class="img_block hidden">
						<div class="center">
							<img id="half_shot">
							<xsl:attribute name="src">
								<xsl:value-of select="//property[@name='polnostyu']/value" />
							</xsl:attribute>
							</img>
						</div>
					</div>
					<br/>
					
					<input type="radio" name="framing"  descr="3/4 от роста">
					<xsl:attribute name="value">
						<xsl:value-of select="//property[@name='34_ot_rosta']/value" />
					</xsl:attribute>					
					</input>
					<label > 3/4 от роста</label>
					<div class="img_block hidden">
						<div class="center">
							<img id="half_shot">
							<xsl:attribute name="src">
								<xsl:value-of select="//property[@name='34_ot_rosta']/value" />
							</xsl:attribute>
							</img>
						</div>
					</div>
						
					<br/>
					
					<input type="radio" name="framing" descr="Половина">
					<xsl:attribute name="value">
						<xsl:value-of select="//property[@name='polovina']/value" />
					</xsl:attribute>					
					</input>
					<label > половина</label>
					<div class="img_block hidden">
						<div class="center">
							<img id="half_shot">
							<xsl:attribute name="src">
								<xsl:value-of select="//property[@name='polovina']/value" />
							</xsl:attribute>
							</img>
						</div>
					</div>
					<br/>
					<input type="radio" name="framing" descr="Только голова">
					<xsl:attribute name="value">
						<xsl:value-of select="//property[@name='tolko_golova']/value" />
					</xsl:attribute>					
					</input>
					<label > только голова</label>
				    <div class="img_block hidden">
						<div class="center">
							<img id="half_shot">
							<xsl:attribute name="src">
								<xsl:value-of select="//property[@name='tolko_golova']/value" />
							</xsl:attribute>
							</img>
						</div>
					</div>
					<br/>
				  </div>
					<div class="continue" onClick="step1()">&nbsp;Продолжить&nbsp;</div>
<!-- 				<div class="continue" onClick="waitContext()">&nbsp;Продолжить&nbsp;</div> -->
            </div>
          </div>
        </div>
    </div>
	
	<!-- ШАГ 2 -->
	<div class="steps" id="step2" >
        <div class="top"></div>
		<div class="middle">
          <div class="bottom"></div>
          <div class="wrap">
            <div class="content framing">
              <div id="step" class="orange">Шаг 2 из 7</div>
              <div id="total"  name="totalCost">Сумма услуги: 0.00</div>
              <div class="choose-framing-bg"></div>
              <div id="choose-framing">
                Выберите
                <span class="orange">размер</span>
              </div>
              <div class="options-framing-bg"></div>
              
				<div id="options-framing">	
					<input type="radio" value="full_shot" name="framing2" descr="Маленький"/>
					<label > маленький</label>
					<div class="img_block hidden">
						<div class="center">
							<div id="img1"></div>
						</div>
					</div>
					<br/>
					
					<input type="radio" value="threeq_shot" name="framing2" descr="Средний" />	
					<label > средний</label>
						<div class="img_block hidden">
							<div class="center">
								<div id="img2"></div>
							</div>
						</div>
						
					<br/>
					
					<input type="radio" value="half_shot" name="framing2" descr="Большой" checked="checked"/>
					<label > большой</label>
						<div class="img_block hidden">
							<div class="center">
								<div id="img3"></div>
							</div>
						</div>
					<br/>
					<input type="radio" value="head_shot" name="framing2" descr="Наибольший" />
					<label > наибольший</label>
				    <div class="img_block hidden">
						<div class="center">
							<div id="img4"></div>
						</div>
					</div>
					<br/>
					

					 </div>
                <!-- <input type="submit" class="continue" value="&nbsp;Продолжить&nbsp;"/>             -->
				
			 
			  <div class="back" onClick="backToStep('step1','step2')">&nbsp;Вернуться&nbsp;</div>
			  <div class="continue" onClick="step2()">&nbsp;Продолжить&nbsp;</div>
            </div>
          </div>
        </div>
    </div>
	
	<!-- ШАГ 3 -->
	<div class="steps" id="step3">
        <div class="top"></div>
		<div class="middle">
			<div class="bottom"></div>
			<div class="wrap">
				<div class="content framing">
					  <div id="step" class="orange">Шаг 3 из 7</div>
					  <div id="total"  name="totalCost">Сумма услуги: 0.00</div>
					  <div class="choose-framing-bg"></div>
					  <div id="choose-framing">
						Выберите длинну
						<span class="orange">ролика</span>
					  </div>
				
				<div id="options-length-bg-l"></div>
				<xsl:apply-templates select="document('udata://catalog/getObjectsList/0/239/10/0')" mode="OPTIONS-LENGTH-L"/>
				<div id="options-length-bg"></div>
				<xsl:apply-templates select="document('udata://catalog/getObjectsList/0/240/10/0')" mode="OPTIONS-LENGTH"/>

			  <div class="back" onClick="backToStep('step2','step3')">&nbsp;Вернуться&nbsp;</div>
			  <div class="continue" onClick="step3()">&nbsp;Продолжить&nbsp;</div>
				
            </div>
          </div>
        </div>
    </div>
	
	

	<!-- ШАГ 4 -->
	<script>
		function changeHeight(elm,h) {
			document.getElementById(elm).style.height = h+'px';
		}


	</script>
	<div class="steps" id="step4">
        <div class="top"></div>
		<div class="middle">
          <div class="bottom"></div>
          <div class="wrap">
            <div id="framing1" class="content framing1" >
              <div id="step" class="orange">Шаг 4 из 7</div>
              <div id="total"  name="totalCost">Сумма услуги: 0.00</div>
              <div class="choose-framing-bg"></div>
              <div id="choose-framing">
                Задайте текст
                <span class="orange">видео</span>
              </div>
					<div id="options-script-bg"></div>
					<div id="options-script">
						<xsl:variable name="price"><xsl:value-of select="document('upage://259.price')//value" disable-output-escaping="yes" /></xsl:variable>
						<input type="radio" value="258" name="script" id="script_own" checked="checked" onchange="changeHeight('framing1',600)" onFocus="changeScript('0')" cost="0" />
						<label for="script_own" class="hover" >&nbsp;Добавте свой текст в окно справа. Каждые 90 слов в воспроизведении занимают около 30 секунд. </label>
						<span class="orange bigger" style="margin:0 0 5px 0">&nbsp;или</span><br/>
						<input type="radio" value="259" name="script" id="script_pro" onchange="changeHeight('framing1',750)" onFocus="changeScript({$price})" cost="{$price}" />
						<label for="script_pro" class="hover" >&nbsp;Поручите професионалам составить сценарий за <xsl:value-of select="$price" /> руб.</label>
						
						<div id="own" >
							<p>
								<span id="your_script">Ваш текст</span>
								<span id="word_count" style="color: rgb(255, 255, 255);"></span>
								<textarea name="script_content" id="script_content"></textarea>
							</p>
						</div>
						<div id="pro">
								Какое название у вашей компании и веб-сайта?
								<br/>
								<textarea name="script_q1" id="script_q1"></textarea>
								Каков род занятий?
								<br/>
								<textarea name="script_q2" id="script_q2"></textarea>
								На какую аудиторию нацелен Ваш бизнес
								<br/>
								(возвраст, пол, увлечения и т.д.)
								<br/>
								<textarea name="script_q3" id="script_q3"></textarea>
								Есть ли у Вас лозунг компании, что Вы хотите в сценарии?
								<br/>
								<textarea name="script_q4" id="script_q4"></textarea>
								Хотите ли Вы включить в текст какие нибудь спецефичные для вашей отрасли слова?
								<br/>
								<textarea name="script_q5" id="script_q5"></textarea>
								Имеется ли дополнительная информация, которую Вы хотите указать, чтобы помочь нашим сценаристам?
								<br/>
								<textarea name="script_q6" id="script_q6"></textarea>
						</div>				
					</div>

					<div id="wardrobe">
						<h4>Стиль</h4>
						<div class="field">
							<input type="radio" value="Деловой" name="wardrobe" id="wardrobe_bf" checked="checked"/>
							<label for="wardrobe_bf">&nbsp;Деловой</label>
						</div>
						<div class="field">
							<input type="radio" value="Повседневный" name="wardrobe" id="wardrobe_c"/>
							<label for="wardrobe_c">&nbsp;Повседневный</label>
						</div>
						<div class="field">
							<input type="radio" value="Спортивный" name="wardrobe" id="wardrobe_bc"/>
							<label for="wardrobe_bc" >&nbsp;Спортивный</label>
						</div>
						<div class="field">
							<input type="radio" value="Особый" name="wardrobe" id="wardrobe_o"/>
							<label for="wardrobe_o">&nbsp;Особый&nbsp;</label>
							<input type="text" value="" name="wardrobe_other" id="wardrobe_other"/>
						</div>
					</div>
			  <div class="back" onClick="backToStep('step3','step4')">&nbsp;Вернуться&nbsp;</div>
			  <div class="continue" onClick="step4()">&nbsp;Продолжить&nbsp;</div>
            </div>
          </div>
        </div>
    </div>
	<script>
		<![CDATA[
		if (document.getElementById('script_own').checked){
			document.getElementById("framing1").style.height = "600px";
		}
		else {
			document.getElementById("framing1").style.height = "750px";
		}
		]]>
	</script>
	
	<!-- ШАГ 5 -->
	<div class="steps" id="step5">
        <div class="top"></div>
		<div class="middle">
			<div class="bottom"></div>
			<div class="wrap">
				<div class="content framing">
					  <div id="step" class="orange">Шаг 5 из 7</div>
					  <div id="total"  name="totalCost">Сумма услуги: 0.00</div>
					  <div class="choose-framing-bg"></div>
					  <div id="choose-framing">
						Заполните данные 
						<span class="orange">о Вас</span>
					  </div>
						<form id = "formstep5" method="POST" action="/emarket/saveInfo">
							<!-- <xsl:apply-templates select="document('udata://emarket/purchasing_one_step')/udata" mode="STEP5" /> -->
							
						</form>
					<div class="back" onClick="backToStep('step4','step5')">&nbsp;Вернуться&nbsp;</div>
					<!-- <div class="continue" onClick="step5()">&nbsp;Продолжить&nbsp;</div> -->
					
            </div>
          </div>
        </div>
    </div>
	

	
<!-- 	  <div class="step" id="step1">
			<br/>
			шаг 1 стоимость:
			<br/>
			<h4>Консультант</h4>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="//property[@name='novoe_pole']/value" />
			</xsl:attribute>
			</img>
			<div class="order_consultant">
				<div class="button big" onClick="nextStep('step1','step2')">Продолжить</div>
			</div>

		</div> -->

			
		<script type="text/javascript">
			init(<xsl:value-of select="$document-page-id" />);
		</script>	
		
		<!-- <xsl:apply-templates select="document('udata://catalog/getObjectsList/notemplate/231/10/0')" mode="consultant" />  -->
	</xsl:template>
	

<!-- Оформление шага 5 -->
	<xsl:template match="udata[@module = 'emarket'][@method = 'purchasing_one_step']"  mode="STEP5" >
		
		<!-- <form class="without-steps" action="/emarket/saveInfo" method="POST"> -->
		<form id = "formstep5" method="POST" action="/emarket/saveInfo">

			<xsl:apply-templates select="onestep/customer" mode="STEP5"/>
			<xsl:apply-templates select="onestep/payment" mode="STEP5"/>

			<input type="submit" value="&continue;" class="continue" />
		</form>
		
		
	</xsl:template>
	
	<xsl:template match="customer" mode="STEP5">
		<div class="customer onestep">
			<xsl:apply-templates select="document(concat('udata://data/getEditForm/', @id))"/>
		</div>
	</xsl:template>
	
	<xsl:template match="payment" mode="STEP5"/>
	<xsl:template match="payment[items/item]" mode="STEP5">
		<div  class="payment onestep">
			<h4>&payment-type;</h4>
			<xsl:apply-templates select="items/item" mode="payment_one_step" />
		</div>
	</xsl:template>
	
	
<!-- 	<xsl:template match="group" mode="form" mode="STEP5">
		<h4>
			<xsl:value-of select="@title" />
		</h4>
		<xsl:apply-templates select="field" mode="form" mode="STEP5"/>
	</xsl:template>


	<xsl:template match="field" mode="form" mode="STEP5">
		<div>
			<label title="{@tip}">
				<xsl:apply-templates select="@required" mode="form" mode="STEP5"/>
				<span>
					<xsl:value-of select="concat(@title, ':')" />
				</span>
				<input type="text" name="{@input_name}" value="{.}" class="textinputs" />
			</label>
		</div>
	</xsl:template> -->
	
	
	
	
	
	

<!-- Шаг 2 -->
	<xsl:template match="udata[@module = 'catalog' and @method = 'getObjectsList']" mode="consultant" >
<!-- 		<div class="step" id="step2">
			<br/>
			шаг 2 стоимость:
			<br/>
			<h4>Выберите время ролика</h4>
	
				<xsl:apply-templates select="lines/item" mode="consultant" />
	
			<div>
				<div class="order_consultant">
					<div class="button big" onClick="nextStep('step2','step1')">Вернуться</div>				
					<div class="button big" onClick="lastStep({$document-page-id});nextStep('step2','step3')">Продолжить</div>
				</div>
			</div>
		</div>
		
		<form method="POST" action="/emarket/saveOrder_mod" class="without-steps">
			<div class="step" id="step3">
				<br/>
				шаг 3 стоимость:
				<br/>
				<h4>Задайте текст видео</h4>
				<textarea name="text" rows="10" cols="45"></textarea>
				<div class="order_consultant">
					<div class="button big" onClick="nextStep('step3','step2')">Вернуться</div>
					<div class="button big" onClick="nextStep('step3','step4')">Продолжить</div>				
				</div>
			</div>
			
			<div class="step" id="step4">
				<br/>
				шаг 4 стоимость:
				<br/>
				
					<div class="payment onestep" style="" id="playment">
					</div>
					<div class="order_consultant">
						<div class="button big" onClick="nextStep('step3','step2')">Вернуться</div>				
						<input type="submit" class="button big" value="Продолжить"/>	
					</div>
				<div id="playment">
				</div>
			</div>
		</form> -->
		
	</xsl:template>
	
	<xsl:template match="item" mode="consultant" >
		<input type="radio" name="time" value="{@id}">
			<xsl:if test="position() = 1">
				<xsl:attribute name="checked">
					<xsl:text>checked</xsl:text>
				</xsl:attribute>
			</xsl:if>
		</input>
		&nbsp;<xsl:value-of select="." />
		<br/>
	</xsl:template>

	<xsl:template match="udata[@module='catalog'][@method='getObjectsList']" mode="OPTIONS-LENGTH-L">
		<div id="options-length-l">
			<div style="margin:0 0 5px 0">В секундах</div>
			<xsl:apply-templates select="lines/item" mode="OPTIONS-LENGTH-L"/>
			<div id="monthly-fee">
				Ежемесячная плата.
				<br/>
				4 месяца минимум.
			</div>
		</div>
	</xsl:template>

	<xsl:template match="item" mode="OPTIONS-LENGTH-L" >
		<xsl:variable name="price"><xsl:value-of select="document(concat('upage://', @id, '.price'))//value" disable-output-escaping="yes" /></xsl:variable>
		<div class="options_length">
			<input id="length_15" cost="{$price}" name="length" value="{@id}" type="radio" onFocus="changeLength({$price})">
				<xsl:if test="position() = 1">
					<xsl:attribute name="checked">
						<xsl:text>checked</xsl:text>
					</xsl:attribute>
				</xsl:if>
			</input>
			<label class="hover" >&nbsp;<xsl:value-of select="."/>&nbsp;<span style="float:right"><xsl:value-of select="$price" /> руб.</span></label>
		</div>
	</xsl:template>
	
	<xsl:template match="item" mode="OPTIONS-LENGTH" >
		<xsl:variable name="price"><xsl:value-of select="document(concat('upage://', @id, '.price'))//value" disable-output-escaping="yes" /></xsl:variable>
		<div class="options_length">
			<input id="length_15" cost="{$price}" name="length" value="{@id}" type="radio" onFocus="changeLength({$price})"/>
			<label class="hover" >&nbsp;<xsl:value-of select="."/>&nbsp;<span style="float:right"><xsl:value-of select="$price" /> руб.</span></label>
		</div>
	</xsl:template>

	
	<xsl:template match="udata[@module='catalog'][@method='getObjectsList']" mode="OPTIONS-LENGTH">
		<div id="options-length">
			<div style="margin:0 0 5px 0">В секундах</div>
			<xsl:apply-templates select="lines/item" mode="OPTIONS-LENGTH"/>
			<div id="monthly-fee">
				Ежегодная плата.
				<br/>
				1 год минимум.
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>