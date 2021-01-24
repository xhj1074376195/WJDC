<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Insert title here</title>
    <script src="../js/jquery-1.4.js"></script>
</head>
<script>
    cities = new Object();
    cities['台湾']=new Array('台北','台南','其他');
    cities['马来西亚']=new Array('Malaysia');
    cities['北京']=new Array('北京');
    cities['上海']=new Array('上海');
    cities['天津']=new Array('天津');
    cities['重庆']=new Array('重庆');
    cities['河北省']=new Array('石家庄', '张家口', '承德', '秦皇岛', '唐山', '廊坊', '保定', '沧州', '衡水', '邢台', '邯郸');
    cities['山西省']=new Array('太原', '大同', '朔州', '阳泉', '长治', '晋城', '忻州', '吕梁', '晋中', '临汾', '运城');
    cities['辽宁省']=new Array('沈阳', '朝阳', '阜新', '铁岭', '抚顺', '本溪', '辽阳', '鞍山', '丹东', '大连', '营口', '盘锦', '锦州', '葫芦岛');
    cities['吉林省']=new Array('长春', '白城', '松原', '吉林', '四平', '辽源', '通化', '白山', '延边');
    cities['黑龙江省']=new Array('哈尔滨', '齐齐哈尔', '黑河', '大庆', '伊春', '鹤岗', '佳木斯', '双鸭山', '七台河', '鸡西', '牡丹江', '绥化', '大兴安');
    cities['江苏省']=new Array('南京', '徐州', '连云港', '宿迁', '淮阴', '盐城', '扬州', '泰州', '南通', '镇江', '常州', '无锡', '苏州');
    cities['浙江省']=new Array('杭州', '湖州', '嘉兴', '舟山', '宁波', '绍兴', '金华', '台州', '温州', '丽水');
    cities['安徽省']=new Array('合肥', '宿州', '淮北', '阜阳', '蚌埠', '淮南', '滁州', '马鞍山', '芜湖', '铜陵', '安庆', '黄山', '六安', '巢湖', '池州', '宣城');
    cities['福建省']=new Array('福州', '南平', '三明', '莆田', '泉州', '厦门', '漳州', '龙岩', '宁德');
    cities['江西省']=new Array('南昌', '九江', '景德镇', '鹰潭', '新余', '萍乡', '赣州', '上饶', '抚州', '宜春', '吉安');
    cities['山东省']=new Array('济南', '聊城', '德州', '东营', '淄博', '潍坊', '烟台', '威海', '青岛', '日照', '临沂', '枣庄', '济宁', '泰安', '莱芜', '滨州', '菏泽');
    cities['河南省']=new Array('郑州', '三门峡', '洛阳', '焦作', '新乡', '鹤壁', '安阳', '濮阳', '开封', '商丘', '许昌', '漯河', '平顶山', '南阳', '信阳', '周口', '驻马店');
    cities['湖北省']=new Array('武汉', '十堰', '襄攀', '荆门', '孝感', '黄冈', '鄂州', '黄石', '咸宁', '荆州', '宜昌', '恩施', '襄樊');
    cities['湖南省']=new Array('长沙', '张家界', '常德', '益阳', '岳阳', '株洲', '湘潭', '衡阳', '郴州', '永州', '邵阳', '怀化', '娄底', '湘西');
    cities['广东省']=new Array('广州', '清远', '韶关', '河源', '梅州', '潮州', '汕头', '揭阳', '汕尾', '惠州', '东莞', '深圳', '珠海', '江门', '佛山', '肇庆', '云浮', '阳江', '茂名', '湛江');
    cities['海南省']=new Array('海口', '三亚');
    cities['四川省']=new Array('成都', '广元', '绵阳', '德阳', '南充', '广安', '遂宁', '内江', '乐山', '自贡', '泸州', '宜宾', '攀枝花', '巴中', '达川', '资阳', '眉山', '雅安', '阿坝', '甘孜', '凉山');
    cities['贵州省']=new Array('贵阳', '六盘水', '遵义', '毕节', '铜仁', '安顺', '黔东南', '黔南', '黔西南');
    cities['云南省']=new Array('昆明', '曲靖', '玉溪', '丽江', '昭通', '思茅', '临沧', '保山', '德宏', '怒江', '迪庆', '大理', '楚雄', '红河', '文山', '西双版纳');
    cities['陕西省']=new Array('西安', '延安', '铜川', '渭南', '咸阳', '宝鸡', '汉中', '榆林', '商洛', '安康');
    cities['甘肃省']=new Array('兰州', '嘉峪关', '金昌', '白银', '天水', '酒泉', '张掖', '武威', '庆阳', '平凉', '定西', '陇南', '临夏', '甘南');
    cities['青海省']=new Array('西宁', '海东', '西宁', '海北', '海南', '黄南', '果洛', '玉树', '海西');
    cities['内蒙古']=new Array('呼和浩特', '包头', '乌海', '赤峰', '呼伦贝尔盟', '兴安盟', '哲里木盟', '锡林郭勒盟', '乌兰察布盟', '鄂尔多斯', '巴彦淖尔盟', '阿拉善盟');
    cities['广西']=new Array('南宁', '桂林', '柳州', '梧州', '贵港', '玉林', '钦州', '北海', '防城港', '南宁', '百色', '河池', '柳州', '贺州');
    cities['西藏']=new Array('拉萨', '那曲', '昌都', '林芝', '山南', '日喀则', '阿里');
    cities['宁夏']=new Array('银川', '石嘴山', '吴忠', '固原');
    cities['新疆']=new Array('乌鲁木齐', '克拉玛依', '喀什', '阿克苏', '和田', '吐鲁番', '哈密', '博尔塔拉', '昌吉', '巴音郭楞', '伊犁', '塔城', '阿勒泰');
    cities['香港']=new Array('香港');
    cities['澳门']=new Array('澳门');
    function set_city(province, city)
    {
        var pv, cv;
        var i, ii;
        pv=province.value;
        cv=city.value;
        city.length=1;
        if(pv=='0') return;
        if(typeof(cities[pv])=='undefined') return;
        for(i=0; i<cities[pv].length; i++)
        {
            ii = i+1;
            city.options[ii] = new Option();
            city.options[ii].text = cities[pv][i];
            city.options[ii].value = cities[pv][i];
        }
    }
    //-----------------------------上面是省市二级联动
    function checkSfzh(){
        var sfzh = document.getElementById("input_sfzh").value;
        var format = /^(([1][1-5])|([2][1-3])|([3][1-7])|([4][1-6])|([5][0-4])|([6][1-5])|([7][1])|([8][1-2]))\d{4}(([1][9]\d{2})|([2]\d{3}))(([0][1-9])|([1][0-2]))(([0][1-9])|([1-2][0-9])|([3][0-1]))\d{3}[0-9xX]$/;
        //号码规则校验
        if (!format.test(sfzh)) {
            var span = document.getElementById("spanSfzh");
            span.innerText="身份证号不正确"
            span.style.color="red";
            return false;
        }
        //出生年月日校验   前正则限制起始年份为1900;
        var year = sfzh.substr(6, 4),//身份证年
            month = sfzh.substr(10, 2),//身份证月
            date = sfzh.substr(12, 2),//身份证日
            time = Date.parse(month + '-' + date + '-' + year),//身份证日期时间戳date
            now_time = Date.parse(new Date()),//当前时间戳
            dates = (new Date(year, month, 0)).getDate();//身份证当月天数
        if(time > now_time || date > dates)
        {
            var span = document.getElementById("spanSfzh");
            span.innerText="身份证号不正确"
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanSfzh");
            span.innerText="";
        }
    }
    function checkUsername(){
        var name = document.getElementById("input_username").value;
        if(name =='' || typeof(name) == 'undefined'||name.length<=6||name.length>=20){
            var span = document.getElementById("spanUsername");
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanUsername");
            span.style.color="black";
        }
    }
    function checkPassword(){
        var password = document.getElementById("input_password").value;
        if(password =='' || typeof(password) == 'undefined'||name.length<=6||name.length>=20){
            var span = document.getElementById("spanPassword");
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanPassword");
            span.style.color="black";
        }
    }
    function checkRpassword(){
        var password = document.getElementById("input_password").value;
        var rpassword = document.getElementById("input_rpassword").value;
        if(password !=rpassword ){
            var span = document.getElementById("spanRpassword");
            span.innerText="两次密码不同"
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanRpassword");
            span.innerText="";
        }
    }
    function checkGzdw(){
        var gzdw = document.getElementById("input_gzdw").value;
        if(gzdw =='' || typeof(gzdw) == 'undefined' ){
            var span = document.getElementById("spanGzdw");
            span.innerText="工作单位必填"
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanGzdw");
            span.innerText="";
        }
    }
    function checkZyfx(){
        var zyfx = document.getElementById("input_zyfx").value;
        if(zyfx =='' || typeof(zyfx) == 'undefined' ){
            var span = document.getElementById("spanZyfx");
            span.innerText="专业方向必填"
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanZyfx");
            span.innerText="";
        }
    }
    function checkSzhy(){
        var szhy = document.getElementById("input_szhy").value;
        if(szhy =='' || typeof(szhy) == 'undefined' ){
            var span = document.getElementById("spanSzhy");
            span.innerText="所在行业必填"
            span.style.color="red";
            return false;
        }
        else
        {
            var span = document.getElementById("spanSzhy");
            span.innerText="";
        }
    }

    //禁止输入特殊字符
    function changed(str){
        var name = $("input[name="+str+"]").val();
        var pattern = new RegExp("[`~!#$^&*()=|{}':;',\\[\\].<>/?~！#￥……&*（）——|{}【】‘；：”“'。，、？%]");
        if(name == ""){
            return;
        }
        if(name.match(pattern)){
            alert("请不要输入特殊字符!");
            $("input[name="+str+"]").val("");
        }
        return;
    }

