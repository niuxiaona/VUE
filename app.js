//app_server-00/app.js
//0.下载mysql express模块
//1.引入二个模块 mysql express
const mysql=require("mysql");
const express=require("express");

//1.1引入模块cors
const cors=require("cors");
//2.创建连接池,很大提高效率
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"lema"
});
//3.创建express对象
var server=express();
//3.1配置允许访问列,脚手架8080
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true
}));
//3.11加载模块 express-session
//并且对其配置，顺序问题
// const session=require("express-session");
// server.use(session({
//   secret:"128位随机字符串",
//   resave:false,
//   saveUninitialized:true,
//   cookie:{
//     maxAge:1000*60*60 
//   }
// }))
//3.12:配置模块
//3.2配置静态资源目录 public
server.use(express.static("public"));
//3.3配置第三方中间件
const bodyParse=require("body-parser");
//3.4配置json是否是自动转换
server.use(bodyParse.urlencoded({extended:false}))
//4.为express对象绑定监听端口 3000
server.listen(3000);

//功能一：用户登录
//1.用户get请求路径/login
server.get("/login",(req,res)=>{
  //2.获取两个参数 uname upwd
  var u=req.query.uname;
  var p=req.query.upwd;
  //res.send("用户名："+u+"密码："+p);
  //3.创建sql
  var sql="SELECT id FROM lema_login WHERE uname=? AND upwd=md5(?)";
  //4.执行sql
  pool.query(sql,[u,p],(err,result)=>{
    if(err) throw err;
    //5.获取数据库返回结果
    //res.send(result);
    //6.返回客户数据
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码有误"});
    }else{
      res.send({code:1,msg:"登录成功"});
    }
  })
})
//启动app.js
//测试 http://127.0.0.1:3000/login?uname=tom&upwd=121

//功能二:图片轮播
server.get("/imglist",(req,res)=>{
  var rows=[
    {id:1,img_url:"http://127.0.0.1:3000/img/banner1.jpg"},
    {id:2,img_url:"http://127.0.0.1:3000/img/banner2.jpg"},
    {id:3,img_url:"http://127.0.0.1:3000/img/banner3.jpg"},
    {id:4,img_url:"http://127.0.0.1:3000/img/banner4.jpg"}
  ];
  res.send({code:1,data:rows});
});

//功能三：首页九宫格
server.get("/grid",(req,res)=>{
  var rows=[
    {id:1,title:"风格展示",img_url:"http://127.0.0.1:3000/img/menu3.png"},
    {id:2,title:"商品",img_url:"http://127.0.0.1:3000/img/menu2.png"},
    {id:3,title:"最新客照",img_url:"http://127.0.0.1:3000/img/menu1.png"},
    {id:4,title:"位置",img_url:"http://127.0.0.1:3000/img/menu4.png"},
    {id:5,title:"搜索",img_url:"http://127.0.0.1:3000/img/menu5.png"},
    {id:6,title:"新闻",img_url:"http://127.0.0.1:3000/img/menu6.png"}
  ];
  res.send(rows);
});

//功能四：新闻分页显示
server.get("/news",(req,res)=>{
  //参数  pno 页码 pageSize 页大小
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  //默认值  1         10
  if(!pno){pno=1}
  if(!pageSize){pageSize=10}
  var sql="SELECT id,title,ctime,img_url FROM lema_news LIMIT ?,?";
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
  //json {code:1,data:[]}
});

//功能五：新闻详细信息
server.get("/newsInfo",(req,res)=>{
  //1.获取客户参数 nid
  var nid=req.query.nid;
  //2.拦截用户非法参数
  var reg=/^[0-9]{1,}$/;
  if(!reg.test(nid)){
    res.send({code:-1,msg:"参数格式不正确!"});
    return;
  }
  var sql="SELECT id,content,ctime,img_url FROM lema_news WHERE id=?";
  pool.query(sql,[nid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});

//功能六：评论列表
server.get("/getComment",(req,res)=>{
  //1.参数
  var nid=req.query.nid;
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1;
  }
  if(!pageSize){pageSize=5;}
  //2.sql
  var sql="SELECT id,nid,content,ctime FROM lema_comment WHERE nid=? LIMIT ?,?";
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  //3.result
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});

//功能七：发送评论
server.post("/addcomment",(req,res)=>{
  //1.获取参数 nid-新闻编号,content-评论内容
  var nid=req.body.nid;
  var content=req.body.content;
  //2.sql
  var sql="INSERT INTO lema_comment VALUES(null,?,?,now())";
  pool.query(sql,[nid,content],(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:"添加成功"});
  })
});

//功能八：风格展示列表
//用户get 请求路径 /getProducts
server.get("/getkezhao",(req,res)=>{
  //1.获取用户参数 pno pageSize
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  //res.send(pno+":"+pageSize);
  //2.为参数设置默认值，pno:1 pageSize:4
  if(!pno){pno=1}
  if(!pageSize){pageSize=4}
  //res.send(pno+":"+pageSize);
  //3.创建SQL语句
  var sql="SELECT lid,month,sheying,style,img FROM lema_style_show GROUP BY lid LIMIT ?,?";
  //1页4行  0,4  (pno-1)*pageSize
  //2页4行  4,4
  //3.1计算开始记录数，几条记录
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  //4.执行SQL语句
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
  //5.获取数据库返回结果并且发送脚手架
});
//http://127.0.0.1:3000/getProducts?

//功能九：风格展示内容
server.get("/kezhaoInfo",(req,res)=>{
  //1.获取客户参数 nid
  var nid=req.query.nid;
  var sql="SELECT nid,img_url1,img_url2,img_url3,img_url4,img_url5,img_url6,img_url7,img_url8,img_url9,img_url10,img_url11,img_url12,img_url13,img_url14,img_url15 FROM lema_style_info WHERE nid=?";
  pool.query(sql,[nid],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});
//功能十：最新客照的推荐 onenew.vue
server.get("/onenew",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT id,img_url,title,smalltitlle FROM lema_onenew";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十一：最新客照的推荐 twonew.vue
server.get("/twonew",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT id,img_url,title,smalltitlle FROM lema_twonew";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十二：最新客照的推荐 threenew.vue
server.get("/threenew",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT id,img_url,title,smalltitlle FROM lema_threenew";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})
//功能十三：最新客照的推荐 fournew.vue
server.get("/fournew",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT id,img_url,title,smalltitlle FROM lema_fournew";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
})

