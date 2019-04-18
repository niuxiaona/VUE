<template>
  <div class="app-login">
    <img src="../img/login.jpg" alt="" class="img-login">
    <form class="tt">
     <strong>用户名：</strong><input type="text" name="uname" v-model="uname" placeholder="请输入用户名"/>
      <br/>
      <strong>密码:</strong><input type="password" name="upwd" v-model="upwd" placeholder="请输入密码"/>
      <br/>
      <input type="button" value="登录" @click="btnLogin"/>
    </form>
  </div>
</template>
<script>
  //1.引入mint-ui Toast局部使用
  import {Toast} from "mint-ui";
  export default {
    data(){
      return{
        uname:"",
        upwd:""
      }
    },
    methods:{
      btnLogin(){
        //console.log(123);
        //1.获取用户输入用户名和密码
        var u=this.uname;
        var p=this.upwd;
        //console.log(u+":"+p);
        //2.创建正则表达式验证用户名和密码格式是否正确
        var reg=/^[a-z0-9_]{3,8}$/i;
        if(!reg.test(u)){
          //提示信息不是
          Toast("用户名格式不正确，请检查");
          return;
        }
        if(!reg.test(p)){
          Toast("密码格式不正确，请检查");
          return;
        }
        //3.发送ajax
        //console.log(3);
        var url="http://127.0.0.1:3000/login?uname="+u+"&upwd="+p;
        this.axios.get(url).then(result=>{
          if(result.data.code==1){
            Toast("登录成功");
          }else{
            Toast("用户名或密码有误");  
          }
        });
      }
    }
  }
</script>
<style>
  *{margin:0;padding:0;}
  .app-login{
    width:100%;
    height:576px;
    position:relative;
  }
  .img-login{
    height:100%;
    z-index:-1;
    opacity:0.3;
    position:absolute;
  }
  .tt{
    padding-top:80px;
    font-size:22px;
    font-style:initial;
    color:black;
  }
</style>