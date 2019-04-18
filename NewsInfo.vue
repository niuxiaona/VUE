<template>
  <div class="app-newsinfo hello">
    <div class="mui-card">
	    <div class="mui-card-header mui-card-media" :style="'height:80vw;background-image:url('+info.img_url+')'"></div>
		  <div class="mui-card-content">
				<div class="mui-card-content-inner">
					<p>{{info.ctime | datatimeFilter}}</p>
					<p style="color: #333; font-size:15px;">{{info.content}}</p>
			  </div>
			</div>
			<div class="mui-card-footer">
				<a class="mui-card-link">Like</a>
				<a class="mui-card-link">Read more</a>
			</div>
		</div>
      <!--新闻评论 start-->
      <div class="mui-card">
				<div class="mui-card-header">评论区域</div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<textarea maxlength="120" placeholder="请吐槽最多120个字" v-model="msg"></textarea>
            <mt-button size="large" type="primary" @click="addComment">发表评论</mt-button>
					</div>
				</div>
				<div class="mui-card-footer"></div>
			</div>
      <!-- 新闻发表评论end  -->
      <!-- 新闻发表评论列表 start  -->
      <div class="mui-card">
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<div class="cmt-list">
              <div class="cmt-item" v-for="(item,i) of list">
                <div>第{{i+1}}楼 发表时间:{{item.ctime | datatimeFilter}}</div>
                <div>评论内容:{{item.content}}</div>
              </div>
            </div>
					</div>
				</div>
        <button type="button" class="" @click="loadMore">下一页</button>
			</div>
      <!-- 新闻发表评论列表 end  -->
    </div>
</template>
<script>
  import {Toast} from "mint-ui";
  export default {
    data(){
      return {
        nid:this.$route.query.nid,
        info:{}, //新闻详情对象
        msg:"",
        list:[], //评论内容
        pno:0,   //页码
        pageSize:5  //页大小
      }
    },
    created(){
      this.findNewsInfo();
      this.loadMore();
    },
    methods:{
      //发表评论
      loadMore(){
        //1.在data添加几个数据
        // list:[], pno:0 pageSize:5
        //2.获取pno,pageSize
        this.pno++;
        var ps=this.pageSize;
        //3.正则表达式验证 pno和pageSize是否正确
        var reg=/^[0-9]{1,}$/;
        //4.如果不正确提示
        if(!reg.test(this.pno)){
          Toast("页码格式不正确");
          return;
        }
        //console.log(this.pno+":"+ps);
        //5.创建url，发送ajax请求
        var url="http://127.0.0.1:3000/getComment?nid="+this.nid;
        url+="&pno="+this.pno;
        //6.获取返回内容
        this.axios.get(url).then(result=>{
          //console.log(result);
          //7.保存list
          this.list=result.data.data;
        })
      },
      //添加评论
      addComment(){
        //console.log(123);
        //console.log(this.msg);
        //1.评论内容双向绑定
        //2.评论按钮绑定点击事件调用addComment
        //3.获取新闻nid 获取评论内容
        var nid=this.nid;
        var con=this.msg;
        //console.log(nid+":"+con);
        //4.去除评论两端空格判断评论内容长度
        var size=con.trim().length;
        //5.如果评论为空提示判断
        if(size==0){
          Toast("评论内容不能为空！");
          return
        }
        //6.创建postData保存新闻nid评论内容
        var postData=this.qs.stringify({
          nid:nid,
          content:con
        });
        //console.log(postData);
        //7.发送post请求/addcomment
        var url="http://127.0.0.1:3000/addComment";
        this.axios.post(url,postData).then(result=>{
          //8.获取返回结果
          Toast("添加成功");
          //9.评论成功或者失败消息
          //10.清空原有评论的内容
          this.msg="";
          //11.加载评论列表
          this.pno=0; //清空页码
          this.list=[]; //清空原有数据
          this.loadMore(); //第一页
        })
      },
      //查询新闻详细信息
      findNewsInfo(){
        //1.获取新闻编号
        var id=this.nid;
        //2.创建url保存请求地址
        var url="http://127.0.0.1:3000/newsInfo?nid="+id;
        //3.发送ajax请求
        this.axios.get(url).then(result=>{
          //4.获取服务器返回数据保存 info
          //console.log(result.data.data[0]);
          this.info=result.data.data[0];
          //console.log(this.info);
        })     
      }
    }
  }
</script>
<style>

</style>
