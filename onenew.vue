<template>
  <div class="zhuti">
		<div class="title">
			<router-link class="title-item active" to="/onenew">推荐</router-link>
			<router-link class="title-item" to="/twonew">漫花森绿</router-link>
			<router-link class="title-item" to="/threenew">独家记忆</router-link>
			<router-link class="title-item" to="/fournew">Classic新娘</router-link>
		</div>
		<div id="ee" v-for="item of info">
			<img :src="item.img_url" alt="">
			<p style="margin:0 !important;color:white;">{{item.title}}</p>
			<p style="margin:0 !important;color:white;">{{item.smalltitlle}}</p>
		</div>
		<div>
			<span class="mui-spinner"></span>
			<p style="color:black !important;margin-top:-25px !important;margin-left:130px !important;">没有更多数据了!</p>
		</div>
	</div>
</template>
<script>
  export default {
    data(){
      return {
        info:{},
        msg:"",
				list:[]
      }
    },
    created(){
      //当组件创建成功后立即调用加载下一页方法
			this.xianshi();
    },
    methods:{
			xianshi(){
				var url="http://127.0.0.1:3000/onenew";
				this.axios.get(url).then(result=>{
					this.info=result.data.data;
				})
			},
    }
  }
</script>
<style>
	*{margin:0;padding:0;}
	.zhuti{
		width:100%;
		height:100%;
		display:flex;  
    flex-wrap:wrap;  
    justify-content:space-between;
    padding:4px;
		text-align:center;
	}
  .title-item{
		color:#ff5722 !important;
		padding:0 10px;
		margin:10px 0;
	}
	.title-item.active{
		display:inline-block;
		width:74px;
		height:31px;
		line-height:31px;
		text-align:center;
		background-color:#52d0d1 !important;
		border-radius:20px;
		color:white !important;
		
	}
	.mui-slider-group{
		display:flex;  
    flex-wrap:wrap;  
    justify-content:space-between;
    padding:4px;
		border:1px solid red;
		margin-top:25px;
	}
	#ee{
		display:flex; 
		width:48%; 
		justify-content:space-between;
    flex-direction:column; 
    margin-bottom:10px;
		min-height:245px;
    border:1px solid #c7c6c6;
		background:#81d8d0;
	}
	#ee img{width:100%;}
</style>
