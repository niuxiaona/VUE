<template>
  <div>
    <div class="mui-content">
			<div class="mui-content-padded">
				<div class="mui-inline"><h4>问题和意见</h4></div>
			</div>
			<div class="row mui-input-row">
				<textarea id='question' class="mui-input-clear question" placeholder="请详细描述你的问题和意见..."></textarea>
			</div>
			<p style="font-size:20px;">图片(选填,提供问题截图,总大小10M以下)</p>
      <input type="file">
			<div class="mui-input-row" style="margin-top:20px;">
        <p style="font-size:20px;">QQ/邮箱</p>
				<input id='contact' type="text" class="mui-input-clear contact" placeholder="(选填,方便我们联系你 )" />
			</div>
			<!-- <div class="mui-content-padded">
				<div class="mui-inline">应用评分</div>
				<div class="icons mui-inline" style="margin-left: 6px;">
					<i data-index="1" class="mui-icon mui-icon-star"></i>
					<i data-index="2" class="mui-icon mui-icon-star"></i>
					<i data-index="3" class="mui-icon mui-icon-star"></i>
					<i data-index="4" class="mui-icon mui-icon-star"></i>
					<i data-index="5" class="mui-icon mui-icon-star"></i>
				</div>
			</div><br /> -->
      <button class="biti" @click="biti">提交</button>
		</div>
  </div>
</template>
<script>
  import {Toast} from "mint-ui"; 
  export default {
    data(){
      return {}
    },
    methods:{
      biti(){
        Toast("我们会根据您提的建议改进的!!");
      }
    }
  }
</script>
<style>
  .biti{
    display:block;
    width:193px;
    height:40px;
    margin-top:22px;
    background:#81d8d0;
    color:white;
  }
</style>
