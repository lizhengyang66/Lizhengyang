<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-L-admin1.0</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="../css/font.css">
        <link rel="stylesheet" href="../css/xadmin.css">
        <script  src="../js/vue-2.4.0.js"></script>
    </head>
    <body>
    <br>
    <br>
    <br>
    <div class="x-body layui-anim layui-anim-up" id="app">
        <blockquote class="layui-elem-quote">欢迎管理员：
            <span class="x-red">${user.username}</span>！当前时间: {{ nowDate + ' ' + nowTime + ' ' + nowWeek }}</blockquote>
        <fieldset class="layui-elem-field">
            <legend>数据统计</legend>
            <div class="layui-field-box">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside" lay-arrow="none" style="width: 100%; height: 90px;">
                                <div carousel-item="">
                                    <ul class="layui-row layui-col-space10 layui-this">
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>文章数</h3>
                                                <p>
                                                    <cite>66</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>会员数</h3>
                                                <p>
                                                    <cite>12</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>回复数</h3>
                                                <p>
                                                    <cite>99</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>商品数</h3>
                                                <p>
                                                    <cite>67</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>文章数</h3>
                                                <p>
                                                    <cite>67</cite></p>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs2">
                                            <a href="javascript:;" class="x-admin-backlog-body">
                                                <h3>文章数</h3>
                                                <p>
                                                    <cite>6766</cite></p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>系统通知</legend>
            <div class="layui-field-box">
                <table class="layui-table" lay-skin="line">
                    <tbody>
                        <tr>
                            <td >
                                <a class="x-a" href="/" target="_blank">新版L-admin 2.0上线了</a>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <a class="x-a" href="/" target="_blank">交流qq:(370946531)</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>系统信息</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <tbody>
                        <tr>
                            <th>xxx版本</th>
                            <td>1.0.180420</td></tr>
                        <tr>
                            <th>服务器地址</th>
                            <td>#</td></tr>
                        <tr>
                            <th>操作系统</th>
                            <td>WINNT</td></tr>
                        <tr>
                            <th>运行环境</th>
                            <td>Apache/2.4.23 (Win32) OpenSSL/1.0.2j mod_fcgid/2.3.9</td></tr>
                        <tr>
                            <th>PHP版本</th>
                            <td>5.6.27</td></tr>
                        <tr>
                            <th>PHP运行方式</th>
                            <td>cgi-fcgi</td></tr>
                        <tr>
                            <th>MYSQL版本</th>
                            <td>5.5.53</td></tr>
                        <tr>
                            <th>ThinkPHP</th>
                            <td>5.0.18</td></tr>
                        <tr>
                            <th>上传附件限制</th>
                            <td>2M</td></tr>
                        <tr>
                            <th>执行时间限制</th>
                            <td>30s</td></tr>
                        <tr>
                            <th>剩余空间</th>
                            <td>86015.2M</td></tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <fieldset class="layui-elem-field">
            <legend>开发团队</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <tbody>
                        <tr>
                            <th>版权所有</th>
                            <td>cdnuti(xuebingsi)
                                <a href="http://#/" class='x-a' target="_blank">访问官网</a></td>
                        </tr>
                        <tr>
                            <th>开发者</th>
                            <td>along(370946531@qq.com)</td></tr>
                    </tbody>
                </table>
            </div>
        </fieldset>
        <blockquote class="layui-elem-quote layui-quote-nm">感谢layui,百度Echarts,jquery,本系统由L-admin提供技术支持。</blockquote>
    </div>
    <script type="text/javascript">
    var vm=new Vue({
    	el:'#app',
    	data:{
                nowDate: '',    // 当前日期
                nowTime: '',    // 当前时间
                nowWeek: ''     // 当前星期
    	},
    	mounted(){//初始化显示完成调用
    		this.currentTime();
		},
		methods:{
			currentTime() {
	            setInterval(this.getDate, 500);
	        },
	        getDate: function() {
	            var _this = this;
	            let yy = new Date().getFullYear();
	            let mm = new Date().getMonth() + 1;
	            let dd = new Date().getDate();
	            let week = new Date().getDay();
	            let hh = new Date().getHours();
	            let mf =
	                new Date().getMinutes() < 10
	                    ? "0" + new Date().getMinutes()
	                    : new Date().getMinutes();
	            if (week == 1) {
	                this.nowWeek = "星期一";
	            } else if (week == 2) {
	                this.nowWeek = "星期二";
	            } else if (week == 3) {
	                this.nowWeek = "星期三";
	            } else if (week == 4) {
	                this.nowWeek = "星期四";
	            } else if (week == 5) {
	                this.nowWeek = "星期五";
	            } else if (week == 6) {
	                this.nowWeek = "星期六";
	            } else {
	                this.nowWeek = "星期日";
	            }
	            _this.nowTime = hh + ":" + mf;
	            _this.nowDate = yy + "/" + mm + "/" + dd;
	        }
		},
		  beforeDestroy: function() {
		        if (this.getDate) {
		            console.log("销毁定时器")
		            clearInterval(this.getDate); // 在Vue实例销毁前，清除时间定时器
		        }
		    }
    })
    </script>
    </body>
</html>