</script>
<body>
<div><span style="color: red">填写说明：红色*为必须填写的注册信息，建议填写更多详细信息，以便获得更多资源信息服务</span></div>
<form action="${pageContext.request.contextPath}/register_do" method="post">
    <table>
        <tr>
            <td><span style="color: red">*</span>用户名</td>
            <td><input type="text" name="username" onblur="checkUsername()" id="input_username"oninput="changed('username')"><span id="spanUsername">用户名应大于6位且小于20位</span></td>
        </tr>
        <tr>
            <td><span style="color: red">*</span>用户密码</td>
            <td><input type="password" name="password" onblur="checkPassword()" id="input_password"oninput="changed('password')"><span id="spanPassword">密码应大于6位且小于20位</span></td>
        </tr>
        <tr>
            <td><span style="color: red">*</span>确认密码</td>
            <td><input type="password" name="rpassword" onblur="checkRpassword()" id="input_rpassword"oninput="changed('rpassword')"><span id="spanRpassword"></span></td>
        </tr>
        <tr>
            <td><span style="color: red">*</span>工作单位</td>
            <td>
                <input type="text"name="gzdw"id="input_gzdw"onblur="checkGzdw()"oninput="changed('gzdw')"><span id="spanGzdw"></span>
            </td>
        </tr>
        <tr>
            <td><span style="color: red">*</span>姓名</td>
            <td><input type="text" name="name" oninput="changed('name')">请填写真实姓名以便联系您</td>
        </tr>
        <tr>
            <td><span style="color: red">*</span>身份证号</td>
            <td><input type="text" name="sfzh" onblur="checkSfzh()"id="input_sfzh"><span id="spanSfzh"></span></td>
        </tr>
        <td>性别</td>
        <td>
            <input type="radio"name="sex"value="男">男<input type="radio"name="sex"value="女">女
        </td>
        <tr>
            <td>省市</td>
            <td>
                <SELECT name="sheng" id="to_cn" onchange="set_city(this, document.getElementById('city')); WYL();" class=login_text_input >
                    <option value=台湾>台湾</option>
                    <option value=北京>北京</option>
                    <option value=上海>上海</option>
                    <option value=天津>天津</option>
                    <option value=重庆>重庆</option>
                    <option value=河北省>河北省</option>
                    <option value=山西省>山西省</option>
                    <option value=辽宁省>辽宁省</option>
                    <option value=吉林省>吉林省</option>
                    <option value=黑龙江省>黑龙江省</option>
                    <option value=江苏省>江苏省</option>
                    <option value=浙江省>浙江省</option>
                    <option value=安徽省>安徽省</option>
                    <option value=福建省>福建省</option>
                    <option value=江西省>江西省</option>
                    <option value=山东省>山东省</option>
                    <option value=河南省>河南省</option>
                    <option value=湖北省>湖北省</option>
                    <option value=湖南省>湖南省</option>
                    <option value=广东省>广东省</option>
                    <option value=海南省>海南省</option>
                    <option value=四川省>四川省</option>
                    <option value=贵州省>贵州省</option>
                    <option value=云南省>云南省</option>
                    <option value=陕西省>陕西省</option>
                    <option value=甘肃省>甘肃省</option>
                    <option value=青海省>青海省</option>
                    <option value=内蒙古>内蒙古</option>
                    <option value=广西>广西</option>
                    <option value=西藏>西藏</option>
                    <option value=宁夏>宁夏</option>
                    <option value=新疆>新疆</option>
                    <option value=香港>香港</option>
                    <option value=澳门>澳门</option>
                </SELECT> - 市
                <select id="city" class=login_text_input name="shi">
                    <option value=0>请选择</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>通讯地址</td>
            <td>
                <input type="text"name="txdz"oninput="changed('txdz')">
            </td>
        </tr>
        <tr>
            <td>邮政编码</td>
            <td>
                <input type="text"name="yzbm">
            </td>
        </tr>
        <tr>
            <td>手机</td>
            <td>
                <input type="text"name="yddh">
            </td>
        </tr>
        <tr>
            <td>固定电话</td>
            <td>
                <input type="text"name="gddh">
            </td>
        </tr>
        <tr>
            <td>电子信箱</td>
            <td>
                <input type="text"name="dzxx">
            </td>
        </tr>
    </table>
    <input type="submit"value="注册"><input type="reset"value="重置">
</form>
</body>
</html>