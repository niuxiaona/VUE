<template>
  <div class="app-newslist">
		<!--新闻列表-->
    <ul class="mui-table-view">
			<li class="mui-table-view-cell mui-media" v-for="item of list" >
				<router-link :to="'/NewsInfo?nid='+item.id">
					<img class="mui-media-object mui-pull-left" :src="item.img_url">
					<div class="mui-media-body">
						<p style="font-size:16px;margin-bottom:10px;">{{item.title}}</p>
						<p class='mui-ellipsis'>
              <span style="color:#7AB5DD;">{{item.ctime | datatimeFilter}}</span>
              <!--2019-03-08 11:11:11 日期过滤器-->
            </p>
					</div>
				</router-link>
			</li>
    </ul>
    <!--加载更多按钮-->
    <!--1.添加按钮“加载更多” mint-ui button-->
    <button type="button" class="mui-btn mui-btn-primary mui-btn-block mui-btn-outlined" size="large" @click="loadMore">加载更多</button>
    <!--<mt-button size="large" type="primary" @click="loadMore"></mt-button>
    2.点击此按钮显示一页数据 [追加]-->
  </div>
</template>
<script>
  export default {
    data(){
      return {
        list:[], //返回新闻列表
        pno:0  //页码
      }
    },
    created(){
      this.loadMore()
    },
    methods:{
      //加载下一页的数据
      loadMore(){
        //console.log(123);
        //1.当前页数+1 pno:0
        this.pno++;
        //2.创建变量url请求地址
        var url="http://127.0.0.1:3000/news?pno="+this.pno;
        //console.log(url);
        //3.发送ajax请求
        this.axios.get(url).then(result=>{
          //4.获取服务器数据
          //console.log(result);
          //console.log(result.data.data);
          //5.将获取数据保存data list:[]
          //this.list=result.data.data;
          var rows=this.list.concat(result.data.data);
          this.list=rows;
        })
      }
    }
  }
</script>
<style>
  /*修改 新闻内容 时间 点击次数两端对齐*/
  .app-newslist .mui-ellipsis{
    display:flex;
    font-size:12px;
    color:#226aff;
    justify-content:space-between;
  }
</style>